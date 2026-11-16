
-- ============================================
-- WEEK 8 ASSIGNMENT: MYSQL DATABASE BACKUP AND RESTORE
-- ============================================

-- QUESTION 1: CREATING A COMPLETE DATABASE BACKUP
--
-- Command:
-- mysqldump -u root -p sales > sales_backup.sql
--
-- Explanation:
-- mysqldump is used to create a backup of the sales database.
-- -u root specifies the MySQL username.
-- -p prompts the user to enter their MySQL password.
-- sales specifies the database to back up.
-- > sales_backup.sql saves the backup into a file.
--
-- Importance:
-- Regular database backups protect important information
-- against accidental deletion, hardware failure, and data loss.
-- They also make it possible to restore the database when needed.


-- QUESTION 2: BACKING UP ALL DATABASES
--
-- Command:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql
--
-- Explanation:
-- mysqldump is used to back up every database on the MySQL server.
-- -u root specifies the MySQL username.
-- -p prompts for the database password.
-- --all-databases exports all databases on the server.
-- > all_databases_backup.sql saves the backup in a file.
--
-- Importance:
-- Backing up all databases before migration ensures that
-- important data and database structures are preserved.
-- It makes transferring databases to a new server easier
-- and helps prevent data loss during migration.


-- QUESTION 3: DATA-ONLY DATABASE BACKUP
--
-- Command:
-- mysqldump -u root -p --no-create-info sales > sales_data_backup.sql
--
-- Explanation:
-- --no-create-info exports only the data without CREATE TABLE
-- statements.
-- sales specifies the database to back up.
-- > sales_data_backup.sql saves the data backup.
--
-- Importance:
-- A data-only backup is useful when transferring records
-- into an existing database structure or restoring data
-- without recreating the tables.
