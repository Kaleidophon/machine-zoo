# Machine Zoo

Zoo of [guided attention models and baselines](https://github.com/i-machine-think/machine) trained on [compositionality toy tasks](https://github.com/i-machine-think/machine-tasks).
Training was done by selecting models using their best score on a held-out set using an embedding size of 
16, hidden layer size of 512 for at most 100 epochs and pre-rnn MLP attention. Two version of
each model, using GRU and LSTM respectively, were created.

## Evaluation results

In the section we show the evaluation results (in terms of sequence accuracy) for the selected models:

### Baseline GRU

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | 0.2188 | 0.2250 | 0.0312 | 0.0312 |
| 5 | 0.2344 | 0.2000 | 0.0677 | 0.0625 |


Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | 0.1268 | 0.0000 | 0.0729 |
| 5 | 0.1618 | 0.0000 | 0.0830 |


### Baseline LSTM

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | 0.1406 | 0.1250 | 0.0469 | 0.0000 |
| 5 | 0.2188 | 0.2500 | 0.0521 | 0.0000 |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | 0.0625 | 0.0000 | 0.0415 |
| 5 | 0.0938 | 0.0000 | 0.0563 |

### Guided Attention GRU

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | 1.0000 | 1.0000 | 0.9844 | 0.9688 |
| 5 | 1.0000 | 1.0000 | 0.9375 | 0.9062 |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | 0.2812 | 0.4688 | 0.2399 |
| 5 | 0.2831 | 0.5312 | 0.2399 |

### Guided Attention LSTM

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | 0.9531 | 0.9750 | 0.6562 | 0.3750 |
| 5 | 0.9219 | 0.9750 | 0.5104 | 0.3438 |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | 0.2702 | 0.0938 | 0.2223 |
| 5 | 0.2665 | 0.0625 | 0.2085 |
