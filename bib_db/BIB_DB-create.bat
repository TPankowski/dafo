md msg
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_DB" -i sql\BIB_DB-create.sql -o .\msg\BIB_DB-create.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_DB" -i sql\1_Person.sql -o .\msg\1_Person.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_DB" -i sql\2_Conference.sql -o .\msg\2_Conference.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_DB" -i sql\3_Proceedings.sql -o .\msg\3_Proceedings.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_DB" -i sql\4_Paper.sql -o .\msg\4_Paper.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_DB" -i sql\5_Affiliation.sql -o .\msg\5_Affiliation.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_DB" -i sql\6_AuthorPaper.sql -o .\msg\6_AuthorPaper.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_DB" -i sql\7_PCMember.sql -o .\msg\7_PCMember.txt
sqlcmd -S SATURN\SQL2017 -v dbName ="BIB_DB" -i sql\8_mv.sql -o .\msg\8_mv.txt
