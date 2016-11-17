CREATE OR REPLACE PACKAGE hamming
IS
  FUNCTION distance (
    i_first                                       VARCHAR2
   ,i_second                                      VARCHAR2
  ) RETURN PLS_INTEGER ;

END hamming;
/

CREATE OR REPLACE PACKAGE BODY hamming
IS
  FUNCTION distance (  
    i_first                                       VARCHAR2
   ,i_second                                      VARCHAR2
  ) RETURN PLS_INTEGER 
  IS 
  
    res PLS_INTEGER := 0;
  
  BEGIN
  FOR i IN 1..nvl(LENGTH(i_first),0) LOOP
    IF nvl(substr(i_first, i, 1), 0) != nvl(substr(i_second, i, 1),0) THEN
      res := res + 1;
    END IF;
  END LOOP;
    RETURN res;
  
  END distance;
END hamming;
/

