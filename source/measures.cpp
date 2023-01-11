//
// Created by ilaria on 2019-11-16.
//

#include "measures.h"
#include "main.h"
#include "rng.h"
#include "class_tic_toc.h"

void all_measures(struct Measures &mis, struct H_parameters &Hp, const std::vector<Node> &Site){

    double h_Kinetic=0., h_mu=0.;
    double Ip, C1, S1;
    unsigned int nn_ip, ip, jp, jm, ipx, ipy, ipxpy, imy, ipxmy;
    double phi_1=0., phi_2=0., phi_3=0., phi_4=0.;
    double n=0.;

    /*Ridefinisco tutti gli angoli compresi tra -pi e pi*/
    for(int i=0; i<N; i++){
            cartesian_to_polar(Site[i].Psi);
            if(Site[i].Psi.t >C_PI){ Site[i].Psi.t-= C_TWO_PI;}
    }

    for(int iy=0; iy<Ly; iy++){
        for(int ix=0; ix<Lx; ix++){
            int i=ix + Lx * (iy );
            ip=(ix == Lx-1 ? 0: ix+1);
            ipx= ip + Lx*(iy);
            jp=(iy == Ly-1 ? 0: iy+1);
            ipy= ix + (Lx*jp);
            ipxpy=ip + (Lx*jp);
            jm=(iy == 0 ? Ly-1: iy-1);
            imy= ix + (Lx*jm);
            ipxmy=ip + (Lx*jm);

            /**ENERGY**/
            for (int vec = 0; vec < DIM; vec++) {
                if (vec == 0) {
                    nn_ip = ipx;
                } else if (vec == 1) {
                    nn_ip = ipy;
                }
                h_Kinetic -= Hp.J * (O2prod(Site[i].Psi, Site[nn_ip].Psi));
            }

            Ip=( O2vprod(Site[ipx].Psi, Site[i].Psi) + O2vprod(Site[ipxpy].Psi, Site[ipx].Psi)
                    + O2vprod(Site[ipy].Psi, Site[ipxpy].Psi) + O2vprod(Site[i].Psi, Site[ipy].Psi));
            h_mu-=Hp.mu*Ip*Ip;

            /**HELICITY MODULUS**/
            C1= (O2prod(Site[i].Psi, Site[ipx].Psi) - O2prod(Site[ipxpy].Psi, Site[ipy].Psi));
            S1= (O2vprod(Site[ipx].Psi, Site[i].Psi) + O2vprod(Site[ipy].Psi, Site[ipxpy].Psi));
            mis.DH_Dd+= ( Hp.J*(O2prod(Site[ipx].Psi, Site[i].Psi)) - 2*Hp.mu*((C1*C1) - (Ip*S1)) );
            mis.D2H_Dd2+= ( Hp.J*(O2vprod(Site[ipx].Psi, Site[i].Psi)) -2*Hp.mu*(Ip*C1) );

            /**VORTEX DENSITY**/
            /*Circuitation*/
            n=0.;
            phi_1= Site[i].Psi.t - Site[ipx].Psi.t;
            if(phi_1< -C_PI){ phi_1+= C_TWO_PI; }
            if(phi_1> C_PI){ phi_1-= C_TWO_PI;}
            phi_2= Site[ipx].Psi.t - Site[ipxmy].Psi.t ;
            if(phi_2< -C_PI){ phi_2+= C_TWO_PI; }
            if(phi_2> C_PI){ phi_2-= C_TWO_PI;}
            phi_3= Site[ipxmy].Psi.t - Site[imy].Psi.t;
            if(phi_3< -C_PI){ phi_3+= C_TWO_PI; }
            if(phi_3> C_PI){ phi_3-= C_TWO_PI;}
            phi_4= Site[imy].Psi.t - Site[i].Psi.t;
            if(phi_4< -C_PI){ phi_4+= C_TWO_PI; }
            if(phi_4> C_PI){ phi_4-= C_TWO_PI;}

            n=(phi_1+phi_2+phi_3+phi_4)/C_TWO_PI;

            if(n>0){
                mis.v_density+=n;
                //Mstag= 1/N \sum_i q_i (-1)^(x_i+y_i)
                mis.mstag+= (1 - 2*(i%2));
//                mis->Vortices[i]=1;
            }
            else if (n<0){
                mis.av_density+=n;
                mis.mstag+= -1*(1 - 2*(i%2));
//                mis->Vortices[i]=-1;
            }

        }
    }

    mis.mstag/=N;
    mis.E= h_Kinetic + h_mu;
}



void save_lattice(const std::vector<Node> &Site, const fs::path & directory_write, std::string configuration){

    std::string sPsi;
    sPsi= std::string("Psi_")+ configuration + std::string(".bin");
    fs::path psi_init_file = directory_write / sPsi;

    FILE *fPsi= nullptr;

    if((fPsi=fopen(psi_init_file.c_str(), "w"))) {
        for (auto & s: Site) {
            fwrite(s.Psi.data(), sizeof(struct O2), 1, fPsi);
        }
        fclose(fPsi);
    }


}

