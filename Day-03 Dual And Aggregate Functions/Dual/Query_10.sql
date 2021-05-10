/*Print the system date in the particular format ‘DD/MMIYYYY'.*/

SELECT DATE_FORMAT(SYSDATE(), '%d/%m/%Y') `DD/MM/YYYY`
FROM DUAL;
