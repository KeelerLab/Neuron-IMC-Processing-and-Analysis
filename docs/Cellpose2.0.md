Cellpose 2.0 Guide 


Local Installation (< 2 minutes)
System Requirements:
●	Linux, Windows, and Mac OS are supported.
●	At least 8GB of RAM is required (16-32GB for larger images and 3D volumes).
●	Heavily tested on Windows 10 and Ubuntu 18.04.
●	For the graphical interface, Mac OS later than Yosemite is required.

Instructions:
●	Open an Anaconda prompt or command prompt with conda for Python 3 in the path.
●	If you have an older Cellpose environment, remove it with conda env remove -n cellpose before creating a new one.
●	Create a new environment with Python 3.8: conda create --name cellpose python=3.8 (you can use Python 3.9 or 3.10 as well).
●	Activate the new environment: conda activate cellpose.
●	To install the minimal version of Cellpose, run: python -m pip install cellpose.
●	To install Cellpose and the GUI, run: python -m pip install cellpose[gui]. If you're on a zsh server, use ' ' around the cellpose[gui] call: python -m pip install 'cellpose[gui]'.
●	To upgrade Cellpose, run: python -m pip install cellpose --upgrade.
●	If you want to run Jupyter notebooks in this environment, also run: python -m pip install notebook and python -m pip install matplotlib.
Optional: You can also try to install Cellpose and the GUI dependencies from your base environment using the command: python -m pip install cellpose[gui]. If you encounter issues, refer to the documentation or use the environment file included in the repository: conda env create -f environment.yml.

GPU Version (CUDA) on Windows or Linux:
●	Install the NVIDIA driver for your GPU and CUDA toolkit.
●	Remove the CPU version of torch: pip uninstall torch.
●	Install the GPU version of torch: conda install pytorch pytorch-cuda=11.6 -c pytorch -c nvidia (adjust CUDA version as needed).

Installation of GitHub Version:
●	Follow the above steps to install dependencies.
●	Run: pip install git+https://www.github.com/mouseland/cellpose.git.
●	For code editing ability, in the GitHub repository folder, run: pip install -e ...
●	To go back to the pip version of Cellpose, run: pip install cellpose.

Run Cellpose 1.0 Without Local Python Installation:
●	Try Cellpose on the website.
●	Run Cellpose in Google Colab with a GPU using provided notebooks.

Executable File:
●	Download an executable file for Windows 10 or Mac OS.
●	For Mac OS, make it executable and run through the terminal.
●	For Windows, click on the exe file to run the GUI.

Run Cellpose Locally:
●	Open the GUI from a command line terminal using: python -m cellpose.
●	Drag and drop images into the GUI to run Cellpose.

Pretrained Models:
●	Models will be downloaded automatically from the website when running a pretrained model in Cellpose.
●	If download issues, get models from Google Drive or Baidu (fetch code: pose).
Cellpose Instructional Guide

Getting Started: 
Ensure that you have successfully installed Cellpose following the provided installation guide. Activate the Cellpose environment before proceeding.

conda activate cellpose

Running Cellpose
Local 
GUI Usage
	Open a command line terminal.
	Activate the Cellpose environment.
	Run the GUI with the following command:

python -m cellpose

	Drag and drop images (e.g., *.tif, *.png, *.jpg, *.gif) into the GUI.
	Configure model and channel settings.
	Click the "Calibrate" button to estimate object size.
	Click "Run Segmentation" to process the images.
	Observe segmentation results and adjust settings as needed.
Command Line Interface (CLI)
To run Cellpose from the command line:

python -m cellpose --dir /path/to/images --chan 2 --save_png

Adjust parameters such as --dir for the image directory, --chan for the channel to segment, and other options as needed.
Pretrained Models
Cellpose will automatically download pre trained models when needed. If download issues arise, manually download models from Google Drive.
Troubleshooting
If you encounter issues during installation or usage, refer to the documentation for more details. Open an issue on the GitHub repository if problems persist.
References
●	Cellpose 1.0 paper: Stringer, C., Wang, T., Michaelos, M., & Pachitariu, M. (2021). Cellpose: a generalist algorithm for cellular segmentation. Nature methods, 18(1), 100-106.
●	Cellpose 2.0 paper: Pachitariu, M. & Stringer, C. (2022). Cellpose 2.0: how to train your own model. Nature methods, 1-8.

Feel free to explore additional features and functionalities as described in the official documentation.

