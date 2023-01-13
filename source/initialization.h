//
// Created by ilaria on 2019-11-13.
//

#pragma once


#include "constants.h"
#include "robust_filesystem.h"
#include "rng.h"
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include "o2.h"


struct Node{
    /*DIM spatial dimensions*/
//    mutable std::array<double, DIM> A{};
    /*ONE SC components*/
    mutable struct O2 Psi;
};

struct H_parameters{
    /*These values are externally given by an input file*/
    double mu;
    double J;
    double b_low; //lowest beta for the parallel tempering procedure
    double b_high; // highest beta for the parallel tempering procedure
    int init; //Initial conditions
};



struct MC_parameters{
    /*These values are externally given by an input file*/
    int transient;
    int tau; // estimate of the auto-correlation time
    int nmisu; //total number of independent measures
    int n_autosave; //frequency at which intermediate configuration are saved
    double lbox_theta; //length of the box for the uniform distribution of theta (polar transformation of Psi --> phase)
};

void initialize_lattice(std::vector<Node> &Site, const fs::path & directory_read, int RESTART, struct H_parameters &Hp);
void initialize_Hparameters(struct H_parameters &Hp, const fs::path & directory_parameters);
void initialize_MCparameters(struct MC_parameters &MCp, const fs::path & directory_parameters);

