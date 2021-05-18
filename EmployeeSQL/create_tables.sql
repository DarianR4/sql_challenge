CREATE TABLE employees (
    emp_no int  NOT NULL ,
    emp_title_id varchar(10)  NOT NULL ,
    birth_date date  NOT NULL ,
    first_name varchar(30)  NOT NULL ,
    last_name varchar(30)  NOT NULL ,
    sex varchar(4)   NOT NULL ,
    hire_date date  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE salaries (
    emp_no int  NOT NULL ,
    salary int  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE titles (
    title_id varchar(50)  NOT NULL ,
    title varchar(50) NOT NULL 
);

CREATE TABLE departments (
    dept_no varchar(50)  NOT NULL ,
    dept_name varchar(50)  NOT NULL 
);

CREATE TABLE dept_emp (
    emp_no varchar(50)  NOT NULL ,
    dept_no varchar(50)  NOT NULL 
);

CREATE TABLE dept_manager (
    dept_no varchar(50)  NOT NULL ,
    emp_no varchar(50)  NOT NULL 
);

CREATE INDEX idx_employees_sex
ON employees (sex);

