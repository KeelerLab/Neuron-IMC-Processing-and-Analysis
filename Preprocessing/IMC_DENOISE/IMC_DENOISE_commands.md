IMC DENOISE COMMANDS - Simplified step by step commands to denoise an image using default parameters. For detailed instructions visit: https://github.com/PENGLU-WashU/IMC_Denoise

Saving files:

The .tiff File(s)  from MCDViewer with the selected channel(s) needs to be saved in 8-bit format. 

File Conversion:

We need to convert the .tiff image file(s) from MCDViewer to grayscale to be able to use them in the following IMC Denoise code. Download ImageJ for this.
Drag and drop the image to be converted. Select Image > Type > 8 bit. Save the image using File > save or save as. 

Open anaconda prompt and Activate IMC Denoise environment:

    conda activate 'IMC_Denoise'

Navigate to the IMC Denoise directory.

    cd IMC_Denoise


Generating training set and training a DeepSNiF model:

Generate training set of a specific marker channel for DeepSNiF:

    python scripts/Data_generation_DeepSNiF_script.py --channel_name '141Pr' --Raw_directory 'Your_raw_img_directory' --Save_directory 'your_generated_training_set_directory'  --n_neighbours '4' --n_iter '3' --slide_window_size '3' --ratio_thresh '0.8'
    
Train a DeepSNiF network:

    python scripts/Training_DeepSNiF_script.py --train_set_name 'training_set_141Pr.npz' --train_data_directory 'directory_of_your_training_set' --weights_name 'weights_141Pr-CD38.hdf5' --train_epoches '200' --train_batch_size '128' --val_set_percent '0.15' --lambda_HF '3e-6' --train_initial_lr '1e-3' --truncated_max_rate '0.99999' --network_size 'small'

Combine multiple generated training sets from different channels into a single training set.

    python scripts/Combine_multiple_datasets.py --load_directory 'the_folder_of_the_training_sets_to_be_combined' --save_directory 'the_folder_to_save_the_combined_training_set' --saved_training_set_name" 'the_name_of_the_combined_training_set'

Implement IMC_Denoise to enhance IMC images: 

Implement DIMR for a single IMC image if the SNR of the image is good.

    python scripts/Predict_DIMR_script.py --Raw_img_name 'your_raw_img_name(.tiff)' --Denoised_img_name 'your_denoised_img_name(.tiff)' --n_neighbours '4' --n_iter '3' --slide_window_size '3'

Implement DIMR for multiple IMC images if the SNR of the image is good.

    python scripts/Predict_DIMR_batch.py --channel_name '141Pr' --load_directory 'raw_image_folders' --save_directory 'DIMR_processed_image_folders' --n_neighbours '4' --n_iter '3' --slide_window_size '3'

Implement IMC_Denoise including DIMR and DeepSNiF for a single IMC image if the image is contaminated by hot pixels and suffers from low SNR. The trained weights will be loaded from the default directory other than choosing a customized folder.

    python scripts/Predict_IMC_Denoise_script.py --Raw_img_name 'your_raw_img_name(.tiff)' --Denoised_img_name 'your_denoised_img_name(.tiff)' --weights_name 'weights_141Pr-CD38.hdf5' --weights_save_directory 'your_directory_to_save_trained_weights' --n_neighbours '4' --n_iter '3' --slide_window_size '3'  --network_size 'small'

Implement IMC_Denoise including DIMR and DeepSNiF for multiple IMC imagse if the images are contaminated by hot pixels and suffers from low SNR. The trained weights will be loaded from the default directory other than choosing a customized folder.

    python scripts/Predict_IMC_Denoise_batch.py --channel_name '141Pr' --load_directory 'raw_image_folder' --save_directory 'IMC_Denoise_processed_image_folders' --weights_name 'weights_141Pr-CD38.hdf5' --weights_save_directory 'your_directory_to_save_trained_weights' --n_neighbours '4' --n_iter '3' --slide_window_size '3' --network_size 'small'

