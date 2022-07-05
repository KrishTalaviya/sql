create database StoredProcedure_358
use StoredProcedure_358
--1. Select All
--CityID, CityName, Pincode, CityRemarks, StateID, 
--StateName
Create Procedure Pr_MST_City_SelectAll
As
Begin
select City_Id,CityName,Pincode,MST_City.State_Id,CityRemarks,StateName
 from 
 MST_City inner join MST_State 
 on
  MST_City.State_Id=MST_State.State_Id
end
--execuetion 
exec Pr_MST_City_SelectAll

--2. Insert
Create procedure Pr_MST_City_InsertAll
	@CityId		int,
	@CityName	varchar(250),
	@Pincode	varchar(6),
	@StateId	int,
	@CityRemarks varchar(500)
as
Begin
Insert into Mst_City(
	City_Id,
	CityName,
	Pincode,
	State_Id,
	CityRemarks
)
values(
	@CityId,
	@CityName,
	@Pincode,
	@StateId,
	@CityRemarks
)
End
--exec
	Pr_MST_City_InsertAll 5,Godhra,360036,1,Bad
	select * from MST_City

--3. Update
Create procedure Pr_MST_City_Update
	@CityId		int,
	@CityName	varchar(250),
	@Pincode	varchar(6),
	@StateId	int,
	@CityRemarks varchar(500)
as
Begin
Update MST_City set
	
	CityName=@CityName,
	Pincode=@Pincode,
	State_Id=@StateId,
	CityRemarks=@CityRemarks
	where
	City_Id=@CityId

End
--exec
	Pr_MST_City_Update 5,jaipur,350002,2,good
	select * from MST_City
--4. Delete
Create procedure Pr_MST_City_delete
	@CityId		int
	
as
Begin
Delete from MST_City 
	where
	City_Id=@CityId

End
--exec
	Pr_MST_City_delete 5
	select * from MST_City

--5. SelectByPK
Create procedure Pr_MST_City_selectByPk
	@CityId		int
	
as
Begin
Select * from MST_City 
	where
	City_Id=@CityId

End
--exec
	Pr_MST_City_SelectByPk 2
	select * from MST_City
--6. SelectByPincodeStartWith360
Create procedure Pr_MST_City_StartWith360
	@Pincode varchar(6)
	
as
Begin
Select * from MST_City 
	
	
	where
	Pincode=@Pincode
	 and
	Pincode like '360%'

End
--exec
	Pr_MST_City_Startwith360 360001
	select * from MST_City

--7. SelectByCityNamePincode
Create procedure Pr_MST_City_SelectByCityNamePincode
	@Pincode varchar(6),
	@CityName varchar(250)
	
as
Begin
Select * from MST_City 
	
	
	where
	Pincode=@Pincode
	 and
	CityName=@CityName

End
--exec
	Pr_MST_City_SelectByCityNamePincode 360001,rajkot
	select * from MST_City

--8. SelectByCityRemarks
Create procedure Pr_MST_City_SelectByCityremarks
	
	@CityRemarks varchar(250)
	
as
Begin
Select * from MST_City 
	
	
	where
	
	CityRemarks=@CityRemarks

End
--exec
	Pr_MST_City_SelectByCityremarks good
	select * from MST_City
--9. SelectByStateID
Create procedure Pr_MST_City_SelectByStateId
	
	@StateId int
	
as
Begin
Select * from MST_City 
	
	
	where
	
	State_Id=@StateId

End
--exec
	Pr_MST_City_SelectByStateId 2
	select * from MST_City

--10. SelectByStateIDCityId
Create procedure Pr_MST_City_SelectByStateIdCityId
	
	@CityId int,
	@StateId int
	
as
Begin
Select * from MST_City 
	
	
	where
	
	City_Id=@CityId
	and
	State_Id=@Stateid

End
--exec
	Pr_MST_City_SelectByStateIdCityId 1,2
	select * from MST_City
