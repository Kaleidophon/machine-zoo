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
| 1 | 0.2500 | 0.2000 | 0.0417 | 0.0000 |
| 2 | 0.1562 | 0.2000 | 0.0573 | 0.0000 |
| 3 | 0.2500 | 0.2250 | 0.0417 | 0.0312 |
| 4 | 0.2188 | 0.2250 | 0.0312 | 0.0312 |
| 5 | 0.2344 | 0.2000 | 0.0677 | 0.0625 |


Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | 0.1140 | 0.0000 | 0.0710 |
| 2 | 0.1287 | 0.0000 | 0.0803 |
| 3 | 0.1085 | 0.0000 | 0.0609 |
| 4 | 0.1268 | 0.0000 | 0.0729 |
| 5 | 0.1618 | 0.0000 | 0.0830 |


### Baseline LSTM

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | 0.2344 | 0.1500 | 0.0469 | 0.0000 |
| 2 | 0.2188 | 0.2500 | 0.1354 | 0.0938 |
| 3 | 0.3281 | 0.2250 | 0.1667 | 0.2188 |
| 4 | 0.1406 | 0.1250 | 0.0469 | 0.0000 |
| 5 | 0.2188 | 0.2500 | 0.0521 | 0.0000 |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | 0.0735 | 0.0000 | 0.0544 |
| 2 | 0.1213 | 0.0000 | 0.0775 |
| 3 | 0.1820 | 0.0000 | 0.1033 |
| 4 | 0.0625 | 0.0000 | 0.0415 |
| 5 | 0.0938 | 0.0000 | 0.0563 |

### Guided Attention GRU

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | 1.0000 | 1.0000 | 0.8490 | 0.6875 |
| 2 | 1.0000 | 1.0000 | 0.9844 | 0.9688 |
| 3 | 1.0000 | 1.0000 | 0.8750 | 0.8125 |
| 4 | 1.0000 | 1.0000 | 0.9844 | 0.9688 |
| 5 | 1.0000 | 1.0000 | 0.9375 | 0.9062 |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | 0.2776 | 0.2500 | 0.2371 |
| 2 | 0.2812 | 0.6250 | 0.2343 |
| 3 | 0.2757 | 0.3125 | 0.2472 |
| 4 | 0.2812 | 0.4688 | 0.2399 |
| 5 | 0.2831 | 0.5312 | 0.2399 |

### Guided Attention LSTM

Heldout sets:

| Run | Heldout compositions | Heldout inputs | Heldout tables | New compositions |
| ---:| :------------------- |:-------------- |:-------------- |:---------------- |
| 1 | 0.9531 | 0.9250 | 0.4010 | 0.2812 |
| 2 | 1.0000 | 1.0000 | 0.5625 | 0.2812 |
| 3 | 0.9375 | 0.9500 | 0.5417 | 0.4375 |
| 4 | 0.9531 | 0.9750 | 0.6562 | 0.3750 |
| 5 | 0.9219 | 0.9750 | 0.5104 | 0.3438 |

Longer compositions sets:

| Run | Compositions seen | Compositions new | Compositions incremental |
| ---:|:----------------- |:---------------- |:------------------------ |
| 1 | 0.2665 | 0.0625 | 0.1956 |
| 2 | 0.2721 | 0.0312 | 0.2002 |
| 3 | 0.2702 | 0.1250 | 0.2039 |
| 4 | 0.2702 | 0.0938 | 0.2223 |
| 5 | 0.2665 | 0.0625 | 0.2085 |
