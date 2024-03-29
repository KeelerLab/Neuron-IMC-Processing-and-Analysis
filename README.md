# Neuron-IMC-Processing-and-Analysis

This repository hosts a comprehensive pipeline incorporating adapted code from referenced GitHub repositories  for the processing of Imaging Mass Cytometry (IMC) images specifically tailored for neuronal analysis. Imaging Mass Cytometry is a powerful technique that combines cytometry principles with high-resolution imaging to provide detailed spatial information about molecular expression in tissues. We have done a concise step by step guide on how to set up and run this pipeline. We hereby acknowledge the contributions of all relevant works in our endeavor. As we embark on constructing a workflow tailored for the analysis of neurons via IMC, we are committed to openly sharing this resource with the broader community. We eagerly invite feedback and collaboration to refine and enhance our approach. 

### Key Features:

Preprocessing: Streamlined preprocessing steps to enhance image quality, correct artifacts, and optimize data using MCD Viewer and IMC Denoise for subsequent analysis.

Segmentation: Robust algorithms for accurate identification and segmentation of neuronal structures within IMC images using CellPose 2.0.

Feature Extraction: Extract relevant features from neuronal regions, enabling quantitative analysis of molecular expression patterns.

Data Integration: Integration of multi-channel IMC data to provide a holistic view of molecular profiles within neuronal populations.

Visualization: Comprehensive visualization tools for exploring and interpreting processed IMC data, facilitating insightful analysis.



![Workflow](https://github.com/KeelerLab/Neuron-IMC-Processing-and-Analysis/blob/92a082f9eaad2e1ecd7b2b0c06ba0691ba2d6435/WORKFLOW.png)

### Contents

Preprocessing:

   MCD Viewer [[Download](https://www.standardbio.com/products/software)]  [[Keeler lab Github](https://github.com/KeelerLab/Neuron-IMC-Processing-and-Analysis/blob/288c4f0afa9c82b1a5a9b698432c4678158c595d/Preprocessing/MCDViewer.md)] - To visualize, review and export data.
   
   IMC Denoise [[Article](https://www.nature.com/articles/s41467-023-37123-6)] [[IMC Denoise official Github](https://github.com/PENGLU-WashU/IMC_Denoise)] [[Keeler lab Github](https://github.com/KeelerLab/Neuron-IMC-Processing-and-Analysis/tree/288c4f0afa9c82b1a5a9b698432c4678158c595d/Preprocessing/IMC_DENOISE)] - For hot pixel and background noise removal.

Cell Segmentation:

  Cellpose2.0 [[Download](https://cellpose.readthedocs.io/en/latest/installation.html)] [[Keeler Lab Github](https://github.com/KeelerLab/Neuron-IMC-Processing-and-Analysis/blob/288c4f0afa9c82b1a5a9b698432c4678158c595d/Cell%20segmentation/Cellpose2.0.md)] - Deep learning based segmentation tool.

Analysis:

  Single-cell Mass cytometry analysis [[Article](https://www.nature.com/articles/s41593-022-01181-8)] [[Zunder lab Github](https://github.com/zunderlab/Keeler-et-al.-DRG-Development-Manuscript)] [[Keeler lab Github]()]  - Modified UMAP and Leiden Clustering for single-cell neural mass cytometry analysis.

### Usage:

Follow the step-by-step instructions in the documentation to set up and execute the pipeline.

Customize parameters and configurations to suit your specific IMC dataset and analysis goals.

### Documentation:

Refer to the detailed documentation provided in the 'docs' directory for in-depth explanations, usage guidelines, and examples.

### Contribution:

We welcome contributions from the community. Feel free to open issues, suggest improvements, or submit pull requests.

