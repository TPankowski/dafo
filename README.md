# DAFO: Data Access based on Faceted queries over Ontology

**DAFO** is an OBDA (Ontology Based Data Access) system with an interactive graphical faceted interface. Faceted queries formulated in DAFO are equivalent to concept expressions in description logic. Queries are formulated against an OWL 2 QL ontology.

DAFO system is available with an example of bibliogpaphic relationa database (BIB_DB), an bibliographic ontology (BIB_ONTO), and a mapping from the ontology into the database (encoded within BIB_ONTO).


#### Software and descriptions ####

* **bib_db** – scripts in Transact-SQL creating BIB_DB databases in MS SQL Server

* **bib_onto** – scripts in Transact-SQL creating BIB_ONTO databases in MS SQL Server

* **dafo-client** - scripts constituting the client-side software of, written in: HTML, JavaScript + jQuery

* **dafo-server** - files constituting the server-side software of DAFO, written in .NET Core 2.2

* **dafo-examples.html.pdf** - the .pdf version of an HTML script illustrating interaction with the DAFO system. The HTML version of this file is a component of **dafo-client**

* **dafo-presentation** - .pdf version of slides presenting the underlying theory of ontological database systems, as well as the implementation of DAFO

* **dafo-server-src.zip** - zipped version of the source version of **dafo-server**, written in C#, NET Core 2.2, in Visual Studio 2019

---------------------------------------------------------------------------------------------------------------------------------

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

------------------------------------------------------

## Installing DAFO server

DAFO-SERVER is written in NET Core 2.2 using Visual Studio 2019. Now available is the binary version wich operates on data and ontology databases. The binary version is the resul of **Publish** from Visual Studio 2019. Connection strings to BIB_DB and BIB_ONTO are contained in the configuration file: **appsettings.json**, and are of the form (you have to change it accordingly):

```bash
  "ConnectionStrings": {
    "DAFO_ONTOContext": "Server=SATURN\\SQL2017;Database=BIB_ONTO;Trusted_Connection=True;",
	"DAFO_DBContext"  : "Server=SATURN\\SQL2017;Database=BIB_DB;Trusted_Connection=True;"
  },
```
The files can be downloaded into arbitrary folder, say C:\dafo-server. The file **run.bat** contains the command running the server (from the operating system shell):

```bash
C:\dafo-server> dotnet dafoapi.dll
```

After successful initiation, the following messages are displayed  (possibly with different port number):  

```bush
Hosting environment: Production
Content root path: C:\dafo-server
Now listening on: http://localhost:5000
Now listening on: https://localhost:5001
Application started. Press Ctrl+C to shut down.
```

To test connections, you can write the following URL address in your web browser (tested in Chrom):

```brush
https://localhost:5001/api/treeview?type=classes
```

In response, a set of informations concerning classes in DAFO are displayed:

```brush
Conference,ACMConf,DEXAConf,KESConf,TPDLConf,USAConf,Integer,Paper,ACMPaper, ....
```
In the case of a problem with the connection, use the command
```brush
GET https://localhost:5001/api/treeview?type=classes
```
or 
```brush
GET http://localhost:5000/api/treeview?type=classes
```
or try to test connection with Postman (https://www.getpostman.com/).

------------------------------------------------------

## Installing DAFO client

Download the folder **dafo-client** into arbitrary folder in your computer, say C:\dafo-client. Next, in three HTML files: **dafo-api.html**, **nestedAnswer.html**, **rewriting.html** and in **server_url.js**, set the aproppriet port number (i.e., replace 5001 with the number returned by the **dotnet** command): 

```bush
serverURL='https://localhost:5001/api/treeview';
```

Open **dafo-api.html** by your web browser (tested by Chrom).

------------------------------------------------------------

## License
This code is copyrighted by [Poznań University of Technology](https://www.put.poznan.pl/en)
and released under the [MIT license](http://opensource.org/licenses/MIT).

