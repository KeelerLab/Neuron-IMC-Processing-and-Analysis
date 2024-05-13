Here is the detailed explanation of each script from the Keeler Pipeline. The adapted code is modified to suit the data. 

### 01_FileFromConcatTransform.R

This script serves as a vital component within a broader biological data analysis pipeline, likely applied in fields such as flow cytometry or similar techniques. It initiates by loading essential libraries, particularly relying on data.table for its functionalities. The script comprises a suite of functions meticulously crafted to handle various data files typically encountered in such analyses. Functions like read.metadata, read.panel, and others are tailored to efficiently parse metadata, panel information, transformed data, layout details, clusters, clustering replicates, and cluster stability metrics, enhancing the pipeline's versatility. Following this, the script sets input parameters and proceeds to read the Concat_Transformed file, a pivotal step in the data processing workflow. Finally, it efficiently extracts file numbers from the Concat_Transformed file and stores them in a new file named "filteredmatrix_file_numbers.csv," streamlining data management processes. This script encapsulates a fundamental stage within the larger analytical framework, contributing to the seamless processing and interpretation of complex biological datasets.

### 02_DotPlotCellAbundance.R

This script is a comprehensive tool for generating plots. It begins by loading essential libraries such as ggplot2, reshape2, and cowplot for data manipulation and visualization. Function definitions are provided to read and process input files, including metadata, clusters, and transformed data, ensuring seamless integration into the analysis pipeline. Input parameters are then configured to specify filenames and other settings necessary for the analysis. The script proceeds to read the required files and prepares the data for plotting, calculating metrics like the total number of cells per time point and organizing data for dot plots. Using ggplot2, it generates various types of plots, including bar plots and dot plots, visualizing cell abundance across different timepoints. Finally, the generated plots are saved as image files, facilitating their use in presentations or publications. Overall, this script offers a systematic approach to data visualization, facilitating the effective communication of research findings.

### 03_RunUMAP_V2.R

The "RunUMAP.R" script is designed to execute the Uniform Manifold Approximation and Projection (UMAP) algorithm within the Keeler pipeline. Beginning with the loading of essential libraries like umap and data.table, the script defines custom functions to read input files such as metadata, panel, and clustering data, ensuring compatibility with the pipeline's requirements. It then specifies input parameters for configuring the UMAP algorithm, including parameters for neighbor count, minimum distance, and number of components. After reading transformed data and extracting clustering variables, UMAP is executed using the provided settings, generating a low-dimensional representation of the input data. Finally, the script saves the output UMAP layout, knn indexes, and distances to separate CSV files for further analysis and visualization. Through informative print statements, the script offers updates on the execution progress, facilitating efficient UMAP application within the workflow.

### 04_knn_LeidenClustering.py

The provided Python script, annotated with explanations, conducts clustering analysis on high-dimensional data using the Leiden algorithm. It imports necessary packages such as pandas for data handling, leidenalg for clustering, sklearn.neighbors for generating k-nearest neighbor graphs, and igraph for graph representation. After specifying input variables like file paths and clustering parameters, the script reads the expression data and relevant panel information. It then constructs a k-nearest neighbor graph based on the selected clustering variables, leveraging sklearn.neighbors. The Leiden algorithm is applied to the graph to partition cells into clusters, with the resulting memberships stored in a CSV file. Overall, this script automates the process of clustering analysis, making it efficient and scalable for large datasets.

### 05_ExtractByMetadata_V2.R

The provided R script, annotated with explanations, is designed to extract a subset of cells from high-dimensional data based on specified cluster IDs. It first defines functions to read metadata, panel, concatenated transformed data, layout, and clusters from input files. Then, it sets input parameters such as the list of file IDs to keep, file paths, and output file names. After reading the necessary files, including concatenated transformed data, layout, and clusters, it identifies cells belonging to the specified cluster IDs. Finally, it writes the extracted cells, layout, and clusters to output files. This script streamlines the process of subsetting cells based on cluster IDs.

### 05_PlotByCluster_V2.R

The provided R script, annotated with explanations, is designed to visualize high-dimensional data clustered by a specified algorithm, likely UMAP. It begins by loading necessary packages and defining functions to read metadata, panel information, concatenated transformed data, layout, and cluster assignments from input files. After setting input parameters such as file paths and output file names, it reads the layout and cluster assignment files. Then, it prepares the data for plotting by combining layout coordinates with cluster assignments. Finally, it generates plots colored by clusters using ggplot2 and saves them as image files. This script streamlines the process of visualizing clustered data.

### 05_PlotByMarker_ImprovedColorScaling_V2.R

This R script is designed to generate scatter plots colored by the expression of markers. It begins by loading necessary packages and defining functions to read metadata, panel information, concatenated transformed data, and layout files. After setting input parameters such as file paths and output folder name, it reads the necessary files and prepares the data for plotting by combining marker expression data with layout information. It then creates individual scatter plots for each marker, with the points colored by marker expression level using a viridis color palette. The output plots are saved as PNG files in a timestamped subfolder within the specified output directory. This script streamlines the process of visualizing marker expression patterns in high-dimensional data.

### 05_ViolinPlots_V2.R

This R script is designed to generate violin plots colored by clusters for each marker expression level. It starts by loading necessary libraries and defining functions to read metadata, panel, concatenated transformed data, and layout files. After setting input parameters, it reads the required files and prepares the data for plotting by combining marker expression data with cluster information. Then, it creates a list of violin plots for each marker, where each plot is colored by cluster. Finally, it saves the violin plots as a single PNG file with annotations indicating the clusters.

### 09_WriteNumberOfCellsPerCluster_V2.R

This R script reads cluster information from a CSV file, calculates the count of cells per cluster, and saves the result to another CSV file. After reading the cluster information, it generates a table of cluster counts using the table() function. The resulting table is then converted to a matrix format. Finally, the matrix containing the cell counts per cluster is written to a CSV file using the fwrite() function from the data.table package. This process facilitates the analysis and visualization of cluster sizes, which is a crucial step in many clustering-based workflows, such as single-cell RNA sequencing data analysis.

### 10_PlotByClusters_Numbered.R

This R script loads necessary libraries, reads layout and cluster data files, prepares the data for plotting, and generates a scatter plot colored by cluster membership. The script saves the resulting plot as a PNG file. Optionally, it can annotate the plot with cluster numbers. 

### Calculate_Cluster_Contributions_V2.R

This R script calculates the number of cells from each input sample that were assigned to each cluster in a UMAP. It reads cluster and data files, prepares the data for analysis, and then iterates through each input file to calculate cluster contributions. The results are saved in separate CSV files for each input file. The script is designed for analyzing and quantifying cluster distributions and interpretation of cluster-specific characteristics.

### ExtractByClusters.R

This R script extracts a subset of cells from single-cell data based on specified cluster IDs. It reads input files including Concat_Transformed, UMAP layout, and cluster files. Then, it subsets the data based on the provided cluster IDs, extracts the corresponding cells, and writes the output files containing the subsetted expression data, UMAP layout, and cluster assignments. 

### ExtractByExpression.R

This R script loads data files such as Concat_Transformed, UMAP layout, and cluster assignments. It then identifies cells with marker expression values above a specified threshold, extracts those cells, and writes the output files containing the subsetted expression data, UMAP layout, and cluster assignments. This script enables the visualization and analysis of cells expressing certain markers above a defined threshold.

### GetMarkerGenes.R

This R script is designed to identify marker genes associated with each cluster in a dataset. It loads the expression matrix and cluster assignments, then applies statistical tests (e.g., t-test) to identify genes that are differentially expressed between clusters. The identified marker genes are then written to an output file, providing valuable information for cluster annotation.

### PlotByCluster_ClusterGrayedOut.R

This R script is designed to visualize data by plotting cells on a two-dimensional space (e.g., UMAP) colored by cluster assignments. It reads in the necessary files such as layout information, cluster assignments, metadata, and transformed concatenated data. Then, it prepares the data for plotting and generates a plot where each cell is represented by a point on the two-dimensional space, colored according to its assigned cluster. Additionally, the script allows for the customization of the plot, such as adjusting the point size and color palette. Finally, it saves the plot as an output file.

### UMAPColorByMetadata.R

This R script is designed to plot a single UMAP representation ofl data colored by a metadata variable. It begins by loading necessary libraries and defining functions for file input. Then, it sets input parameters such as file names and variable of interest. After reading metadata, concatenated transformed data, and UMAP layout, it prepares the data for plotting by merging them based on a common identifier. The script then generates a plot where each cell is represented by a point on the UMAP, colored according to the specified metadata variable. Finally, it saves the plot as a PNG file with customizable parameters such as size and resolution.
