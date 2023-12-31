{% macro RBAC() %}
CREATE ROLE IF NOT EXISTS "SF_COMMEX_DB_D_DIGITAL_SHELF_FULL"; 
CREATE ROLE IF NOT EXISTS "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
CREATE ROLE IF NOT EXISTS "SF_COMMEX_DB_D_DIGITAL_SHELF_RO"; 
CREATE ROLE IF NOT EXISTS "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_FULL"; 
CREATE ROLE IF NOT EXISTS "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
CREATE ROLE IF NOT EXISTS "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RO"; 
CREATE ROLE IF NOT EXISTS "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_FULL"; 
CREATE ROLE IF NOT EXISTS "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
CREATE ROLE IF NOT EXISTS "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RO"; 
CREATE ROLE IF NOT EXISTS "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_FULL"; 
CREATE ROLE IF NOT EXISTS "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
CREATE ROLE IF NOT EXISTS "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RO"; 
CREATE ROLE IF NOT EXISTS "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_FULL"; 
CREATE ROLE IF NOT EXISTS "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
CREATE ROLE IF NOT EXISTS "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RO"; 
CREATE ROLE IF NOT EXISTS "SF_PACVUE_KENVUE_D_KENVUE_FULL"; 
CREATE ROLE IF NOT EXISTS "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
CREATE ROLE IF NOT EXISTS "SF_PACVUE_KENVUE_D_KENVUE_RO"; 
CREATE ROLE IF NOT EXISTS "DEV_COMX_GLOBAL_APP1_WH_WU"; 
CREATE ROLE IF NOT EXISTS "DEV_COMX_GLOBAL_APP1_WH_WFULL"; 
GRANT USAGE ON DATABASE "COMMEX_DB" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_FULL"; 
GRANT ALL PRIVILEGES ON SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_FULL"; 
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_FULL"; 
GRANT ALL PRIVILEGES ON ALL VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_FULL"; 
GRANT USAGE ON DATABASE "COMMEX_DB" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT USAGE ON SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT USAGE ON ALL PROCEDURES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT USAGE ON FUTURE PROCEDURES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT USAGE ON ALL FUNCTIONS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT USAGE ON FUTURE FUNCTIONS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC"; 
GRANT USAGE ON DATABASE "COMMEX_DB" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RO"; 
GRANT USAGE ON SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RO"; 
GRANT SELECT ON ALL TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RO"; 
GRANT SELECT ON FUTURE TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RO"; 
GRANT SELECT ON ALL VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RO"; 
GRANT SELECT ON FUTURE VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RO"; 
GRANT USAGE ON DATABASE "COMMEX_DB" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_FULL"; 
GRANT ALL PRIVILEGES ON SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_FULL"; 
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_FULL"; 
GRANT ALL PRIVILEGES ON ALL VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_FULL"; 
GRANT USAGE ON DATABASE "COMMEX_DB" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT USAGE ON SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT USAGE ON ALL PROCEDURES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT USAGE ON FUTURE PROCEDURES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT USAGE ON ALL FUNCTIONS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT USAGE ON FUTURE FUNCTIONS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC"; 
GRANT USAGE ON DATABASE "COMMEX_DB" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RO"; 
GRANT USAGE ON SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RO"; 
GRANT SELECT ON ALL TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RO"; 
GRANT SELECT ON FUTURE TABLES IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RO"; 
GRANT SELECT ON ALL VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RO"; 
GRANT SELECT ON FUTURE VIEWS IN SCHEMA "COMMEX_DB"."DIGITAL_SHELF_DBT" TO ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RO"; 
GRANT USAGE ON DATABASE "DEV_COMX_GLOBAL" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_FULL"; 
GRANT ALL PRIVILEGES ON SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_FULL"; 
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_FULL"; 
GRANT ALL PRIVILEGES ON ALL VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_FULL"; 
GRANT USAGE ON DATABASE "DEV_COMX_GLOBAL" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT USAGE ON SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT USAGE ON ALL PROCEDURES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT USAGE ON FUTURE PROCEDURES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT USAGE ON ALL FUNCTIONS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT USAGE ON FUTURE FUNCTIONS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC"; 
GRANT USAGE ON DATABASE "DEV_COMX_GLOBAL" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RO"; 
GRANT USAGE ON SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RO"; 
GRANT SELECT ON ALL TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RO"; 
GRANT SELECT ON FUTURE TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RO"; 
GRANT SELECT ON ALL VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RO"; 
GRANT SELECT ON FUTURE VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_ACCESS" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RO"; 
GRANT USAGE ON DATABASE "DEV_COMX_GLOBAL" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_FULL"; 
GRANT ALL PRIVILEGES ON SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_FULL"; 
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_FULL"; 
GRANT ALL PRIVILEGES ON ALL VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_FULL"; 
GRANT USAGE ON DATABASE "DEV_COMX_GLOBAL" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT USAGE ON SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT USAGE ON ALL PROCEDURES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT USAGE ON FUTURE PROCEDURES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT USAGE ON ALL FUNCTIONS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT USAGE ON FUTURE FUNCTIONS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC"; 
GRANT USAGE ON DATABASE "DEV_COMX_GLOBAL" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RO"; 
GRANT USAGE ON SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RO"; 
GRANT SELECT ON ALL TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RO"; 
GRANT SELECT ON FUTURE TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RO"; 
GRANT SELECT ON ALL VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RO"; 
GRANT SELECT ON FUTURE VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_INTEGRATION" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RO"; 
GRANT USAGE ON DATABASE "DEV_COMX_GLOBAL" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_FULL"; 
GRANT ALL PRIVILEGES ON SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_FULL"; 
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_FULL"; 
GRANT ALL PRIVILEGES ON ALL VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_FULL"; 
GRANT USAGE ON DATABASE "DEV_COMX_GLOBAL" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT USAGE ON SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT USAGE ON ALL PROCEDURES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT USAGE ON FUTURE PROCEDURES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT USAGE ON ALL FUNCTIONS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT USAGE ON FUTURE FUNCTIONS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC"; 
GRANT USAGE ON DATABASE "DEV_COMX_GLOBAL" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RO"; 
GRANT USAGE ON SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RO"; 
GRANT SELECT ON ALL TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RO"; 
GRANT SELECT ON FUTURE TABLES IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RO"; 
GRANT SELECT ON ALL VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RO"; 
GRANT SELECT ON FUTURE VIEWS IN SCHEMA "DEV_COMX_GLOBAL"."DIGSHELF_RAW" TO ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RO"; 
GRANT USAGE ON DATABASE "PACVUE_KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_FULL"; 
GRANT ALL PRIVILEGES ON SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_FULL"; 
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE TABLES IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_FULL"; 
GRANT ALL PRIVILEGES ON ALL VIEWS IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_FULL"; 
GRANT ALL PRIVILEGES ON FUTURE VIEWS IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_FULL"; 
GRANT USAGE ON DATABASE "PACVUE_KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT USAGE ON SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL VIEWS IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE VIEWS IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT USAGE ON ALL PROCEDURES IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT USAGE ON FUTURE PROCEDURES IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT USAGE ON ALL FUNCTIONS IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT USAGE ON FUTURE FUNCTIONS IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC"; 
GRANT USAGE ON DATABASE "PACVUE_KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RO"; 
GRANT USAGE ON SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RO"; 
GRANT SELECT ON ALL TABLES IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RO"; 
GRANT SELECT ON FUTURE TABLES IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RO"; 
GRANT SELECT ON ALL VIEWS IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RO"; 
GRANT SELECT ON FUTURE VIEWS IN SCHEMA "PACVUE_KENVUE"."KENVUE" TO ROLE "SF_PACVUE_KENVUE_D_KENVUE_RO"; 
GRANT ALL PRIVILEGES ON WAREHOUSE "DEV_COMX_GLOBAL_APP1_WH" TO ROLE "DEV_COMX_GLOBAL_APP1_WH_WFULL"; 
GRANT USAGE, MONITOR ON WAREHOUSE "DEV_COMX_GLOBAL_APP1_WH" TO ROLE "DEV_COMX_GLOBAL_APP1_WH_WU"; 
GRANT ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_FULL" TO ROLE "SF_ADMIN_POC"; 
GRANT ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RWC" TO ROLE "DEVELOPERS_POC"; 
GRANT ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RO" TO ROLE "DATA_ANALYST_POC"; 
GRANT ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_RO" TO ROLE "SF_SUPPORT_POC"; 
GRANT ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_FULL" TO ROLE "SF_ADMIN_POC"; 
GRANT ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RWC" TO ROLE "DATA_LOADER_POC"; 
GRANT ROLE "SF_COMMEX_DB_D_DIGITAL_SHELF_DBT_RO" TO ROLE "SF_SUPPORT_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_FULL" TO ROLE "SF_ADMIN_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RWC" TO ROLE "DEVELOPERS_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RO" TO ROLE "DATA_ANALYST_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_ACCESS_RO" TO ROLE "SF_SUPPORT_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_FULL" TO ROLE "SF_ADMIN_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RWC" TO ROLE "DEVELOPERS_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RO" TO ROLE "DATA_ANALYST_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_INTEGRATION_RO" TO ROLE "SF_SUPPORT_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_FULL" TO ROLE "SF_ADMIN_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RWC" TO ROLE "DEVELOPERS_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RO" TO ROLE "DATA_ANALYST_POC"; 
GRANT ROLE "SF_DEV_COMX_GLOBAL_D_DIGSHELF_RAW_RO" TO ROLE "SF_SUPPORT_POC"; 
GRANT ROLE "SF_PACVUE_KENVUE_D_KENVUE_FULL" TO ROLE "SF_ADMIN_POC"; 
GRANT ROLE "SF_PACVUE_KENVUE_D_KENVUE_RWC" TO ROLE "DEVELOPERS_POC"; 
GRANT ROLE "SF_PACVUE_KENVUE_D_KENVUE_RO" TO ROLE "DATA_ANALYST_POC"; 
GRANT ROLE "SF_PACVUE_KENVUE_D_KENVUE_RO" TO ROLE "SF_SUPPORT_POC"; 
GRANT ROLE "DEV_COMX_GLOBAL_APP1_WH_WU" TO ROLE "DATA_ANALYST_POC"; 
GRANT ROLE "DEV_COMX_GLOBAL_APP1_WH_WU" TO ROLE "SF_SUPPORT_POC"; 
GRANT ROLE "DEV_COMX_GLOBAL_APP1_WH_WU" TO ROLE "DEVELOPERS_POC"; 
GRANT ROLE "DEV_COMX_GLOBAL_APP1_WH_WU" TO ROLE "DATA_LOADER_POC"; 
GRANT ROLE "DEV_COMX_GLOBAL_APP1_WH_WFULL" TO ROLE "SF_ADMIN_POC"; 
{% endmacro %}