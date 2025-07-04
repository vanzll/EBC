# Diversifying Robot Locomotion Behaviors with Extrinsic Behavioral Curiosity

```markdown 
Zhenglin Wan, Xingrui Yu, David Mark Bossens, Yueming Lyu, Qing Guo, Flint Xiaofeng Fan, Yew-Soon Ong, Ivor W. Tsang
```

## 1. Introduction
Extrinsic Behavior Curiosity (EBC) mechanism is a technique which enables the robot to learn a broad range of high-performing and **behavioral-diverse** policies via Quality Diversity (QD) Optimization. This repository contains the implementation of EBC and its QD base algorithm. 

Some key components of this repository is adapted from [PPGA](https://arxiv.org/abs/2305.13795) paper.

## 2. Experiment
### 2.1 Installing key packages.
Simply run below command line:
```python
conda create -n QD-EBC python==3.9.19
conda activate QD-EBC
pip install requirements.txt
```


### 2.2 Reproduce the results.
We provided runner files for your convenience to reproduce the results.

```python 
source runners/local/train_il_ppga_halfcheetah.sh
source runners/local/train_il_ppga_humanoid.sh
source runners/local/train_il_ppga_walker2d.sh
```

Inside the runner file, there are three lines that you should modify to get access to results with different settings:
- 1. SEED: run the experients with multiple random seeds to justify the results.
- 2. intrinsic_module: gail, vail or diffail, corresponding to three base IL methods in the paper.
- 3. archive_bonus: true or false, corresponding to EBC-improved version or baseline version of IL methods.

## 3. Results.

<table>
  <tr>
    <th rowspan="2">Method</th>
    <th colspan="4">Halfcheetah</th>
    <th colspan="4">Walker2d</th>
    <th colspan="4">Humanoid</th>
  </tr>
  <tr>
    <th>QD-Score</th>
    <th>Cov(%)</th>
    <th>Best</th>
    <th>Avg</th>
    <th>QD-Score</th>
    <th>Cov(%)</th>
    <th>Best</th>
    <th>Avg</th>
    <th>QD-Score</th>
    <th>Cov(%)</th>
    <th>Best</th>
    <th>Avg</th>
  </tr>
  <tr>
    <td>GAIL-EBC (Ours)</td>
    <td>2.64 × 10⁶ ± 9.21 × 10⁴</td>
    <td>98.13±1.69</td>
    <td>2,770±440</td>
    <td>1,074±25</td>
    <td>3.42 × 10⁶ ± 1.36 × 10⁵</td>
    <td>91.49±0.98</td>
    <td>4,022±569</td>
    <td>1,493±48</td>
    <td>5.31 × 10⁶ ± 5.78 × 10⁵</td>
    <td>98.00±0.23</td>
    <td>5,140±852</td>
    <td>2,166±241</td>
  </tr>
  <tr>
    <td>GAIL</td>
    <td>2.02 × 10⁶ ± 8.36 × 10⁵</td>
    <td>67.83±16.05</td>
    <td>5,115±218</td>
    <td>1,165±341</td>
    <td>2.47 × 10⁶ ± 2.88 × 10⁵</td>
    <td>69.27±4.51</td>
    <td>4,031±187</td>
    <td>1,425±73</td>
    <td>1.86 × 10⁶ ± 4.51 × 10⁵</td>
    <td>82.25±9.30</td>
    <td>6,278±2,245</td>
    <td>924±251</td>
  </tr>
  <tr>
    <td>VAIL-EBC (Ours)</td>
    <td>3.78 × 10⁶ ± 7.69 × 10⁴</td>
    <td>99.14±0.50</td>
    <td>3,901±840</td>
    <td>1,526±39</td>
    <td>3.19 × 10⁶ ± 2.15 × 10⁵</td>
    <td>91.45±1.62</td>
    <td>3,802±375</td>
    <td>1,398±72</td>
    <td>7.26 × 10⁶ ± 3.10 × 10⁵</td>
    <td>97.63±0.59</td>
    <td>5,824±489</td>
    <td>2,975±145</td>
  </tr>
  <tr>
    <td>VAIL</td>
    <td>3.62 × 10⁶ ± 4.00 × 10⁴</td>
    <td>91.68±3.80</td>
    <td>5,123±401</td>
    <td>1,582±83</td>
    <td>2.40 × 10⁶ ± 2.13 × 10⁵</td>
    <td>71.40±2.70</td>
    <td>3,570±417</td>
    <td>1,341±73</td>
    <td>5.09 × 10⁶ ± 6.86 × 10⁵</td>
    <td>65.61±2.77</td>
    <td>7,056±250</td>
    <td>3,094±304</td>
  </tr>
  <tr>
    <td>DiffAIL-EBC (Ours)</td>
    <td>3.99 × 10⁶ ± 3.11 × 10⁵</td>
    <td>100.0±0.0</td>
    <td>4,290±117</td>
    <td>1,598±125</td>
    <td>2.93 × 10⁶ ± 7.59 × 10⁴</td>
    <td>88.63±1.06</td>
    <td>2,283±109</td>
    <td>1,320±23</td>
    <td>8.92 × 10⁶ ± 6.60 × 10⁵</td>
    <td>93.29±0.41</td>
    <td>5,598±298</td>
    <td>3,824±268</td>
  </tr>
  <tr>
    <td>DiffAIL</td>
    <td>4.02 × 10⁶ ± 5.82 × 10⁴</td>
    <td>99.72±0.28</td>
    <td>3,646±41</td>
    <td>1,614±28</td>
    <td>1.71 × 10⁶ ± 4.08 × 10⁵</td>
    <td>52.14±0.74</td>
    <td>1,989±646</td>
    <td>1,304±294</td>
    <td>3.56 × 10⁶ ± 3.71 × 10⁵</td>
    <td>76.32±0.48</td>
    <td>5,151±132</td>
    <td>1,869±206</td>
  </tr>
</table>

