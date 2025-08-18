project init -name SAMPLE_N -schemas &&WORKSPACE

-- 2. Initialize Git repository
!git init --initial-branch=main
!git add .
!git commit -m "initializing repository with default project SAMPLE_N files"

-- 3. Ask for Git remote URL
ACCEPT REMOTE_URL CHAR PROMPT 'Enter Git remote URL: '
!git remote add origin &REMOTE_URL

-- 4. Create base-release branch
!git checkout -b base-release

-- 5. Export DB Objects + APEX Apps
project export

-- 6. Export table data as CSV
SET SQLFORMAT csv
SPOOL data_export.csv
SELECT table_name, 'DATA:' FROM user_tables; -- header for reference
-- Loop over all tables dynamically
DECLARE
  CURSOR c_tables IS
    SELECT table_name FROM user_tables;
BEGIN
  FOR r IN c_tables LOOP
    EXECUTE IMMEDIATE 'SELECT * FROM ' || r.table_name;
    SPOOL OFF
  END LOOP;
END;
/

-- 7. Commit everything (DDL + CSVs + APEX) into Git
!git add .
!git commit -m "Base release including table data"

-- 8. Push branches to remote
!git push -u origin main
!git push -u origin base-release

--exit
