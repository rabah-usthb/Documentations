create temporary tablespace tablespace_name tempfile
 'path/to/tempfile_1/temp_1.tmp' size size_value[k|m|g|t] 
  reuse autoextend on next size_value[k|m|g|t] maxsize size_value[k|m|g|t],

  .......................................................

 'path/to/tempfile_n/temp_n.tmp' size size_value[k|m|g|t] 
  reuse autoextend on next size_value[k|m|g|t] maxsize size_value[k|m|g|t];
