-- 1
SET SERVEROUTPUT ON
BEGIN
dbms_output.put_line('HELLO WORLD!!!');
END;

--2
SET SERVEROUTPUT ON
DECLARE 
a INTEGER := &a;

BEGIN
IF (a mod 2 = 0)
THEN dbms_output.put_line(a|| ' is a even number');
ELSE dbms_output.put_line(a|| ' is a odd number');
END IF;
END;

--3
SET SERVEROUTPUT ON
DECLARE 
a INTEGER := 2;

BEGIN
dbms_output.put_line('Even Number between 1 to 50');
WHILE (a <= 50)
LOOP
dbms_output.put_line(a|| ' ');
a := a + 2;
END LOOP;
END;

-- 4
SET SERVEROUTPUT ON
DECLARE 
basic NUMBER(8,2);
hra NUMBER(8,2);
da NUMBER(8,2);
pf NUMBER(8,2);
net NUMBER(10,2);

BEGIN
basic := &basic;
da := 0.3*basic;
hra := 0.1*basic;
IF (basic < 8000)
THEN pf := 0.07*basic;
ELSE pf := 0.1*basic;
END IF;
net := basic + da + hra + pf;
dbms_output.put_line('NET SALARY = '||net);
END;

--5
SET SERVEROUTPUT ON
DECLARE 
a INTEGER := 1;

BEGIN
dbms_output.put_line('Natural Number between 1 to 5');
WHILE (a <= 5)
LOOP
dbms_output.put_line(a|| ' ');
a := a + 1;
END LOOP;
END;