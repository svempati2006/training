

create table employee (
employee_id	number(10),
first_name	varchar2(25),
middle_initial	varchar2(1),
last_name	varchar2(50),
gender		char(1),
dob		date,
start_date	date,
branch_id	number(10),
project_id	number(10),
signup_date	date,
last_login_date	date,
login_count	number(10)
);

create table address (
address_id	number(10),
street_address	varchar2(50),
city		varchar2(25),
state		varchar2(2),
zip		number(5),
employee_id	number(10)
);

create table branch (
branch_id	number(10),
branch_name	varchar2(50),
division_id	number(10)
);


create table division (
division_id	number(10),
division_name	varchar2(100)
);


create table email (
email_id	number(10),
email_address	varchar2(50),
employee_id	number(10)
);

create table email_copy (
email_id	number(10),
email_address	varchar2(50),
employee_id	number(10)
);

create table message (
message_id	number(10),
message_text	varchar2(4000),
message_date	date,
employee_id	number(10)
);

create table website (
website_id	number(10),
website_url	varchar2(250),
website_desc	varchar2(4000),
blog_id		number(10),
hit_count	number(10),
employee_id	number(10)
);


create table blog (
blog_id		number(10),
blog_url	varchar2(250),
blog_desc	varchar2(4000),
hit_count	number(10)
);

create table project (
project_id	number(10),
project_name	varchar2(250),
project_desc	varchar2(4000),
project_mgr_id	number(10)
);


create table award (
award_id	number(10),
award_desc	varchar2(4000)
);

create table employee_award (
award_id	number(10),
date_awarded	date,
employee_id	number(10)
);

