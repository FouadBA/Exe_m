CREATE OR REPLACE PACKAGE gigasecond
IS
  FUNCTION since (
    brt             DATE
  ) RETURN date;

END gigasecond;

CREATE OR REPLACE PACKAGE BODY gigasecond
IS
  FUNCTION since (
    brt             DATE
  ) RETURN date
  IS 
  BEGIN
    return brt + power(10,9) / (24 * 60 * 60);
  END since;
END gigasecond;