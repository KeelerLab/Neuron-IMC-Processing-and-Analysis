## MCD Viewer Instructional Manual for Imaging Mass Cytometry Datasets

A comprehensive guide to navigating the MCD Viewer is provided within the installation package, specifically in the MCD Viewer v1.0.560.6 User Guide (PDF). However, the current manual offers only a concise overview made while performing analysis with IMC Datasets. 

Introduction 

MCD™ Viewer v1.0.560.6 is a windows only specialized software designed for analyzing and visualizing Imaging Mass Cytometry (IMC) datasets. MCD Viewer v1.0.560.6 is compatible with Imaging Mass Cytometry data files acquired with CyTOF Software v6.7 or later. This instructional manual will guide you through the steps required to effectively manage and interpret IMC data using the MCD Viewer application. MCD Viewer can now be run from non-administrative Windows® accounts.
NOTE: Administrative privileges are required to install the software.

System Requirements

MCD Viewer v1.0.560.6 is a 64-bit application intended for operation on the following
systems:
• Instrument workstations
Windows 7 Pro 64-bit computer systems (PN 104042 or 104043) with administrator
privileges
• Personal computers with the following minimum requirements:
Component Minimum Requirements
Operating system Windows 7 (with administrator
privileges)
Processor Dual-core
2.5 GHz base frequency
32 GB memory
4 MB cache
Installed memory (RAM) 8 GB

Installation and Setup

Download the latest version of MCD Viewer from the official website.  
Extract the zip file contents:
• Software installer: MCDViewer 1.0.560.6.exe
• MCD Viewer v1.0.560.6 User Guide (PDF)
• MCD Viewer v1.0.560.6 Release Notes.pdf
After the files are extracted, double-click MCDViewer 1.0.560.6.exe to start the installer
and follow the instructions to set up the software on your system.
Once installed, launch the MCD Viewer application.

Loading IMC Data 

Copy MCD files to a local drive before opening them with MCD Viewer v1.0.560.6.
Click on the "File" menu and select "Open" to load the IMC data file.
Browse your computer to locate the specific IMC dataset you wish to analyze.
Select the file and click "Open" to load the IMC data into the MCD Viewer.
Select a panorama and ROI.

Data Visualization and Exploration				

CHANNEL LIST contains all the channels in the selected ROI. CHANNEL SETTINGS correspond to individual channels. 
TABS: For ease of use, the workspace is divided into tabs. Click a tab to bring it forward.
Merged Image: Merge and display individual channel ion images .	
Thumbnails: View thumbnails of individual channel ion images. We can save the thumbnails only as a collage. 	
Slide: View the optical image of the slide (if acquired). 
Panorama: View the panorama image (if acquired). 	
Before Ablation Image: View the sample before ablation (if acquired).			
After Ablation Image: View the sample after ablation (if acquired).			
Total Ion Current: View an ion image representative of the sum of all ions across the full signal range for the selected channels.  
Check the thumbnails tab to visualize grayscale images of individual channels to help in your channel selection. Check the boxes of selected channels and click the color next to it to assign a color. 
Adjust the channel settings to optimize the appearance of each channel individually. The default Threshold Min (minimum signal threshold) setting is 0 and the default Threshold Max (maximum signal threshold) setting is 98% of the cumulative signal. 	
The Advanced Channel Settings include: Gamma correction and Color Min/Max. To optimize the tonal levels of the merged image, adjust Gamma. The default Gamma setting is 1. By default, Color Min is set to 5% to help visually discern low-intensity pixels from the image background. 


Selected Region Summary	

Select one or more regions within a merged image. Generate and export basic statistical data for selected areas within the merged image. Double-click the Description cell in the ID table to enter a description for the selected region. The following statistics are calculated by channel based on the raw data in the selected region.
Min: the minimum channel signal 						
Max: the maximum channel signal 						
Integral: the sum of all channel signal values within the selected region 		
Mean: the sum of all signal values (dual counts) divided by the total number of signal values 						
CV(%): percent coefficient of variation, calculated using population standard deviation 
To save the contents of the selected region summary to a tab-delimited text file, choose the Selected Region Summary tab, and then click Save. 
 						
Data Export and Sharing

Use the export option from the file menu; the display box appears. Under Page, click Multi or Single. Choose Multi to export data to a multipage TIFF file where an ion image for each channel is displayed on an individual page within the same TIFF. To preserve the raw data values for data processing purposes, do not select Rescale. 
Create and save merged ion images to 8- or 16-bit color TIFF files for presentation and publication purposes.
Export raw data to the following formats for additional processing and analysis with third-party software:
Single-page or multipage 16-bit grayscale OME-TIFF (.ome.tiff)
Single-page or multipage 32-bit grayscale OME-TIFF (.ome.tiff)

Troubleshooting and Support

Refer to the troubleshooting section of the user guide or visit the official support page for assistance in resolving any technical issues encountered during data analysis. For technical support visit techsupport.fluidigm.com. 

EMAIL: support.northamerica@fluidigm.com

Stay informed about software updates and new feature releases by regularly checking the official MCD Viewer website or related communication channels.
Windows 10 only: If MCD Viewer does not open, run the Windows Program
Compatibility Troubleshooter to update settings for compatibility with newer versions of
Windows 10. To run the Program Compatibility Troubleshooter, right-click the MCD Viewer desktop icon, click Troubleshoot compatibility, and then follow the instructions on the Screen.

Closing the Application

To close the MCD Viewer application, click on the "File" menu and select "Exit" in the application window.


