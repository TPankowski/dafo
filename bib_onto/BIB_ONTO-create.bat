md msg
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_ONTO" -i sql\BIB_ONTO-create.sql -o .\msg\BIB_ONTO-create.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_ONTO" -i sql\1_ontology-13tables.sql -o .\msg\1_ontology-13tables.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_ONTO" -i sql\2_TransLog.sql -o .\msg\2_TransLog.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_ONTO" -i sql\3_sp_5proc.sql -o .\msg\3_sp_5proc.txt

