-- fact_charges

CREATE TABLE "prod"."fact_charges"( "charge_id" INTEGER NULL,"plan_id" VARCHAR NULL,"due_date_id" INTEGER NULL,"value" DOUBLE PRECISION NULL,"type" VARCHAR NULL,PRIMARY KEY("charge_id") ) ENCODE AUTO;

--  fact_plans

CREATE TABLE "prod"."fact_plans"( "plan_id" VARCHAR NULL,"hire_date_id" INTEGER NULL,"monthly_contribution_value" DOUBLE PRECISION NULL,"sporadic_contribution_value" DOUBLE PRECISION NULL,"portability_value" DOUBLE PRECISION NULL,PRIMARY KEY("plan_id") ) DISTKEY("None") ENCODE AUTO;

-- dim_charges

CREATE TABLE "prod"."dim_charges"( "charge_id" INTEGER NULL,"payment_date_id" INTEGER NULL,"bank" VARCHAR NULL,"payment_method" VARCHAR NULL,PRIMARY KEY("charge_id") ) ENCODE AUTO;

-- dim_plans

CREATE TABLE "prod"."dim_plans"( "plan_id" VARCHAR NULL,"client_id" INTEGER NULL,"payment_date_id" INTEGER NULL,"due_date_id" INTEGER NULL,"partner_id" INTEGER NULL,"currency" VARCHAR NULL,"insurance_company" VARCHAR NULL,"status" VARCHAR NULL,"tax_regime" VARCHAR NULL,"investment_fund" VARCHAR NULL,"payment_type" VARCHAR NULL,PRIMARY KEY("plan_id") ) ENCODE AUTO;

-- dim_time

CREATE TABLE "prod"."dim_time"( "date_id" INTEGER NULL,"date" DATE NULL,"year" INTEGER NULL,"month" INTEGER NULL,"day" INTEGER NULL,"week" INTEGER NULL,"quarter" INTEGER NULL,PRIMARY KEY("date_id") ) ENCODE AUTO;

-- dim_location



-- dim_transaction

CREATE TABLE "prod"."dim_transaction"( "transaction_id" INTEGER NULL,"source" VARCHAR NULL,"type" VARCHAR NULL,"payment_type" VARCHAR NULL,"campaing" VARCHAR NULL,PRIMARY KEY("transaction_id") ) ENCODE AUTO;

-- fact_transactions

CREATE TABLE "prod"."fact_transactions"( "transaction_id" INTEGER NULL,"plan_id" INTEGER NULL,"client_id" INTEGER NULL,"transaction_date_id" INTEGER NULL,"partner_id" INTEGER NULL,"value" DOUBLE PRECISION NULL,"type" VARCHAR NULL,PRIMARY KEY("transaction_id") ) ENCODE AUTO;

-- fact_users

CREATE TABLE "prod"."fact_users"( "client_id" INTEGER NULL,"creation_date_id" INTEGER NULL,"campaing" VARCHAR NULL,"os" VARCHAR NULL,"source" VARCHAR NULL,PRIMARY KEY("client_id") ) ENCODE AUTO;

-- dim_clients

CREATE TABLE "prod"."dim_clients"( "client_id" INTEGER NULL,"partner_id" INTEGER NULL,"location_id" INTEGER NULL,"source" VARCHAR NULL,"campaing" VARCHAR NULL,"payment_type" VARCHAR NULL,"contribution_type" VARCHAR NULL,"revenue_status" VARCHAR NULL,"status" VARCHAR NULL,"open_payments" INTEGER NULL,PRIMARY KEY("client_id") ) ENCODE AUTO;

-- dim_partners

CREATE TABLE "prod"."dim_partners"( "partner_id" INTEGER NULL,"location_id" INTEGER NULL,"name" VARCHAR NULL,"campaing" VARCHAR NULL,"insurance_company" VARCHAR NULL,"team" VARCHAR NULL,"status" VARCHAR NULL,"company" VARCHAR NULL,PRIMARY KEY("partner_id") ) ENCODE AUTO;

-- fact_partners

CREATE TABLE "prod"."fact_partners"( "partner_id" INTEGER NULL,"creation_date_id" INTEGER NULL,PRIMARY KEY("partner_id") ) ENCODE AUTO;

-- fact_churn

CREATE TABLE "prod"."fact_churn"( "client_id" INTEGER NULL,"last_transaction_id" INTEGER NULL,"churn_date_id" INTEGER NULL,"value" DOUBLE PRECISION NULL,"mothly_contribution" DOUBLE PRECISION NULL,"insurance_company" VARCHAR NULL,"source" VARCHAR NULL,PRIMARY KEY("client_id") ) ENCODE AUTO;

-- fact_clients

CREATE TABLE "prod"."fact_clients"( "client_id" INTEGER NULL,"reporting_date_id" INTEGER NULL,"partner_id" INTEGER NULL,"aum" DOUBLE PRECISION NULL,"source" VARCHAR NULL,"status" VARCHAR NULL,PRIMARY KEY("client_id") ) ENCODE AUTO;

-- fact_new_clients

CREATE TABLE "prod"."fact_new_clients"( "client_id" INTEGER NULL,"first_payment_date_id" INTEGER NULL,"partner_id" INTEGER NULL,"source" VARCHAR NULL,PRIMARY KEY("client_id") ) ENCODE AUTO;