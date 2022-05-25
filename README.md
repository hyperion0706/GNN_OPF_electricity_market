# GNN for OPF learning (ac-feasibility, topology adaptivity)

Solving the optimal power flow (OPF) problem is a fundamental task to ensure the system efficiency and reliability in real-time electricity grid operations. We develop a new topology-informed graph neural network (GNN) approach for predicting the optimal solutions of real-time ac-OPF problem. To incorporate grid topology to the NN model, the proposed GNN-for-OPF framework innovatively exploits the locality property of locational marginal prices and voltage magnitude. Furthermore, we develop a physics-aware (ac-)flow feasibility regularization approach for general OPF learning. The advantages of our proposed designs include reduced model complexity, improved generalizability and feasibility guarantees. By providing the analytical understanding on the graph subspace stability under grid topology contingency, we show the proposed GNN can quickly adapt to varying grid topology by an efficient re-training strategy. Numerical tests on various test systems of different sizes have validated the prediction accuracy, improved flow feasibility, and topology adaptivity capability of our proposed GNN-based learning framework.

Datasets generated by MATPOWER ac/dc-OPF solvers. Test cases include ieee118-bus, pegase1354-bus, and wp2383-bus systems from the IEEE PES PGLib-OPF library. \
MATPOWER: https://matpower.org \
PGLibOPF: https://github.com/power-grid-lib/pglib-opf

More details could be found in the manuscripts:\
"Topology-aware Graph Neural Networks for Learning Feasible and Adaptive ac-OPF Solutions" is the journal version manuscript.\
https://arxiv.org/abs/2205.10129

Earlier version:\
"Graph Neural Networks for Learning Real-Time Prices in Electricity Market" is accepted by 2021 ICML Workshop on Climate Change. \
https://arxiv.org/abs/2106.10529


