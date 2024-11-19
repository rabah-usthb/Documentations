constraint  contraint_name  attribute_i not null

constraint contraint_name attribute_i unique

constraint contraint_name primary key (attribute_i,...,attribut_n)
primary key (attribute_1 ,..., attribute_n) 

constraint contraint_name foreign key attribute_i references referenced_table(references_attribute)
foreign key (attribute_1 ,..., attribute_n) references referenced_table(attribute_1 ,..., attribute_n)

constraint contraint_name attribute_i default (value) 

constraint constraint_name check (Conditions)
attribute_i check (Conditions)
