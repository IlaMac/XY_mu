#include "montecarlo.h"
#include "main.h"
#include "rng.h"
#include "class_tic_toc.h"

void metropolis(const std::vector<Node> &Site, struct MC_parameters &MCp, struct H_parameters &Hp,  double my_beta){

    double d_theta, rand;
    double acc_rate=0.5, acc_theta=0.;
    struct O2 NewPsi;
    struct O2 OldPsi;
    double newE, oldE, minus_deltaE;

    for (int iy = 0; iy < Ly; iy++) {
        for (int ix = 0; ix < Lx; ix++) {
            int i = ix + Lx * (iy);
            /*choose randomly a site of the lattice*/
            //i = rn::uniform_integer_box(0, N-1);
            //ix=i%Lx;
            //iy=i/Ly;
            /*************PSI UPDATE: phase update **********/
            OldPsi = Site[i].Psi;
            NewPsi = Site[i].Psi;
            d_theta = rn::uniform_real_box(-MCp.lbox_theta, MCp.lbox_theta);
            NewPsi.t = fmod(OldPsi.t + d_theta, C_TWO_PI);
            NewPsi.r = OldPsi.r;
            polar_to_cartesian(NewPsi);
            std::cout<< "New phase: "<< NewPsi.t << " Old phase: "<< OldPsi.t<<std::endl;
            oldE = local_HPsi(OldPsi, ix, iy, Hp, Site);
            newE = local_HPsi(NewPsi, ix, iy, Hp, Site);
            minus_deltaE = (oldE - newE);
            if (minus_deltaE > 0) {
                Site[i].Psi = NewPsi;
                acc_theta++;
            } else {
                rand = rn::uniform_real_box(0, 1);
                //Boltzmann weight: exp(-\beta \Delta E) E= h³ \sum_i E(i)
                if (rand < exp(my_beta * minus_deltaE)) {
                    Site[i].Psi = NewPsi;
                    acc_theta++;
                }
            }

        }
    }

    acc_theta=(double) acc_theta/(NC*N);
    MCp.lbox_theta= MCp.lbox_theta*((0.5*acc_theta/acc_rate)+0.5);

}



double local_HPsi(struct O2 &Psi, int ix, int iy, H_parameters &Hp, const std::vector<Node> &Site) {

    double Ip1, Ip2, Ip3, Ip4;
    double h_Kinetic=0., h_mu, h_tot;
    int nn_ip, nn_im;

    int ip=(ix == Lx-1 ? 0: ix+1);
    int ipx= ip + Lx*(iy);
    int jp=(iy == Ly-1 ? 0: iy+1);
    int ipy= ix + (Lx*jp);
    int ipxpy=ip + (Lx*jp);

    int im=(ix == 0 ? Lx-1: ix-1);
    int imx= im+Lx*(iy);
    int jm=(iy == 0 ? Ly-1: iy-1);
    int imy= ix + (Lx*jm);
    int imxmy=im + (Lx*jm);
    int imxpy=im + (Lx*jp);
    int ipxmy=ip + (Lx*jm);

    //Compute the local Energy respect to a given component (alpha) of the matter field Psi and a given spatial position (r=(ix, iy, iz))
    //We need to compute just the part of the Hamiltonian involving Psi

    for (int vec = 0; vec < DIM; vec++) {
        if (vec == 0) {
            nn_ip = ipx;
            nn_im = imx;
        } else if (vec == 1) {
            nn_ip = ipy;
            nn_im = imy;
        }
        h_Kinetic -= Hp.J * O2prod(Site[nn_ip].Psi, Psi);
        h_Kinetic -= Hp.J * O2prod(Psi, Site[nn_im].Psi);
    }

    //current circulating on the plaquette p1
    Ip1=( O2vprod( Psi, Site[ipx].Psi) + O2vprod( Site[ipx].Psi, Site[ipxpy].Psi)
            + O2vprod( Site[ipxpy].Psi, Site[ipy].Psi) + O2vprod( Site[ipy].Psi, Psi) );
    //current circulating on the plaquette p2
    Ip2=( O2vprod( Psi, Site[ipy].Psi) + O2vprod( Site[ipy].Psi, Site[imxpy].Psi )
            + O2vprod( Site[imxpy].Psi, Site[imx].Psi ) + O2vprod( Site[imx].Psi, Psi) );
    //current circulating on the plaquette p3
    Ip3=( O2vprod( Psi, Site[imx].Psi) + O2vprod( Site[imx].Psi, Site[imxmy].Psi)
            + O2vprod( Site[imxmy].Psi, Site[imy].Psi) + O2vprod( Site[imy].Psi, Psi) );
    //current circulating on the plaquette p4
    Ip4=( O2vprod( Psi, Site[imy].Psi) + O2vprod( Site[imy].Psi, Site[ipxmy].Psi)
            + O2vprod( Site[ipxmy].Psi, Site[ipx].Psi) + O2vprod( Site[ipx].Psi, Psi) );

    h_mu= -Hp.mu*((Ip1*Ip1) + (Ip2*Ip2) + (Ip3*Ip3) + (Ip4*Ip4));

    h_tot=  h_Kinetic + h_mu;
    std::cout<< "h_kin: "<< h_Kinetic << " h_mu: "<< h_mu<< std::endl;
    return h_tot;
}



