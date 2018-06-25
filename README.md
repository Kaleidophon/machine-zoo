# Machine Zoo

Zoo of [guided attention models and baselines](https://github.com/i-machine-think/machine) trained on [compositionality toy tasks](https://github.com/i-machine-think/machine-tasks).
Training was done by selecting models using their best score on a held-out set using an embedding size of 
16, hidden layer size of 512 for at most 20 epochs and pre-rnn MLP attention. The models are trained with both and without the ```ignore_output_eos``` flag.

## Evaluation results

In the section we show the evaluation results (in terms of sequence accuracy) for the selected models:

### Baseline GRU

Sequence accuracy for test.tsv:

| Run | Ignore Output EOS | Keep Output EOS |
| ---:| :----------------- |:--------------- |
| 1 | 0.6069 | 0.1367 |
| 2 | 0.6082 | 0.1485 |
| 3 | 0.6082 | 0.1168 |
| 4 | 0.6082 | 0.2459 |
| 5 | 0.6082 | 0.2357 |

Although there are multiple models with the same sequence accuracy, they are different, as their word accuracies differed.

### Guided Attention GRU

Sequence accuracy for test.tsv:

| Run | Ignore Output EOS | Keep Output EOS |
| ---:| :----------------- |:--------------- |
| 1 | 0.6082 | 0.1870 |
| 2 | 0.6082 | 0.1814 |
| 3 | 0.6082 | 0.1806 |
| 4 | 0.6082 | 0.1847 |
| 5 | 0.6082 | 0.3554 |

Again, although there are multiple models with the same sequence accuracy, they are different, as their word accuracies differed.