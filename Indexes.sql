create index Employee_index on [dbo].[Employee2](addre_id,district_name,Emp_state,pincode);
select * from [dbo].[Employee2]
with(index(Employee_index)) 
where addre_id=124 and 
district_name='hydrabad'and 
Emp_state='telangana' and
pincode=241903