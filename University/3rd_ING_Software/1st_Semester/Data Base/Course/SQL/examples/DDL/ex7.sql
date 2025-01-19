alter table ranklab1 drop constraint chk_rankLab1_namerank;
alter table ranklab1 add constraint chk_rankLab1_namerank 
check (namerank in ('TS','ING SI','ING SYS','Main ING') );
