function g = mdm_gwf_read(gwf_fn)% function g = mdm_gwf_read(gwf_fn)%% Read a gradient waveformfid = fopen(gwf_fn);t = fgetl(fid); % number of elementsg = [];while (1)    if (feof(fid)), break; end    t = fgetl(fid);        if isempty(t)        warning('Empty field found when reading waveform file! Skipping line!');    else        g(:,end+1) = str2num(t);    end            endfclose(fid);