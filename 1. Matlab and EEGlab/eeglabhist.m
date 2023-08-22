% EEGLAB history file generated on the 22-Aug-2023
% ------------------------------------------------
[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_biosig('C:\Users\USER\Desktop\CNELab\2023_Summer_Workshop\1. Matlab and EEGlab\A01E.gdf');
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'setname','CNE','gui','off'); 
EEG = pop_eegfiltnew(EEG, 'locutoff',0.5,'hicutoff',50,'plotfreqz',1);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
EEG = pop_clean_rawdata(EEG, 'FlatlineCriterion',5,'ChannelCriterion',0.8,'LineNoiseCriterion',4,'Highpass','off','BurstCriterion',20,'WindowCriterion',0.25,'BurstRejection','on','Distance','Euclidian','WindowCriterionTolerances',[-Inf 7] );
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 
EEG = pop_runica(EEG, 'icatype', 'runica', 'extended',1,'interrupt','on');
[ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
pop_saveh( ALLCOM, 'eeglabhist.m', 'C:\Users\USER\Desktop\CNELab\2023_Summer_Workshop\1. Matlab and EEGlab\');
EEG = pop_epoch( EEG, {  }, [-1  2], 'newname', 'CNE epochs', 'epochinfo', 'yes');
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 3,'gui','off'); 
EEG = pop_rmbase( EEG, [-1000 0] ,[]);
figure; pop_erpimage(EEG,1, [1],[[]],'Fz',10,1,{},[],'' ,'yerplabel','\muV','erp','on','cbar','on','topo', { [1] EEG.chanlocs EEG.chaninfo } );
figure; pop_plottopo(EEG, [1:25] , 'CNE epochs', 0, 'ydir',1);
pop_saveh( ALLCOM, 'eeglabhist.m', 'C:\Users\USER\Desktop\CNELab\2023_Summer_Workshop\1. Matlab and EEGlab\');
eeglab redraw;
