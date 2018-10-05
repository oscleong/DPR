# Deep Phase Retrieval (DPR)
This repository contains code for the generative model experiments in the paper: [Phase Retrieval Under a Generative Prior](https://arxiv.org/abs/1807.04261).

### Requirements
---
1. Python 2.7
2. [Tensorflow 1.0.1](https://www.tensorflow.org/install/)
3. [Scipy](https://www.scipy.org/install.html)
4. [PyPNG](http://stackoverflow.com/a/31143108/3537687)

### Instructions
---
1. Clone this repository 
    ```shell
    $ git clone https://github.com/oscleong/DPR.git
    $ cd DPR
    ```

2. Download the datasets via the script 
    ```shell
    $ ./setup/download_data.sh 
    ```

3. Download the pretrained VAE and DCGAN from [Bora et. al](https://arxiv.org/abs/1703.03208) by running
    ```shell
    $ ./setup/download_models.sh 
    ```
    To train your own DCGAN on celebA, please see: https://github.com/carpedm20/DCGAN-tensorflow
    
    To train your own VAE on MNIST, run 
    ```shell
    $ ./setup/train_mnist_vae.sh 
    ```
    
4. For MNIST experiments with Gaussian measurements, run 
    ```shell
    $ ./quick_scripts/mnist_reconstr.sh 
    ```
    For CelebA experiments with Gaussian measurements, run 
    ```shell
    $ ./quick_scripts/celebA_reconstr.sh 
    ```    
    The images for the CelebA experiments can be found in the ```/images/``` folder. 
    
### Miscellaneous
---
To change the number of random restarts, please see the bottom of the file ```/src/phase_retrieval.py```. 
Other parameters such as number of measurements, learning rate, iterations of gradient descent, etc can be found and 
changed in the dataset's respective ```{dataset}_reconstr.sh``` file
 (depending on the experiments you are interested in running).
