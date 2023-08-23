% EEGLAB history file generated on the 23-Aug-2023
% ------------------------------------------------
[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_loadset('filename','eeglab_data.set','filepath','C:\\Users\\USER\\Documents\\MATLAB\\eeglab\\sample_data\\');
[ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
EEG = pop_epoch( EEG, {  'square'  }, [-1  2], 'newname', 'Continuous EEG Data epochs', 'epochinfo', 'yes');
EEG = pop_rmbase( EEG, [],[]);
EEG = pop_runica(EEG, 'icatype', 'runica', 'extended',1,'interrupt','on');
[ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = pop_iclabel(EEG, 'default');
[ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = pop_subcomp( EEG, [1   2   3   5   7   8  10  11  12  14  17  18  19  22  24  27  28  29  30  31  32], 0);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
figure; pop_newtimef( EEG, 1, 1, [0  238305], [3         0.8] , 'topovec', 1, 'elocs', EEG.chanlocs, 'chaninfo', EEG.chaninfo, 'caption', 'FPz', 'baseline',[0], 'plotphase', 'off', 'padratio', 1);
eeglab redraw;
