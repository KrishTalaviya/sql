create trigger Insert_AgeUpdation
on Person
for Insert
As
Begin
   declare @age datetime
   declare @BirthDate datetime
   declare @pid int
   select @pid=PersonID from Inserted
   select @BirthDate=BirthDate from Inserted
   select @age=datediff(year,@BirthDate,getDate())
   update Person set age=cast(@age as int) where @pid=PersonID
   end
   Insert into Person values('patel',40000,'1999-02-24','Gondal',0,'1990-01-01')
   select * From PersonLog
   Select * from Person
   --trigger 4
   create trigger Delete_MsgPersonLog
   on PersonLog
   For Delete
   as 
   begin
    Print 'Record deleted succesfully from PersonLog'
	end
	--trigger3
	create trigger InsteadOf_Person
	on Person
	Instead OF Insert
	As
	Begin
	declare @Pid int
	 declare @PersonName varchar(100)
   
    Select @PersonName=PersonName from Inserted
	Select @Pid=PersonId from Inserted
	--insertion will be done on Person log but not on Person due to instead of statement
	Insert into PersonLog values(@Pid,@PersonName,'insert',getDate())
	end
	Insert into Person values('Raj',40000,'1999-02-24','Gondal',0,'1990-01-01')
	--trigger2.1 for insert
	create trigger Insert_PersonLog
   on Person
   For Insert
   as 
   begin
   declare @Pid int
   declare @PersonName varchar(100)
   Select @Pid=PersonId from Inserted
    Select @PersonName=PersonName from Inserted
	Insert into PersonLog values(@Pid,@PersonName,'insert',getDate())
    
	end
	select * from Person
	--trigger2.1 update
	create trigger Update_PersonLog
   on Person
   For update
   as 
   begin
   declare @Pid int
   declare @PersonName varchar(100)
   Select @Pid=PersonId from Inserted
    Select @PersonName=PersonName from Inserted
	Insert into PersonLog values(@Pid,@PersonName,'insert',getDate())
    
	end
	---extra trigger


