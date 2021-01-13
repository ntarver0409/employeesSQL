DROP TABLE titles CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE departments CASCADE;
DROP TABLE salaries CASCADE;
DROP TABLE dept_emps CASCADE;
DROP TABLE dept_managers;


CREATE TABLE "titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_num" integer   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_num"
     )
);

CREATE TABLE "departments" (
    "dept_num" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_num"
     )
);

CREATE TABLE "salaries" (
    "emp_num" integer   NOT NULL,
    "salary" integer   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_num","salary"
     )
);

CREATE TABLE "dept_emps" (
    "emp_num" integer   NOT NULL,
    "dept_num" varchar   NOT NULL,
    CONSTRAINT "pk_dept_emps" PRIMARY KEY (
        "emp_num","dept_num"
     )
);

CREATE TABLE "dept_managers" (
    "dept_num" varchar   NOT NULL,
    "emp_num" integer   NOT NULL,
    CONSTRAINT "pk_dept_managers" PRIMARY KEY (
        "dept_num","emp_num"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_num" FOREIGN KEY("emp_num")
REFERENCES "employees" ("emp_num");

ALTER TABLE "dept_emps" ADD CONSTRAINT "fk_dept_emps_emp_num" FOREIGN KEY("emp_num")
REFERENCES "employees" ("emp_num");

ALTER TABLE "dept_emps" ADD CONSTRAINT "fk_dept_emps_dept_num" FOREIGN KEY("dept_num")
REFERENCES "departments" ("dept_num");

ALTER TABLE "dept_managers" ADD CONSTRAINT "fk_dept_managers_dept_num" FOREIGN KEY("dept_num")
REFERENCES "departments" ("dept_num");

ALTER TABLE "dept_managers" ADD CONSTRAINT "fk_dept_managers_emp_num" FOREIGN KEY("emp_num")
REFERENCES "employees" ("emp_num");
