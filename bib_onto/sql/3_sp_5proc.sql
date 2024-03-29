USE $(dbName)
GO
/****** Object:  StoredProcedure [dbo].[sp_Id_Add]    Script Date: 20.09.2019 09:10:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------
CREATE    function [dbo].[SubTypeAll]()
RETURNS TABLE
as
RETURN(
with SubCTE(UName,Level,Kind,Parent,MaxType)
as
	(select S.Name as UName, 0 as Level, S.Kind as Kind, S.Name as Parent, S.Name as MaxType
	 from Sigma S 
	 where S.Type='U' and S.Name<>'ALL' and S.Name<>'String'
     and S.Name NOT IN (select UName1 from Sub)
	 union all
	 select S1.UName1 as UName, Level+1 as Level, S.Kind as Kind, S1.UName2 as Parent, S2.MaxType as MaxType
	 from Sub S1, SubCTE S2, Sigma S
	 where S1.UName2=S2.UName and S1.UName1 = S.Name)
select distinct UName,Level,Kind,Parent,MaxType
from SubCTE
)
GO
------------------------------------------------------
create   procedure [dbo].[sp_mv_SubTypeAll]
as
drop table mv_SubTypeAll
select ROW_NUMBER() OVER(order by MaxType,Level,UName ASC) AS Id, * into mv_SubTypeAll from SubTypeAll()
alter table  mv_SubTypeAll
alter column Id int not null
alter table  mv_SubTypeAll
add primary key (Id)

GO
/****** Object:  StoredProcedure [dbo].[sp_PCMember_ontology]    Script Date: 20.09.2019 09:10:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------
create       procedure [dbo].[sp_mv_MaxSuperClasses]
as
--drop table #MaxSuperClasses
with MaxSC(UName,UNameMax,Level)
as
((select S.Name as UName,S.Name as UNameMax, 0 as Level
from Sigma S
where Kind='E' and Type = 'U'
union
select Sub.UName1 as UName,Sub.UName2 as UNameMax, 1 as Level
from Sub)
union all
select S.UName1, M.UNameMax, M.Level+1 as Level
from Sub S, MaxSC M
where S.UName2 = M.UName)
select distinct M1.UName,M1.UNameMax, M1.Level into #MaxSuperClasses
from MaxSC M1
where not exists (
  select * from  MaxSC M2 where
  M2.UName = M1.UNameMax and M2.UName <> M2.UNameMax)

drop table mv_MaxSuperClasses
select ROW_NUMBER() OVER(order by UNameMax,Level,UName ASC) AS Id, UName,UNameMax,Level into mv_MaxSuperClasses 
from #MaxSuperClasses
alter table  mv_MaxSuperClasses
alter column Id int not null
alter table  mv_MaxSuperClasses
add primary key (Id)
GO
/****** Object:  StoredProcedure [dbo].[sp_mv_SubTypeAll]    Script Date: 20.09.2019 09:10:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--===============================================================
exec sp_mv_SubTypeAll
go
exec sp_mv_MaxSuperClasses
go

