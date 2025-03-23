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

