

update msusertask set activeflag=1 where taskId='b4150947-e870-4241-bc75-4c93d498262b'


 insert into msbsf..UserTask([TaskID]
      ,[ProcessID]
      ,[CurrentActivityID]
      ,[FormID]
      ,[FormType]
      ,[FormUrl]
      ,[ProcessName]
      ,[CurrentActivityName]
      ,[SendToUser]
      ,[RequestUser]
      ,[CreateTime]
      ,[EncryFormUrl])

select 
[TaskID]
      ,[ProcessID]
      ,[CurrentActivityID]
      ,[FormID]
      ,[FormType]
      ,[FormUrl]
      ,[ProcessName]
      ,[CurrentActivityName]
      ,[SendToUser]
      ,[RequestUser]
      ,[CreateTime]
      ,[EncryFormUrl]
 from MSUserTask t where t.taskId='b4150947-e870-4241-bc75-4c93d498262b' and t.ActiveFlag=1
and not exists(
select * from msbsf..UserTask b where  b.processName='∫œÕ¨…Û≈˙'  and t.TaskID=b.TaskID)