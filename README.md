# Machine Zoo

Zoo of [guided attention models and baselines](https://github.com/i-machine-think/machine) trained on [compositionality toy tasks](https://github.com/i-machine-think/machine-tasks).
Training was done by selecting models using their best score on a held-out set using an embedding size of 
16, hidden layer size of 512 for at most 100 epochs and pre-rnn MLP attention. Two version of
each model, using GRU and LSTM respectively, were created.

## Evaluation results

In the section we show the evaluation results for the selected models:

### Baseline GRU

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | | | | |
| 5 | | | | |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |


### Baseline LSTM

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | | | | |
| 5 | | | | |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |

### Guided Attention GRU

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | | | | |
| 5 | | | | |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |

### Guided Attention LSTM

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | | | | |
| 5 | | | | |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |
