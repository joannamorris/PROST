   %% Clear memory and the command window
    clear;
    clc;
    
     %% Load eeglab
    [ALLEEG, EEG, CURRENTSET, ALLCOM] = eeglab;

 
    %% Initialize the ALLERP structure and CURRENTERP
    ALLERP     = buildERPstruct([]);
    CURRENTERP = 0;

 
    %% This defines the all variables including the 
    %  Path to the parent folder, which contains the data folders for all subjects

    home_path    = '/Volumes/GoogleDrive/My Drive/PROVIDENCE COLLEGE/MANUSCRIPTS/PROST/DATA/ERP files with added bins/erp_2022/';
    subject_list_file = [home_path 'mea_subjlist_202207.txt'];
    interval   = [500 800];
    baseline    = [-200 0];
    bins         = 65:80;
    channels     = 1:27;
    output_fname = [home_path 'prost_mea_500800_202207.txt']
    format       = 'long'


ALLERP = pop_geterpvalues(subject_list_file, ...
                          interval,bins,channels , ...
                          'Baseline', baseline, ...
                          'Binlabel', 'on', ...
                          'FileFormat',format, ...
                          'Filename', output_fname, ...
                          'Fracreplace', 'NaN', ...
                          'InterpFactor',1, ...
                          'Measure', 'meanbl', ...
                          'Mlabel', 'mean_amp',...
                          'Resolution',3 );





    fprintf('\n\n\n**** FINISHED ****\n\n\n');  