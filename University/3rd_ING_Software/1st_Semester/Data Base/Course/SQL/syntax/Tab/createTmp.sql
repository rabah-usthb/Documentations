create temporary tablespace tablespace_name datafile
 'path/to/datafile1/data_1.tmp' size size_value[k|m|g|t] 
  reuse autoextend on next size_value[k|m|g|t] maxsize size_value[k|m|g|t],

  .......................................................

 'path/to/datafile1/data_n.tmp' size size_value[k|m|g|t] 
  reuse autoextend on next size_value[k|m|g|t] maxsize size_value[k|m|g|t];
