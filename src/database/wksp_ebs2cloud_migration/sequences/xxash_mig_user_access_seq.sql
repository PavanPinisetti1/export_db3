create sequence wksp_ebs2cloud_migration.xxash_mig_user_access_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */
cache 20 noorder nocycle nokeep noscale global;


-- sqlcl_snapshot {"hash":"af88b421738db647f7d8bac188127f59869bf7fc","type":"SEQUENCE","name":"XXASH_MIG_USER_ACCESS_SEQ","schemaName":"WKSP_EBS2CLOUD_MIGRATION","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_EBS2CLOUD_MIGRATION</SCHEMA>\n   <NAME>XXASH_MIG_USER_ACCESS_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}