select distinct d.name as Department, e.name as Employee, e.salary as Salary
from employee e 
    inner join department d on e.departmentid = d.id
where (departmentId, salary) in (
    select departmentId,max(salary) 
    from employee
    group by departmentid )
