create database tm_project_db;

use tm_project_db;

select *from financial_loan_dataset;

select count(id) as total_loan_applications from financial_loan_dataset; #total loan applications

select sum(loan_amount) as total_funded_amount from financial_loan_dataset; #total funded amount

select sum(total_payment) as total_received_amount from financial_loan_dataset; #total payment amount

select avg(int_rate)*100 as int_rate from financial_loan_dataset; #avg int rates

select round(avg(int_rate),2)*100 as int_rate from financial_loan_dataset; #avg int rates %

select avg(dti)*100 as dti from financial_loan_dataset;# avg dti 

select round(avg(dti),2)*100 as dti from financial_loan_dataset; #avg dti %

select loan_status from financial_loan_dataset; 

select count(id) as Good_Loan_Applications from financial_loan_dataset
where loan_status='Fully Paid' or loan_status='Current'; #good loan applicatons

select count(id) as Bad_Loan_Applications from financial_loan_dataset
where loan_status='Charged off'; #bad Loan applications

select (count(case when loan_status='Fully Paid' or loan_status='Current' then id end)*100)/
count(id) as Good_Loan_Precentage from financial_loan_dataset; # good loan precentgae

select (count(case when loan_status='Charged off' or loan_status='Charged off' then id end)*100)/
count(id) as Bad_Loan_Precentage from financial_loan_dataset; #Bad loan precentage

select sum(loan_amount) as Good_loan_amount from financial_loan_dataset where loan_status='Fully Paid';

select sum(loan_amount) as Bad_loan_amount from financial_loan_dataset where loan_status='Charged off';

select sum(total_payment) as Bad_Loan_Amount_Received from financial_loan_dataset where loan_status='Charged Off';
