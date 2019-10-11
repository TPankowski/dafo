# DAFO
DAFO: Data Access based on Faceted queries over Ontology

## Installing/Creating databases
The are two databases managed by MS SQL Server
* BIB_DB – a bibliographic database, storing data extracted mainly from DBLP under  ODC-BY 1.0 license, https://dblp.org/
To create BIB_DB upload the folder **bib_db**.
* BIB_ONTO – a database storing a bibliographic ontology and a mapping of the ontology into BIB_DB. To create BIB_ONTO upload the folder **bib_onto**.

In folders **bib_db** and **bib_onto**, respectively, are resources to create BIB_DB and BIB_ONTO in MS SQL Server and Windows 10.

### Installing BIB_DB

In **bib_db** are: 

* **sql** – a folder with Transact-SQL scripts creating a relational database in an instance of MS SQL Server. The database name and the name of SQL Server instances are provided in the script **BIB_DB-create.bat**. By default, the names are, respectively, BIB_DB and SATURN\SQL2017. 

* **BIB_DB-create.bat** – a script that invokes **sqlcmd**, 
a command-line utility for executiing Transact-SQL scripts.

Upload https://github.com/TPankowski/dafo/tree/master/bib_db into an arbitrary folder, say FOLDER. Copy  **BIB_DB-create.bat** to this folder. Create a subfolder named **sql** and copy all scripts from https://github.com/TPankowski/dafo/tree/master/bib_db/sql into it. Open the command prompt, executing **cmd.exe**, in the folder FOLDER. 

Name of the server instance and the database name can be changed arbitrarly as parameters to **sqlcmd** in the file **BIB_DB-create.bat**. Execute **BIB_DB-create.bat**.

```bash
> BIB_DB-create.bat
```

In result, the expected database, e.g., BIB_DB, in MS SQL Server instance, e.g. SATURN\SQL2017, will be created.
In **msg** subfolder are logged messages about execution of Transact-SQL scripts.

### Installing BIB_ONTO

Creation of BIB_ONTO proceeds anologously to creation of BIB_DB.
Now, we execute **BIB_ONTO-create.bat**.
```bash
> BIB_ONTO-create.bat
```

In result, the database, e.g., BIB_ONTO, in MS SQL Server instance, e.g. SATURN\SQL2017, will be created. The database stores both relational tables representing the ontological schema and the mapping of the ontology into the database BIB_DB.
In **msg** subfolder are  messages about execution of Transact-SQL scripts.

------------------------------------------------------------

## License
This code is copyrighted by [Poznań University of Technology](https://www.put.poznan.pl/en)
and released under the [MIT license](http://opensource.org/licenses/MIT).

