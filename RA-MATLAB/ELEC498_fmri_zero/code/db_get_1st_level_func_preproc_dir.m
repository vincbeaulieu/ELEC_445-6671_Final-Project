function preproc_dir = db_get_1st_level_func_preproc_dir(subject, cfg)
    treatment_dir = db_check_treatment_dir(cfg);
    preproc_dir = fullfile(treatment_dir, subject, ...
        'bold', 'preprocs');
    if ~exist(preproc_dir, 'dir')
        mkdir(preproc_dir);
    end
end