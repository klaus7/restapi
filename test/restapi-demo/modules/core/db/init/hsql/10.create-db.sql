-- begin REF_CURRENCY
create table REF_CURRENCY (
    CODE varchar(255) not null,
    UUID varchar(36),
    VERSION integer,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    --
    primary key (CODE)
)^
-- end REF_CURRENCY
-- begin REF_SELLER
create table REF_SELLER (
    ID bigint not null,
    UUID varchar(36),
    VERSION integer,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    CONTRACT_START_DATE timestamp,
    CONTRACT_END_DATE timestamp,
    --
    primary key (ID)
)^
-- end REF_SELLER
-- begin REF_CAR_GARAGE_TOKEN
create table REF_CAR_GARAGE_TOKEN (
    ID varchar(36) not null,
    --
    TITLE varchar(50) not null,
    TOKEN varchar(20) not null,
    DESCRIPTION varchar(200),
    LAST_USAGE timestamp,
    --
    primary key (ID)
)^
-- end REF_CAR_GARAGE_TOKEN
-- begin REF_ALLOCATED_CAR
create table REF_ALLOCATED_CAR (
    ID varchar(36) not null,
    --
    VIN varchar(255),
    MODEL_ID varchar(36),
    COLOUR_NAME varchar(255),
    DRIVER_NAME varchar(255),
    ALLOC_TS timestamp,
    --
    primary key (ID)
)^
-- end REF_ALLOCATED_CAR
-- begin REF_CAR_TOKEN
create table REF_CAR_TOKEN (
    ID varchar(36) not null,
    --
    TOKEN varchar(255),
    REPAIR_ID varchar(36),
    GARAGE_TOKEN_ID varchar(36),
    --
    primary key (ID)
)^
-- end REF_CAR_TOKEN
-- begin REF_DRIVER_ALLOC
create table REF_DRIVER_ALLOC (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    --
    DRIVER_ID varchar(36),
    CAR_ID varchar(36),
    --
    primary key (ID)
)^
-- end REF_DRIVER_ALLOC
-- begin REF_CAR_DOCUMENTATION
create table REF_CAR_DOCUMENTATION (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TITLE varchar(255),
    --
    primary key (ID)
)^
-- end REF_CAR_DOCUMENTATION
-- begin REF_MODEL
create table REF_MODEL (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    DTYPE varchar(100),
    --
    NAME varchar(255),
    MANUFACTURER varchar(255),
    NUMBER_OF_SEATS integer,
    --
    -- from ref$ExtModel
    LAUNCH_YEAR integer,
    --
    primary key (ID)
)^
-- end REF_MODEL
-- begin REF_DRIVER_GROUP
create table REF_DRIVER_GROUP (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    IN_USE boolean,
    --
    primary key (ID)
)^
-- end REF_DRIVER_GROUP
-- begin REF_COLOUR
create table REF_COLOUR (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    DESCRIPTION varchar(255),
    --
    primary key (ID)
)^
-- end REF_COLOUR
-- begin REF_PLACE
create table REF_PLACE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    --
    primary key (ID)
)^
-- end REF_PLACE
-- begin DEBT_CASE
create table DEBT_CASE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TEST1 varchar(50),
    TEST2 varchar(50),
    TEST3 varchar(50),
    TEST4 varchar(50),
    TEST5 varchar(50),
    TEST6 varchar(50),
    TEST7 varchar(50),
    TEST8 varchar(50),
    TEST9 varchar(50),
    TEST10 varchar(50),
    DEBTOR_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end DEBT_CASE
-- begin REF_CAR_DETAILS_ITEM
create table REF_CAR_DETAILS_ITEM (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CAR_DETAILS_ID varchar(36),
    INFO varchar(255),
    --
    primary key (ID)
)^
-- end REF_CAR_DETAILS_ITEM
-- begin REF_DRIVER
create table REF_DRIVER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    DTYPE varchar(100),
    --
    COUNTRY varchar(255),
    STATE varchar(255),
    CITY varchar(255),
    STREET varchar(255),
    ZIP varchar(255),
    HOUSENUMBER varchar(255),
    FLATNUMBER varchar(255),
    LATITUDE double precision,
    LONGITUDE double precision,
    ADDRESS_SINCE date,
    PLACE_ID varchar(36),
    --
    NAME varchar(255),
    CALLSIGN_ID varchar(36),
    DRIVER_GROUP_ID varchar(36),
    STATUS integer,
    PLATFORM_ENTITY_ID varchar(36),
    --
    -- from ref$ExtDriver
    INFO varchar(50),
    NOTES longvarchar,
    --
    primary key (ID)
)^
-- end REF_DRIVER
-- begin REF_INSURANCE_CASE
create table REF_INSURANCE_CASE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CAR_ID varchar(36),
    DESCRIPTION varchar(255),
    --
    primary key (ID)
)^
-- end REF_INSURANCE_CASE
-- begin REF_SAMPLE_PLATFORM_ENTITY
create table REF_SAMPLE_PLATFORM_ENTITY (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    --
    primary key (ID)
)^
-- end REF_SAMPLE_PLATFORM_ENTITY
-- begin DEBT_DEBTOR
create table DEBT_DEBTOR (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TITLE varchar(50) not null,
    --
    primary key (ID)
)^
-- end DEBT_DEBTOR
-- begin REF_REPAIR
create table REF_REPAIR (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CAR_ID varchar(36),
    INSURANCE_CASE_ID varchar(36),
    DESCRIPTION varchar(255),
    REPAIR_DATE date,
    DB1_CUSTOMER_ID bigint,
    --
    primary key (ID)
)^
-- end REF_REPAIR
-- begin REF_PRICING_REGION
create table REF_PRICING_REGION (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(50) not null,
    PARENT_ID varchar(36),
    --
    primary key (ID)
)^
-- end REF_PRICING_REGION
-- begin REF_PLANT
create table REF_PLANT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    DTYPE varchar(100),
    --
    NAME varchar(255),
    DOC_ID varchar(36),
    --
    -- from ref$CustomExtPlant
    ADDITIONAL_INFO varchar(255),
    --
    -- from ref$ExtPlant
    NUMBER_IN_1C varchar(255),
    --
    primary key (ID)
)^
-- end REF_PLANT
-- begin REF_DRIVER_LICENSE
create table REF_DRIVER_LICENSE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    DRIVER_ID varchar(36) not null,
    CAR_ID varchar(36) not null,
    PRIORITY integer not null,
    --
    primary key (ID)
)^
-- end REF_DRIVER_LICENSE
-- begin REF_DRIVER_CALLSIGN
create table REF_DRIVER_CALLSIGN (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CALLSIGN varchar(50),
    --
    primary key (ID)
)^
-- end REF_DRIVER_CALLSIGN
-- begin REF_CAR_DETAILS
create table REF_CAR_DETAILS (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CAR_ID varchar(36),
    DETAILS varchar(255),
    --
    primary key (ID)
)^
-- end REF_CAR_DETAILS
-- begin REF_CARD
create table REF_CARD (
    ID varchar(36) not null,
    CATEGORY_ID varchar(36),
    VERSION integer,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    CARD_TYPE integer,
    --
    STATE varchar(255),
    DESCRIPTION varchar(1000),
    CREATOR_ID varchar(36),
    SUBSTITUTED_CREATOR_ID varchar(36),
    PARENT_CARD_ID varchar(36),
    HAS_ATTACHMENTS boolean,
    HAS_ATTRIBUTES boolean,
    PARENT_CARD_ACCESS boolean,
    --
    primary key (ID)
)^
-- end REF_CARD
-- begin REF_CAR
create table REF_CAR (
    ID varchar(36) not null,
    CATEGORY_ID varchar(36),
    VERSION integer,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    VIN varchar(255),
    COLOUR_ID varchar(36),
    MODEL_ID varchar(36),
    CAR_DOCUMENTATION_ID varchar(36),
    TOKEN_ID varchar(36),
    SELLER_ID bigint,
    CURRENCY_CODE varchar(255),
    --
    primary key (ID)
)^
-- end REF_CAR
-- begin REF_IK_ORDER_LINE_TAG
create table REF_IK_ORDER_LINE_TAG (
    ID bigint identity,
    ORDER_LINE_ID bigint,
    NAME varchar(50)
)^
-- end REF_IK_ORDER_LINE_TAG
-- begin REF_IK_ORDER_LINE
create table REF_IK_ORDER_LINE (
    ID bigint identity,
    ORDER_ID bigint,
    PRODUCT varchar(100)
)^
-- end REF_IK_ORDER_LINE
-- begin REF_IK_CUSTOMER
create table REF_IK_CUSTOMER (
    ID bigint identity,
    NAME varchar(255)
)^
-- end REF_IK_CUSTOMER
-- begin REF_IK_ORDER
create table REF_IK_ORDER (
    ID bigint identity,
    ORDER_DATE timestamp,
    CUSTOMER_ID bigint
)^
-- end REF_IK_ORDER
-- begin REF_DOC
create table REF_DOC (
    CARD_ID varchar(36) not null,
    --
    DOC_NUMBER varchar(50),
    AMOUNT decimal(19, 2),
    --
    primary key (CARD_ID)
)^
-- end REF_DOC
-- begin REF_PLANT_MODEL_LINK
create table REF_PLANT_MODEL_LINK (
    PLANT_ID varchar(36) not null,
    MODEL_ID varchar(36) not null,
    primary key (PLANT_ID, MODEL_ID)
)^
-- end REF_PLANT_MODEL_LINK
create table REF_COMPOSITE_KEY (
    TENANT integer not null,
    ENTITY_ID bigint not null,
    NAME varchar(50),
    EMAIL varchar(100),
    primary key (TENANT, ENTITY_ID)
)^
