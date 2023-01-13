//
// Created by ilaria on 2019-11-13.
//
#include "initialization.h"
#include "robust_filesystem.h"

void initialize_Hparameters(struct H_parameters &Hp, const fs::path & directory_parameters){

    fs::path hp_init_file = directory_parameters / "HP_init.txt";

    Hp.mu=0.15;
    Hp.J=1;
    Hp.b_low=0.1;
    Hp.b_high=10.0;
    Hp.init=2;

    if(fs::exists(hp_init_file)){
        FILE *fin= nullptr;
        if((fin=fopen(hp_init_file.c_str(), "r"))) {
            fscanf(fin, "%lf" , &Hp.mu);
            fscanf(fin, "%lf" , &Hp.J);
            fscanf(fin, "%lf" , &Hp.b_low);
            fscanf(fin, "%lf" , &Hp.b_high);
            fscanf(fin, "%d", &Hp.init);
            fclose(fin);
            //With this modification Hp.beta in not anymore part of the Hamiltonian parameters list
        }
    }else{

        Hp.mu=0.15;
        Hp.J=1;
        Hp.b_low=0.1;
        Hp.b_high=10.0;
        Hp.init=2;
    }

}

void initialize_MCparameters(struct MC_parameters &MCp, const fs::path & directory_parameters){
    fs::path mc_init_file = directory_parameters / "MC_init.txt";
    if(fs::exists(mc_init_file)){
        FILE *fin= nullptr;
        if((fin=fopen(mc_init_file.c_str(), "r"))) {
            fscanf(fin, "%d", &MCp.nmisu);
            fscanf(fin, "%d", &MCp.tau);
            fscanf(fin, "%d", &MCp.transient);
            fscanf(fin, "%d", &MCp.n_autosave);
	        fscanf(fin, "%lf", &MCp.lbox_theta);
            fclose(fin);
        }
    }else{
        MCp.nmisu=3000;
        MCp.transient=1000;
        MCp.tau=32;
        MCp.n_autosave=20; //not used now
        MCp.lbox_theta=C_PI*0.25;
    }

}

void initialize_lattice(std::vector<Node> &Site, const fs::path & directory_read, int RESTART, struct H_parameters &Hp){

    int i, alpha;
    std::vector<Node> Sitefread= Site;
    fs::path psi_init_file = directory_read / "Psi_restart.bin";

    if(RESTART==1){
        fs::path psi_init_file = directory_read / "Psi_restart.bin";
    }
    else if (RESTART==2){
        fs::path psi_init_file = directory_read / "Psi_final.bin";
    }

    if((fs::exists(psi_init_file)) and (RESTART!=0)){

        FILE *fPsi= nullptr;

        if(fPsi=fopen(psi_init_file.c_str(), "r")) {
            fread(&Site, sizeof(struct O2), N, fPsi);
            Site=Sitefread;
            fclose(fPsi);
        }
    }else{
        if(Hp.init==0) { //ordered ferromagnetic state
            for (i = 0; i < N; i++) {
                Site[i].Psi.r = 1;
                Site[i].Psi.t = 0.;
                polar_to_cartesian(Site[i].Psi);
            }
        }
        else if(Hp.init!=1) { //disordered paramagnetic state
            for (i = 0; i < N; i++) {
                Site[i].Psi.r = 1;
                Site[i].Psi.t = rn::uniform_real_box(0, C_TWO_PI);;
                polar_to_cartesian(Site[i].Psi);
            }
        }
    }
}



