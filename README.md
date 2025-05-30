# LongCTR
A Long Sequence Modeling Benchmark for CTR Prediction

## Datasets
+ [MicroVideo](https://huggingface.co/datasets/reczoo/MicroVideo1.7M_x2)
+ [KuaiVideo](https://huggingface.co/datasets/reczoo/KuaiVideo_x2)
+ [EBNeRD-Small](https://huggingface.co/datasets/reczoo/Ebnerd_small_x1)

## Models

| No  | Model                                    | Publication                                                                                                                                                                                                                                       
|:---:|:----------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| 1   |  [DCNv2](./src/DCNv2.py)               | [DCN V2: Improved Deep & Cross Network and Practical Lessons for Web-scale Learning to Rank Systems](https://arxiv.org/abs/2008.13535), WWW 2021.                                                              
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

In the following, we present benchmarking results for long sequence models across various sequence lengths in CTR prediction. Specifically, we establish the DIN model with a sequence length of 50 as the global baseline and report the relative improvements of other models compared to this baseline. Each row illustrates the performance variation of a specific model as the sequence length increases. Each column compares the performance of different models at a given sequence length, with the best performance in each column highlighted by underlining and the global best results highlighted in bold.


### MicroVideo

<table>
  <thead>
    <tr>
      <th rowspan="2">Models</th>
      <th colspan="5">AUC</th>
      <th colspan="5">gAUC</th>
    </tr>
    <tr>
      <th>50</th>
      <th>100</th>
      <th>200</th>
      <th>500</th>
      <th>1000</th>
      <th>50</th>
      <th>100</th>
      <th>200</th>
      <th>500</th>
      <th>1000</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>DCNv2</td>
      <td>68.89/+0.2%</td>
      <td>70.37/+2.4%</td>
      <td>70.53/+2.6%</td>
      <td>70.75/+2.9%</td>
      <td>71.19/+3.6%</td>
      <td>70.07/+0.5%</td>
      <td>70.42/+1.0%</td>
      <td>70.58/+1.2%</td>
      <td>70.63/+1.3%</td>
      <td>70.73/+1.4%</td>
    </tr>
    <tr>
      <td>FinalMLP</td>
      <td>68.76/+0.0%</td>
      <td>70.05/+1.9%</td>
      <td>70.33/+2.3%</td>
      <td>70.71/+2.9%</td>
      <td>71.05/+3.4%</td>
      <td>69.98/+0.3%</td>
      <td>70.09/+0.5%</td>
      <td>70.27/+0.8%</td>
      <td>70.61/+1.2%</td>
      <td>70.44/+1.0%</td>
    </tr>
    <tr>
      <td>DIN</td>
      <td>68.74/+0.0%</td>
      <td>70.20/+2.1%</td>
      <td>70.57/+2.7%</td>
      <td>71.62/+4.2%</td>
      <td>71.80/+4.5%</td>
      <td>69.74/+0.0%</td>
      <td>70.15/+0.6%</td>
      <td>70.01/+0.4%</td>
      <td>71.18/+2.1%</td>
      <td>71.31/+2.3%</td>
    </tr>
    <tr>
      <td>DIEN<br></td>
      <td><ins>70.11/+2.0%</ins></td>
      <td>70.50/+2.6%</td>
      <td>71.19/+3.6%</td>
      <td>71.80/+4.5%</td>
      <td><strong><ins>72.20/+5.0%</ins></strong></td>
      <td><ins>70.63/+1.3%</ins></td>
      <td><ins>71.07/+1.9%</ins></td>
      <td><ins>71.15/+2.0%</ins></td>
      <td>71.32/+2.3%</td>
      <td><ins>71.41/+2.4%</ins></td>
    </tr>
    <tr>
      <td>TransAct</td>
      <td>69.61/+1.3%</td>
      <td>70.39/+2.4%</td>
      <td>70.62/+2.7%</td>
      <td>71.02/+3.3%</td>
      <td>71.18/+3.5%</td>
      <td>69.64/-0.1%</td>
      <td>69.84/+0.1%</td>
      <td>69.94/+0.3%</td>
      <td>70.22/+0.7%</td>
      <td>70.28/+0.8%</td>
    </tr>
    <tr>
      <td>SIM</td>
      <td>69.91/+1.7%</td>
      <td>70.41/+2.4%</td>
      <td>70.57/+2.7%</td>
      <td>70.76/+2.9%</td>
      <td>70.76/+2.9%</td>
      <td>69.82/+0.1%</td>
      <td>69.82/+0.1%</td>
      <td>69.92/+0.3%</td>
      <td>70.40/+0.9%</td>
      <td>70.38/+0.9%</td>
    </tr>
    <tr>
      <td>ETA</td>
      <td>69.94/+1.7%</td>
      <td>70.45/+2.5%</td>
      <td>70.58/+2.7%</td>
      <td>70.33/+2.3%</td>
      <td>70.31/+2.3%</td>
      <td>69.76/+0.0%</td>
      <td>69.92/+0.3%</td>
      <td>70.02/+0.4%</td>
      <td><strong><ins>71.45/+2.5%</ins></strong></td>
      <td>71.39/+2.4%</td>
    </tr>
    <tr>
      <td>SDIM</td>
      <td>69.88/+1.7%</td>
      <td>70.81/+3.0%</td>
      <td><ins>71.51/+4.0%</ins></td>
      <td>71.53/+4.1%</td>
      <td>71.73/+4.3%</td>
      <td>69.68/-0.1%</td>
      <td>69.78/+0.1%</td>
      <td>69.84/+0.1%</td>
      <td>69.89/+0.2%</td>
      <td>69.86/+0.2%</td>
    </tr>
    <tr>
      <td>TWIN</td>
      <td>69.84/+1.6%</td>
      <td>70.54/+2.6%</td>
      <td>70.57/+2.7%</td>
      <td><ins>71.86/+4.5%</ins></td>
      <td>71.89/+4.6%</td>
      <td>69.67/-0.1%</td>
      <td>69.79/+0.1%</td>
      <td>69.91/+0.2%</td>
      <td>70.61/+1.2%</td>
      <td>70.64/+1.3%</td>
    </tr>
    <tr>
      <td>MIRRN</td>
      <td>70.05/+1.9%</td>
      <td><ins>70.94/+3.2%</ins></td>
      <td>71.15/+3.5%</td>
      <td>71.31/+3.7%</td>
      <td>71.30/+3.7%</td>
      <td>69.80/+0.1%</td>
      <td>70.05/+0.4%</td>
      <td>70.17/+0.6%</td>
      <td>70.30/+0.8%</td>
      <td>70.30/+0.8%</td>
    </tr>
  </tbody>
</table>

### KuaiVideo

<table>
  <thead>
    <tr>
      <th rowspan="2">Models</th>
      <th colspan="5">AUC</th>
      <th colspan="5">gAUC</th>
    </tr>
    <tr>
      <th>50</th>
      <th>100</th>
      <th>200</th>
      <th>500</th>
      <th>1000</th>
      <th>50</th>
      <th>100</th>
      <th>200</th>
      <th>500</th>
      <th>1000</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>DCNv2</td>
      <td>68.61/+0.6%</td>
      <td>69.16/+1.4%</td>
      <td>69.79/+2.3%</td>
      <td>69.95/+2.6%</td>
      <td>69.99/+2.6%</td>
      <td>66.74/+0.0%</td>
      <td>67.01/+0.4%</td>
      <td>67.17/+0.6%</td>
      <td>67.22/+0.7%</td>
      <td>67.23/+0.7%</td>
    </tr>
    <tr>
      <td>FinalMLP</td>
      <td><ins>69.23/+1.5%</ins></td>
      <td><ins>69.75/+2.3%</ins></td>
      <td><ins>70.31/+3.1%</ins></td>
      <td><ins>70.40/+3.2%</ins></td>
      <td><strong><ins>70.64/+3.6%</ins></strong></td>
      <td><ins>66.90/+0.2%</ins></td>
      <td>67.11/+0.5%</td>
      <td>67.18/+0.6%</td>
      <td>67.28/+0.8%</td>
      <td><strong><ins>67.40/+1.0%</ins></strong></td>
    </tr>
    <tr>
      <td>DIN</td>
      <td>68.21/+0.0%</td>
      <td>68.61/+0.6%</td>
      <td>68.96/+1.1%</td>
      <td>69.55/+2.0%</td>
      <td>69.58/+2.0%</td>
      <td>66.76/+0.0%</td>
      <td>66.89/+0.2%</td>
      <td>66.87/+0.2%</td>
      <td>66.97/+0.3%</td>
      <td>67.12/+0.5%</td>
    </tr>
    <tr>
      <td>DIEN</td>
      <td>68.67/+0.7%</td>
      <td>68.89/+1.0%</td>
      <td>69.62/+2.1%</td>
      <td>69.73/+2.2%</td>
      <td>69.73/+2.2%</td>
      <td>66.74/+0.0%</td>
      <td>66.79/+0.0%</td>
      <td>66.88/+0.2%</td>
      <td>66.85/+0.1%</td>
      <td>66.84/+0.1%</td>
    </tr>
    <tr>
      <td>TransAct</td>
      <td>67.90/-0.5%</td>
      <td>68.87/+1.0%</td>
      <td>68.58/+0.5%</td>
      <td>69.13/+1.3%</td>
      <td>69.29/+1.6%</td>
      <td>66.33/-0.6%</td>
      <td>66.49/-0.4%</td>
      <td>66.77/+0.0%</td>
      <td>66.82/+0.1%</td>
      <td>66.81/+0.1%</td>
    </tr>
    <tr>
      <td>SIM</td>
      <td>68.43/+0.3%</td>
      <td>69.04/+1.2%</td>
      <td>68.96/+1.1%</td>
      <td>68.96/+1.1%</td>
      <td>68.95/+1.1%</td>
      <td>66.55/-0.3%</td>
      <td>66.58/-0.3%</td>
      <td>66.75/+0.0%</td>
      <td>66.86/+0.1%</td>
      <td>66.83/+0.1%</td>
    </tr>
    <tr>
      <td>ETA</td>
      <td>68.89/+1.0%</td>
      <td>69.18/+1.4%</td>
      <td>69.50/+1.9%</td>
      <td>69.22/+1.5%</td>
      <td>69.26/+1.5%</td>
      <td>66.66/-0.1%</td>
      <td><ins>67.12/+0.5%</ins></td>
      <td><ins>67.25/+0.7%</ins></td>
      <td><ins>67.38/+0.9%</ins></td>
      <td>67.31/+0.8%</td>
    </tr>
    <tr>
      <td>SDIM</td>
      <td>68.67/+0.7%</td>
      <td>69.22/+1.5%</td>
      <td>69.58/+2.0%</td>
      <td>69.62/+2.1%</td>
      <td>69.22/+1.5%</td>
      <td>66.72/-0.1%</td>
      <td>66.75/+0.0%</td>
      <td>66.93/+0.3%</td>
      <td>67.10/+0.5%</td>
      <td><strong><ins>67.40/+1.0%</ins></strong></td>
    </tr>
    <tr>
      <td>TWIN</td>
      <td>68.71/+0.7%</td>
      <td>69.09/+1.3%</td>
      <td>69.09/+1.3%</td>
      <td>69.37/+1.7%</td>
      <td>69.43/+1.8%</td>
      <td>66.65/-0.2%</td>
      <td>66.86/+0.1%</td>
      <td>67.01/+0.4%</td>
      <td>67.28/+0.8%</td>
      <td>67.30/+0.8%</td>
    </tr>
    <tr>
      <td>MIRRN</td>
      <td>68.43/+0.3%</td>
      <td>69.12/+1.3%</td>
      <td>69.20/+1.5%</td>
      <td>69.27/+1.6%</td>
      <td>69.29/+1.6%</td>
      <td>66.79/+0.0%</td>
      <td>66.86/+0.1%</td>
      <td>66.93/+0.3%</td>
      <td>67.08/+0.5%</td>
      <td>67.15/+0.6%</td>
    </tr>
  </tbody>
</table>

### EBNeRD-Small

<table>
  <thead>
    <tr>
      <th rowspan="2">Models</th>
      <th colspan="5">AUC</th>
      <th colspan="5">gAUC</th>
    </tr>
    <tr>
      <th>50</th>
      <th>100</th>
      <th>200</th>
      <th>500</th>
      <th>1000</th>
      <th>50</th>
      <th>100</th>
      <th>200</th>
      <th>500</th>
      <th>1000</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>DCNv2</td>
      <td>69.86/-0.8%</td>
      <td>70.72/+0.4%</td>
      <td>70.69/+0.4%</td>
      <td>71.44/+1.4%</td>
      <td>71.39/+1.3%</td>
      <td>69.44/-0.8%</td>
      <td>70.31/+0.5%</td>
      <td>70.43/+0.6%</td>
      <td>70.82/+1.2%</td>
      <td>70.82/+1.2%</td>
    </tr>
    <tr>
      <td>FinalMLP</td>
      <td>69.94/-0.7%</td>
      <td>70.75/+0.4%</td>
      <td>70.88/+0.6%</td>
      <td>71.38/+1.3%</td>
      <td>71.51/+1.5%</td>
      <td>69.90/-0.1%</td>
      <td><ins>70.47/+0.7%</ins></td>
      <td>70.50/+0.7%</td>
      <td>70.80/+1.2%</td>
      <td>70.92/+1.3%</td>
    </tr>
    <tr>
      <td>DIN</td>
      <td><ins>70.44/+0.0%</ins></td>
      <td><ins>71.04/+0.9%</ins></td>
      <td><ins>71.20/+1.1%</ins></td>
      <td><ins>71.86/+2.0%</ins></td>
      <td><strong><ins>71.92/+2.1%</ins></strong></td>
      <td><ins>69.98/+0.0%</ins></td>
      <td>70.45/+0.7%</td>
      <td>70.60/+0.9%</td>
      <td><ins>71.23/+1.8%</ins></td>
      <td><strong><ins>71.28/+1.9%</ins></strong></td>
    </tr>
    <tr>
      <td>DIEN</td>
      <td>69.93/-0.7%</td>
      <td>70.52/+0.1%</td>
      <td>70.88/+0.6%</td>
      <td>71.37/+1.3%</td>
      <td>70.95/+0.7%</td>
      <td>69.80/-0.3%</td>
      <td>70.19/+0.3%</td>
      <td>70.51/+0.8%</td>
      <td>70.91/+1.3%</td>
      <td>70.78/+1.1%</td>
    </tr>
    <tr>
      <td>TransAct</td>
      <td>70.26/-0.3%</td>
      <td>70.82/+0.5%</td>
      <td>71.14/+1.0%</td>
      <td>71.32/+1.2%</td>
      <td>71.45/+1.4%</td>
      <td>69.87/-0.2%</td>
      <td>70.29/+0.4%</td>
      <td><ins>70.64/+0.9%</ins></td>
      <td>70.71/+1.0%</td>
      <td>70.84/+1.2%</td>
    </tr>
    <tr>
      <td>SIM</td>
      <td>70.33/-0.2%</td>
      <td>70.44/+0.0%</td>
      <td>70.44/+0.0%</td>
      <td>70.04/-0.6%</td>
      <td>70.03/-0.6%</td>
      <td>69.89/-0.1%</td>
      <td>70.02/+0.1%</td>
      <td>69.94/-0.1%</td>
      <td>69.78/-0.3%</td>
      <td>69.54/-0.6%</td>
    </tr>
    <tr>
      <td>ETA</td>
      <td>70.19/-0.4%</td>
      <td>70.50/+0.1%</td>
      <td>70.73/+0.4%</td>
      <td>70.88/+0.6%</td>
      <td>70.82/+0.5%</td>
      <td>69.90/-0.1%</td>
      <td>70.02/+0.1%</td>
      <td>70.07/+0.1%</td>
      <td>70.13/+0.2%</td>
      <td>70.17/+0.3%</td>
    </tr>
    <tr>
      <td>SDIM</td>
      <td>70.38/-0.1%</td>
      <td>70.42/+0.0%</td>
      <td>71.16/+1.0%</td>
      <td>71.12/+1.0%</td>
      <td>71.41/+1.4%</td>
      <td>69.78/-0.3%</td>
      <td>69.98/+0.0%</td>
      <td>70.55/+0.8%</td>
      <td>70.51/+0.8%</td>
      <td>70.72/+1.1%</td>
    </tr>
    <tr>
      <td>TWIN</td>
      <td>70.26/-0.3%</td>
      <td>70.26/-0.3%</td>
      <td>70.40/-0.1%</td>
      <td>70.80/+0.5%</td>
      <td>70.50/+0.1%</td>
      <td>69.65/-0.5%</td>
      <td>69.75/-0.3%</td>
      <td>69.86/-0.2%</td>
      <td>70.36/+0.5%</td>
      <td>69.91/-0.1%</td>
    </tr>
    <tr>
      <td>MIRRN</td>
      <td>69.46/-1.4%</td>
      <td>69.54/-1.3%</td>
      <td>69.59/-1.2%</td>
      <td>69.81/-0.9%</td>
      <td>69.63/-1.1%</td>
      <td>69.22/-1.1%</td>
      <td>69.29/-1.0%</td>
      <td>69.21/-1.1%</td>
      <td>69.42/-0.8%</td>
      <td>69.69/-0.4%</td>
    </tr>
  </tbody>
</table>


### How to Reproduce

To reproduce the results, please refer to the `benchmark` folder for the necessary configurations and running logs. For example, you can execute the following script to run SIM on MicroVideo with a sequence length of 50 (where tag=005 indicates the best-tuned hyper-parameters):

```
python run_param_tuner.py --config benchmark/SIM_microvideo1.7m_x2/SIM_microvideo1.7m_x2_tuner_config_01_50.yaml --tag 005 --gpu 0

```
