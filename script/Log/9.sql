CREATE TRIGGER IBE$LOG_TABLES_BD FOR IBE$LOG_TABLES
ACTIVE BEFORE DELETE POSITION 0
AS
BEGIN
  DELETE FROM IBE$LOG_FIELDS WHERE LOG_TABLES_ID = OLD.ID;
  DELETE FROM IBE$LOG_BLOB_FIELDS WHERE LOG_TABLES_ID = OLD.ID;
  DELETE FROM IBE$LOG_KEYS WHERE LOG_TABLES_ID = OLD.ID;
END