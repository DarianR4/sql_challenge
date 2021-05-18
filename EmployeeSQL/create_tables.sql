CREATE TABLE employees (
    emp_no int  NOT NULL ,
    emp_title_id int  NOT NULL ,
    birth_date date  NOT NULL ,
    first_name varchar(200)  NOT NULL ,
    last_name varchar(200)  NOT NULL ,
    sex string  NOT NULL ,
    hire_date date  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE salaries (
    emp_no int  NOT NULL ,
    salary money  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE titles (
    title_id int  NOT NULL ,
    title varchar(200)  NOT NULL 
);

CREATE TABLE departments (
    dept_no int  NOT NULL ,
    dept_name varchar(200)  NOT NULL 
);

CREATE TABLE dept_emp (
    emp_no int  NOT NULL ,
    dept_no int  NOT NULL 
);

CREATE TABLE debt_manager (
    dept_no int  NOT NULL ,
    emp_no int  NOT NULL 
);

CREATE INDEX idx_employees_sex
ON employees (sex);

