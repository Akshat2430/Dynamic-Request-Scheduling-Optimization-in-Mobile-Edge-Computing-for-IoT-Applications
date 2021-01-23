# Dynamic Request Scheduling Optimization in Mobile Edge Computing for IoT Applications
This is an unofficial MATLAB implementation of the paper published by S. Hu and G. Li titled "Dynamic Request Scheduling Optimization in Mobile Edge Computing for IoT Applications". You can find a copy of the same here: https://ieeexplore.ieee.org/document/8910339

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

1. Energy consumption vs Number of Mobile Users: I have taken the pmax to be 5W. The above plot shows the performance of the proposed Weighted Inertia PSO compared to the SAPA. It is observed that the energy consumption of PSO is always smaller than that of SAPA under different numbers of mobile users, which implies that PSO gives a better PA result compared to SAPA in energy saving.

![Energy Consumption versus number of users](https://github.com/Akshat2430/Dynamic-Request-Scheduling-Optimization-in-Mobile-Edge-Computing-for-IoT-Applications/blob/main/images/Energy%20Consumption%20versus%20number%20of%20users.jpg)

2. Energy consumption vs Maximum Power (pmax): As shown in the above plot, I evaluate the energy consumption under different numbers of mobile users under different maximum power pmax, taking the values as 4, 5, and 6 W. The energy consumption is directly proportional to the maximum power pmax, that is the bigger the pmax , the higher the energy consumption. This is because the average transmitting power of mobile users is higher under the bigger maximum power pmax, which leads to more energy consumption.

![Energy Consumption versus pmax](https://github.com/Akshat2430/Dynamic-Request-Scheduling-Optimization-in-Mobile-Edge-Computing-for-IoT-Applications/blob/main/images/Energy%20Consumption%20versus%20pmax.jpg)

3. Effect of Number of Mobile Users: In this case, the computing capacity of all BSs are the same, that is Rn = 70 GHz, and all mobile users offload the same profile request with wq = 1500 (Magacycles), Iq = 700 (KB), Tgq = 0.5 (s), and Tbq = 0.65 (s). The response rate is the ratio of the number of completed calculations to the total number of requests within the tolerant delay of the request. The charts depict the performance including system welfare and response rate of Binary PSO. It can be seen that with the increasing number of mobile users, the system welfare increases.

![Response Rate versus number of users](https://github.com/Akshat2430/Dynamic-Request-Scheduling-Optimization-in-Mobile-Edge-Computing-for-IoT-Applications/blob/main/images/Response%20Rate%20versus%20number%20of%20users.jpg)

![Welfare versus number of users](https://github.com/Akshat2430/Dynamic-Request-Scheduling-Optimization-in-Mobile-Edge-Computing-for-IoT-Applications/blob/main/images/Welfare%20versus%20number%20of%20users.jpg)

4. Effect of Request Workload: Here, I evaluate the performance of Binary PSO under different request workload, wq = 1500, 2000, and 2500. As shown in the bar chart, with a change in request workload, system welfare remains almost constant throughout the range of workloads examined.However, there is an increase in welfare as we go below wq = 1500.

![Welfare versus request workload, input data fixed](https://github.com/Akshat2430/Dynamic-Request-Scheduling-Optimization-in-Mobile-Edge-Computing-for-IoT-Applications/blob/main/images/Welfare%20versus%20request%20workload%2C%20input%20data%20fixed.jpg)

![Welfare versus number of users](https://github.com/Akshat2430/Dynamic-Request-Scheduling-Optimization-in-Mobile-Edge-Computing-for-IoT-Applications/blob/main/images/Welfare%20versus%20request%20workload.jpg)

5. Effect of Request Input: Welfare slightly increased when the request input decreased, but the change is quite marginal.

![Welfare vs request input](https://github.com/Akshat2430/Dynamic-Request-Scheduling-Optimization-in-Mobile-Edge-Computing-for-IoT-Applications/blob/main/images/Welfare%20vs%20request%20input.jpg)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

## Citation

S. Hu and G. Li,"Dynamic Request Scheduling Optimization in Mobile Edge Computing for IoT Applications," in IEEE Internet of Things Journal, vol. 7, no. 2, pp. 1426-1437, Feb. 2020, doi: 10.1109/JIOT.2019.2955311.

## Author

Akshat Kharbanda is a BITS Pilani, KK Birla Goa Campus Student majoring in Electronics and Communication Engineering. Feel free to connect on [LinkedIn](https://www.linkedin.com/in/akshat-kharbanda-b91986148/)!

