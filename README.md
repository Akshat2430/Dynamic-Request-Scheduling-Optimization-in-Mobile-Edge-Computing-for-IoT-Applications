# Dynamic Request Scheduling Optimization in Mobile Edge Computing for IoT Applications
This is an unofficial MATLAB implemenation of the paper published by S. Hu and G. Li titled "Dynamic Request Scheduling Optimization in Mobile Edge Computing for IoT Applications". You can find a copy of the same here: https://ieeexplore.ieee.org/document/8910339

## Introduction
The research paper and this project tackle the same two main problems, but I have solved them using different algorithms:

1. Uplink Power Allocation Problem (PA) <br />
Author’s solution: Non-Cooperative Game Model Based On Subgradient (NCGG) <br />
My implementation: Inertia Weighted Particle Swarm Optimisation <br />

2. Joint Resource Offloading And Computing Resource Scheduling Problem (JRORS) <br />
Author’s solution: Multiple-Objective Optimization i-NSGA-II (MO-NSGA) <br />
My implementation: Binary Particle Swarm Optimisation

## Installation

1. Download the package to a local folder (e.g. ~/MEC/) by running: <br />
`git clone https://github.com/MEC/Dynamic-Request-Scheduling-Optimization-in-Mobile-Edge-Computing-for-IoT-Applications.git`
2. Run Matlab and navigate to the folder (~/MEC/), then run the main.m script. <br />
3. If you wish to plot the graphs with my results, run the OutputPlots.m script.

## Code
The code is divided as follows:

1. main.m <br />
This file starts off with setting the parameters of the UDEC system model. Then, we solve the power allocation problem using simulated annealing (not optimized) and particle swarm optimization. Finally, the joint request offloading and resource scheduling is solved using binary particle swarm optimization.

2. PA.m <br />
This file contains the function for the power allocation problem.

3. JRORS.M <br />
This file contains the function for the joint request offloading and resource scheduling problem.

4. OutputPlots.m <br />
This file plots the required simulation graphs, with each section covering one plot.

## Tools Used
* MATLAB R2020b (Version 9.9)
* Global Optimization Toolbox
* Optimization Toolbox

## Results

## License
This project is licensed under the MIT License - see the LICENSE.md file for details

## Citation
S. Hu and G. Li,"Dynamic Request Scheduling Optimization in Mobile Edge Computing for IoT Applications," in IEEE Internet of Things Journal, vol. 7, no. 2, pp. 1426-1437, Feb. 2020, doi: 10.1109/JIOT.2019.2955311.

## Author
Akshat Kharbanda is a BITS Pilani, KK Birla Goa Campus Student majoring in Electronics and Communication Engineering. Feel free to connect on [LinkedIn](https://www.linkedin.com/in/akshat-kharbanda-b91986148/)!

