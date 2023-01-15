//
// Created by ilaria on 2019-11-16.
//

#ifndef MEASURES_H
#define MEASURES_H

#include "main.h"
#include <fstream>
#include "constants.h"
#include "montecarlo.h"
#include "initialization.h"
#include "o2.h"

struct Measures{

/*******THE ORDER SHOULD BE THE SAME OF THE H5T INSERT REGISTRATION**************/

    double E=0; //Energy
    double mstag=0; //staggered magnetization
//    double h_ip=0; //1st derivative in the twisted phase (paramagnetic current)
//    double h_jd=0; //2nd derivative in the twisted phase (diamagnetic response function)
    double v_density=0.;
    double av_density=0.;

    int my_rank = 0;
    void reset(){
        *this = Measures();
    }
};


void all_measures(struct Measures &mis, struct H_parameters &Hp, const std::vector<Node> &Site);
//void staggered_magnetization(struct Measures &mis, const std::vector<Node> &Site);
//void energy(struct Measures &mis, struct H_parameters &Hp, const std::vector<Node> &Site);
void save_lattice(const std::vector<Node> Site, const fs::path & directory_write, std::string configuration);


#endif //MEASURES_H
