drop tablespace tablespace_name;   -- only delete the reference and keeps the data intact in the datafiles
drop tablespace tablespace_name including contents; -- delete the reference and clear content of the datafiles , but they are still in the disk
drop tablespace tablespace_name including contents and datafiles; -- delete the reference and its datafiles
