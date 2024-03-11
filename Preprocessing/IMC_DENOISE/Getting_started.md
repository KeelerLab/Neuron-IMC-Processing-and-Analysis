Official Online Documentation: https://github.com/PENGLU-WashU/IMC_Denoise?tab=readme-ov-file

Introduction

IMC Denoise is a powerful software tool designed to reduce noise and enhance the quality of images in the field of imaging mass cytometry (IMC). By applying advanced denoising algorithms, IMC Denoise allows users to obtain clearer and more accurate images, facilitating better analysis and interpretation of data.

System Requirements

Before installing IMC Denoise, ensure that your system meets the following minimum requirements:

Operating System: Windows 10 or macOS 10.13 or later

Processor: Intel Core i5 or equivalent

RAM: 8 GB or more

Storage: 500 MB of available space

Graphics Card: NVIDIA GeForce GTX 1050 or AMD Radeon RX 560 or higher with 2GB VRAM

Installation 

To install IMC Denoise, follow the steps from the official IMC Denoise github. However below is the installation steps used.

Create a virtual environment and install tensorflow-gpu and keras (we run all the codes in a Anaconda Powershell Prompt)

    conda create -n 'IMC_Denoise' python=3.6
    conda activate IMC_Denoise (some systems recommend: source activate IMC_Denoise)
    conda install -c anaconda brotlipy
    pip install tensorflow==2.2.0 keras==2.3.1
    conda install -c anaconda cudnn=7.6.5 cudatoolkit=10.1.243
    pip install jupyter

In case above commends do not work, please try:

    conda create -n IMC_Denoise python=3.6 anaconda
    conda activate IMC_Denoise (some systems recommend: source activate IMC_Denoise)
    pip install tensorflow==2.2.0 keras==2.3.1
    conda install -c anaconda cudnn=7.6.5 cudatoolkit=10.1.243

Download the source code and install the package in your folder.

    git clone https://github.com/PENGLU-WashU/IMC_Denoise.git
    cd IMC_Denoise
    pip install -e .

Encountering NaN loss, In case the training losses are NaN, please install the following cuda libraries:

    conda install -c anaconda cudnn=8.1 cudatoolkit=11.2

Directory structure of raw IMC images

In order to generate a training set for DeepSNiF, the directory structure of raw IMC images must be arranged as follows. Note that the Channel_img names should contain the specific isotope names. For example, "141Pr" in "141Pr-CD38_Pr141.tiff" and "144Nd" in "144Nd-CD14_Nd144.tiff". We define the isotope names as the channel names of the IMC images.

|---Raw_image_directory

|---|---Tissue1_sub_directory

|---|---|---Channel1_img.tiff

|---|---|---Channel2_img.tiff

  ...

|---|---|---Channel_n_img.tiff

|---|---Tissue2_sub_directory

|---|---|---Channel1_img.tiff

|---|---|---Channel2_img.tiff

   ...

|---|---|---Channel_n_img.tiff
 
   ...

|---|---Tissue_m_sub_directory

|---|---|---Channel1_img.tiff

|---|---|---Channel2_img.tiff

   ...

|---|---|---Channel_n_img.tiff


Troubleshooting:

If you encounter any issues or errors while using IMC Denoise, consider the following troubleshooting steps:

Ensure that your system meets the minimum requirements for running IMC Denoise.

Refer to the online documentation for further guidance.

Support and Feedback:

For technical support or any inquiries related to IMC Denoise, contact Peng Lu - @penglu10 - penglu@wustl.edu

Project Link: https://github.com/PENGLU-WashU/IMC_Denoise

Lab Website: https://www.mir.wustl.edu/research/research-centers/precision-radiotheranostics-translation-center-prtc/labs/thorek-lab/
