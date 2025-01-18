create tablespace tablespace_name datafile
 'path/to/datafile1/data_1.dbf' size size_value[k|m|g|t] 
  reuse autoextend on next size_value[k|m|g|t] maxsize size_value[k|m|g],

  .......................................................

 'path/to/datafile1/data_n.dbf' size size_value[k|m|g|t] 
  reuse autoextend on next size_value[k|m|g|t] maxsize size_value[k|m|g];
