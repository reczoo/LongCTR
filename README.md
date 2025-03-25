# LongCTR
A Long Sequence Modeling Benchmark for CTR Prediction

## Datasets
+ [MicroVideo](https://huggingface.co/datasets/reczoo/MicroVideo1.7M_x2)
+ [KuaiVideo](https://huggingface.co/datasets/reczoo/KuaiVideo_x2)
+ [EBNeRD-Small](https://huggingface.co/datasets/reczoo/Ebnerd_small_x1)

## Models

| No  | Model                                    | Publication                                                                                                                                                                                                                                       
|:---:|:----------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| 1   |  [DCN-V2](./src/DCNv2.py)               | [DCN V2: Improved Deep & Cross Network and Practical Lessons for Web-scale Learning to Rank Systems](https://arxiv.org/abs/2008.13535), WWW 2021.                                                              
| 2   |  [FinalMLP](./src/FinalMLP.py)                  | [FinalMLP: An Enhanced Two-Stream MLP Model for CTR Prediction](https://arxiv.org/abs/2304.00902), AAAI 2023.    
| 3   |  [DIN](./src/DIN.py)                  | [Deep Interest Network for Click-Through Rate Prediction](https://www.kdd.org/kdd2018/accepted-papers/view/deep-interest-network-for-click-through-rate-prediction), KDD 2018.    
| 4   |  [DIEN](./src/DIEN.py)                  | [Deep Interest Evolution Network for Click-Through Rate Prediction](https://arxiv.org/abs/1809.03672), AAAI 2019.  
| 5   |  [TransAct](./TransAct.py)                  | [TransAct: Transformer-based Realtime User Action Model for Recommendation at Pinterest](https://arxiv.org/abs/2306.00248), in KDD 2023.  
| 6   |  [SIM](./src/SIM.py)                  | [Search-based User Interest Modeling with Lifelong Sequential Behavior Data for Click-Through Rate Prediction](https://arxiv.org/abs/2006.05639), in CIKM 2020.  
| 7   |  [ETA](./src/ETA.py)                  | [Efficient Long Sequential User Data Modeling for Click-Through Rate Prediction](https://arxiv.org/abs/2209.12212), in DLP-KDD 2022.  
| 8   |  [SDIM](./src/SDIM.py)                  | [Sampling Is All You Need on Modeling Long-Term User Behaviors for CTR Prediction](https://arxiv.org/abs/2205.10249), in CIKM 2022.  
| 9   |  [TWIN](./src/TWIN.py)                  | [TWIN: TWo-stage Interest Network for Lifelong User Behavior Modeling in CTR Prediction at Kuaishou](https://arxiv.org/abs/2302.02352), in KDD 2023.  
| 10   |  [MIRRN](./src/MIRRN.py)                  | [Multi-granularity Interest Retrieval and Refinement Network for Long-Term User Behavior Modeling in CTR Prediction](https://arxiv.org/abs/2411.15005), in KDD 2025.  

## Benchmarking Results

The DIN model with a sequence length of 50 serves as the global baseline, with other results presented as absolute values and percentage improvements. The best-performing model for each metric in each dataset is highlighted in bold.

### MicroVideo

| Models   | AUC@50          | AUC@100         | AUC@200         | AUC@500         | AUC@1000        | gAUC@50         | gAUC@100        | gAUC@200        | gAUC@500        | gAUC@1000       |
| -------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- |
| DCNv2    | 68.89/+0.2%     | 70.37/+2.4%     | 70.53/+2.6%     | 70.75/+2.9%     | 71.19/+3.6%     | 70.07/+0.5%     | 70.42/+1.0%     | 70.58/+1.2%     | 70.63/+1.3%     | 70.73/+1.4%     |
| FinalMLP | 68.76/+0.0%     | 70.05/+1.9%     | 70.33/+2.3%     | 70.71/+2.9%     | 71.05/+3.4%     | 69.98/+0.3%     | 70.09/+0.5%     | 70.27/+0.8%     | 70.61/+1.2%     | 70.44/+1.0%     |
| DIN      | 68.74/+0.0%     | 70.20/+2.1%     | 70.57/+2.7%     | 71.62/+4.2%     | 71.80/+4.5%     | 69.74/+0.0%     | 70.15/+0.6%     | 70.01/+0.4%     | 71.18/+2.1%     | 71.31/+2.3%     |
| DIEN     | **70.11/+2.0%** | 70.50/+2.6%     | 71.19/+3.6%     | 71.80/+4.5%     | **72.20/+5.0%** | **70.63/+1.3%** | **71.07/+1.9%** | **71.15/+2.0%** | 71.32/+2.3%     | **71.41/+2.4%** |
| TransAct | 69.61/+1.3%     | 70.39/+2.4%     | 70.62/+2.7%     | 71.02/+3.3%     | 71.18/+3.5%     | 69.64/-0.1%     | 69.84/+0.1%     | 69.94/+0.3%     | 70.22/+0.7%     | 70.28/+0.8%     |
| SIM      | 69.91/+1.7%     | 70.41/+2.4%     | 70.57/+2.7%     | 70.76/+2.9%     | 70.76/+2.9%     | 69.82/+0.1%     | 69.82/+0.1%     | 69.92/+0.3%     | 70.40/+0.9%     | 70.38/+0.9%     |
| ETA      | 69.94/+1.7%     | 70.45/+2.5%     | 70.58/+2.7%     | 70.33/+2.3%     | 70.31/+2.3%     | 69.76/+0.0%     | 69.92/+0.3%     | 70.02/+0.4%     | **71.45/+2.5%** | 71.39/+2.4%     |
| SDIM     | 69.88/+1.7%     | 70.81/+3.0%     | **71.51/+4.0%** | 71.53/+4.1%     | 71.73/+4.3%     | 69.68/-0.1%     | 69.78/+0.1%     | 69.84/+0.1%     | 69.89/+0.2%     | 69.86/+0.2%     |
| TWIN     | 69.84/+1.6%     | 70.54/+2.6%     | 70.57/+2.7%     | **71.86/+4.5%** | 71.89/+4.6%     | 69.67/-0.1%     | 69.79/+0.1%     | 69.91/+0.2%     | 70.61/+1.2%     | 70.64/+1.3%     |
| MIRRN    | 70.05/+1.9%     | **70.94/+3.2%** | 71.15/+3.5%     | 71.31/+3.7%     | 71.30/+3.7%     | 69.80/+0.1%     | 70.05/+0.4%     | 70.17/+0.6%     | 70.30/+0.8%     | 70.30/+0.8%     |

### KuaiVideo

| Models   | AUC@50          | AUC@100         | AUC@200         | AUC@500         | AUC@1000        | gAUC@50         | gAUC@100        | gAUC@200        | gAUC@500        | gAUC@1000       |
| -------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- |
| DCNv2    | 68.61/+0.6%     | 69.16/+1.4%     | 69.79/+2.3%     | 69.95/+2.6%     | 69.99/+2.6%     | 66.74/+0.0%     | 67.01/+0.4%     | 67.17/+0.6%     | 67.22/+0.7%     | 67.23/+0.7%     |
| FinalMLP | **69.23/+1.5%** | **69.75/+2.3%** | **70.31/+3.1%** | **70.40/+3.2%** | **70.64/+3.6%** | **66.90/+0.2%** | 67.11/+0.5%     | 67.18/+0.6%     | 67.28/+0.8%     | **67.40/+1.0%** |
| DIN      | 68.21/+0.0%     | 68.61/+0.6%     | 68.96/+1.1%     | 69.55/+2.0%     | 69.58/+2.0%     | 66.76/+0.0%     | 66.89/+0.2%     | 66.87/+0.2%     | 66.97/+0.3%     | 67.12/+0.5%     |
| DIEN     | 68.67/+0.7%     | 68.89/+1.0%     | 69.62/+2.1%     | 69.73/+2.2%     | 69.73/+2.2%     | 66.74/+0.0%     | 66.79/+0.0%     | 66.88/+0.2%     | 66.85/+0.1%     | 66.84/+0.1%     |
| TransAct | 67.90/-0.5%     | 68.87/+1.0%     | 68.58/+0.5%     | 69.13/+1.3%     | 69.29/+1.6%     | 66.33/-0.6%     | 66.49/-0.4%     | 66.77/+0.0%     | 66.82/+0.1%     | 66.81/+0.1%     |
| SIM      | 68.43/+0.3%     | 69.04/+1.2%     | 68.96/+1.1%     | 68.96/+1.1%     | 68.95/+1.1%     | 66.55/-0.3%     | 66.58/-0.3%     | 66.75/+0.0%     | 66.86/+0.1%     | 66.83/+0.1%     |
| ETA      | 68.89/+1.0%     | 69.18/+1.4%     | 69.50/+1.9%     | 69.22/+1.5%     | 69.26/+1.5%     | 66.66/-0.1%     | **67.12/+0.5%** | **67.25/+0.7%** | **67.38/+0.9%** | 67.31/+0.8%     |
| SDIM     | 68.67/+0.7%     | 69.22/+1.5%     | 69.58/+2.0%     | 69.62/+2.1%     | 69.22/+1.5%     | 66.72/-0.1%     | 66.75/+0.0%     | 66.93/+0.3%     | 67.10/+0.5%     | **67.40/+1.0%** |
| TWIN     | 68.71/+0.7%     | 69.09/+1.3%     | 69.09/+1.3%     | 69.37/+1.7%     | 69.43/+1.8%     | 66.65/-0.2%     | 66.86/+0.1%     | 67.01/+0.4%     | 67.28/+0.8%     | 67.30/+0.8%     |
| MIRRN    | 68.43/+0.3%     | 69.12/+1.3%     | 69.20/+1.5%     | 69.27/+1.6%     | 69.29/+1.6%     | 66.79/+0.0%     | 66.86/+0.1%     | 66.93/+0.3%     | 67.08/+0.5%     | 67.15/+0.6%     |

### EBNeRD-Small

| Models   | AUC@50          | AUC@100         | AUC@200         | AUC@500         | AUC@1000        | gAUC@50         | gAUC@100        | gAUC@200        | gAUC@500        | gAUC@1000       |
| -------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- |
| DCNv2    | 69.86/-0.8%     | 70.72/+0.4%     | 70.69/+0.4%     | 71.44/+1.4%     | 71.39/+1.3%     | 69.44/-0.8%     | 70.31/+0.5%     | 70.43/+0.6%     | 70.82/+1.2%     | 70.82/+1.2%     |
| FinalMLP | 69.94/-0.7%     | 70.75/+0.4%     | 70.88/+0.6%     | 71.38/+1.3%     | 71.51/+1.5%     | 69.90/-0.1%     | **70.47/+0.7%** | 70.50/+0.7%     | 70.80/+1.2%     | 70.92/+1.3%     |
| DIN      | **70.44/+0.0%** | **71.04/+0.9%** | **71.20/+1.1%** | **71.86/+2.0%** | **71.92/+2.1%** | **69.98/+0.0%** | 70.45/+0.7%     | 70.60/+0.9%     | **71.23/+1.8%** | **71.28/+1.9%** |
| DIEN     | 69.93/-0.7%     | 70.52/+0.1%     | 70.88/+0.6%     | 71.37/+1.3%     | 70.95/+0.7%     | 69.80/-0.3%     | 70.19/+0.3%     | 70.51/+0.8%     | 70.91/+1.3%     | 70.78/+1.1%     |
| TransAct | 70.26/-0.3%     | 70.82/+0.5%     | 71.14/+1.0%     | 71.32/+1.2%     | 71.45/+1.4%     | 69.87/-0.2%     | 70.29/+0.4%     | **70.64/+0.9%** | 70.71/+1.0%     | 70.84/+1.2%     |
| SIM      | 70.33/-0.2%     | 70.44/+0.0%     | 70.44/+0.0%     | 70.04/-0.6%     | 70.03/-0.6%     | 69.89/-0.1%     | 70.02/+0.1%     | 69.94/-0.1%     | 69.78/-0.3%     | 69.54/-0.6%     |
| ETA      | 70.19/-0.4%     | 70.50/+0.1%     | 70.73/+0.4%     | 70.88/+0.6%     | 70.82/+0.5%     | 69.90/-0.1%     | 70.02/+0.1%     | 70.07/+0.1%     | 70.13/+0.2%     | 70.17/+0.3%     |
| SDIM     | 70.38/-0.1%     | 70.42/+0.0%     | 71.16/+1.0%     | 71.12/+1.0%     | 71.41/+1.4%     | 69.78/-0.3%     | 69.98/+0.0%     | 70.55/+0.8%     | 70.51/+0.8%     | 70.72/+1.1%     |
| TWIN     | 70.26/-0.3%     | 70.26/-0.3%     | 70.40/-0.1%     | 70.80/+0.5%     | 70.50/+0.1%     | 69.65/-0.5%     | 69.75/-0.3%     | 69.86/-0.2%     | 70.36/+0.5%     | 69.91/-0.1%     |
| MIRRN    | 69.46/-1.4%     | 69.54/-1.3%     | 69.59/-1.2%     | 69.81/-0.9%     | 69.63/-1.1%     | 69.22/-1.1%     | 69.29/-1.0%     | 69.21/-1.1%     | 69.42/-0.8%     | 69.69/-0.4%     |



