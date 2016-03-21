select * from employee order by first_name

select count(*) from employee

select count(project_id) from employee

select min(dob) from employee

select max(dob) from employee where login_count>5

select min(hit_count) from blog

select max(hit_count) from blog

select min(first_name),max(first_name) from employee

select min(last_name),max(last_name) from employee

select gender,sum(login_count) from employee group by 
sum(login_count) // group function not allowed in group by clause

select gender,sum(login_count) from employee group by gender

select sum(login_count) from employee where employee_id in ('1','2','8','11','14','5','12','16')

select employee_id from website

select sum(e.login_count),sum(w.hit_count),sum(b.hit_count)
from employee e,website w,blog b
where e.employee_id=w.employee_id and
w.blog_id=b.blog_id

select  trunc(avg(login_count)) from employee

select  round(avg(login_count)) from employee

select avg(login_count) from employee where gender ='M'

select gender, avg(login_count) from employee  group by gender

select employee_id, avg(login_count) from employee group by employee_id

select gender, login_count from employee group by gender // not a group by expression

select gender,project_id,avg(login_count) from employee group by gender,project_id

select gender,avg(login_count) from employee where start_date > '01-jan-2000' group by gender

select gender,project_id,avg(login_count) from employee 
where project_id is null 
group by gender,project_id 
order by gender,project_id

select gender,project_id,avg(login_count) from employee 
where project_id is not null 
group by gender,project_id 
order by gender,project_id

select gender,project_id,avg(login_count),stddev(login_count) from employee 
where project_id is not null 
group by gender,project_id 
order by gender,project_id


select gender,project_id,avg(login_count),variance(login_count),stddev(login_count) from employee 
where project_id is not null 
group by gender,project_id 
order by gender,project_id

select p.project_name,round(avg(e.login_count)) "rounded_average",
sum(e.login_count) "rounded_sum"
from project p,employee e
where p.project_id = e.project_id
and  e.project_ID is not null
group by p.project_name 
having sum(e.login_count)> 2000
order by p.project_name

