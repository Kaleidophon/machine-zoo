# Machine Zoo

Zoo of [guided attention models and baselines](https://github.com/i-machine-think/machine) trained on [compositionality toy tasks](https://github.com/i-machine-think/machine-tasks). The training sequences had a maximum length of 4. 
Training was done by selecting models using their best score on a held-out set using an embedding size of 
16, hidden layer size of 512 for at most 100 epochs and pre-rnn MLP attention. Two version of
each model, using GRU and LSTM respectively, were created.

## Evaluation results

In the section we show the evaluation results (in terms of sequence accuracy) for the selected models:

### Baseline GRU

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | 1.0000 | 1.0000 | 0.2930 | 0.0078 |


Longer compositions sets (increased by length 1):

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | 0.3290 | 0.0039 | 0.1084 |


### Baseline LSTM

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | 1.0000 | 1.0000 | 0.3328 | 0.0000 |

Longer compositions sets (increased by length 1):

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | 0.3062 | 0.0000 | 0.1150 |

### Guided Attention GRU

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | 1.0000 | 1.0000 | 0.4296 | 0.0469 |

Longer compositions sets (increased by length 1):

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | 0.3258 | 0.0000 | 0.1452 |

### Guided Attention LSTM

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | 1.0000 | 1.0000 | 0.3736 | 0.0391 |

Longer compositions sets (increased by length 1):

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | 0.2918 | 0.0000 | 0.1184 |
