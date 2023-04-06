/*single row function 1-character

character 
1-cause_conversion function
2-character manipultion function

# Cause _conversion function
1-lower 2- upper 3-initcap

example:
*/
select lower(first_name || ' ' || last_name) as "Full Name" from employees;
select upper(first_name || ' ' || last_name)as "Full Name"  from employees;
select initcap(first_name || ' ' || last_name)as "Full Name"  from employees;

/*
character manipultion function
1-trim 2-length 3-substr 4-lpad 5-rpad 6-concat 7-replace 8-instr
*/

--concat example concat (column name ,second colum name)
select concat(first_name,last_name) as "full name" from employees;
--replace example ( column name,old,new)
select replace(first_name,'Steven' , 'Ali') from employees;

--lpad lpad(column name,left pad number, string)
select lpad(first_name,9,'*') from employees;
--rpad  example rpad(column name,right pad number, string)
select rpad(first_name,9,'*') from employees;

--length example length(column name) 
select length(first_name) from employees;
--instr example instr(column name,'letter' , (6)start with) use to find letter like find in python
select first_name || ' ' || last_name as "Full Name : ",instr(first_name || ' ' || last_name,' ') from employees;
select first_name || ' ' || last_name as "Full Name : ",instr(first_name || ' ' || last_name,' ',8) from employees;
--trim example trim ( 'letter' from column name) to delet the first string
select trim('S' from first_name) from employees;
--substr example ( column name , start with ,subnumber with)
select substr(first_name|| ' ' || last_name,4) from employees;
select substr(first_name|| ' ' || last_name,-1) from employees;
select substr(first_name|| ' ' || last_name,-1,1) from employees;

select substr(first_name|| ' ' || last_name,instr(first_name|| ' ' || last_name,' ')+1) as " last_name"  from employees; --to find last name


