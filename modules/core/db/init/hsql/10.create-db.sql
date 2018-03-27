-- begin SAMPLE_AIRPORT
create table SAMPLE_AIRPORT (
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
-- end SAMPLE_AIRPORT
-- begin SAMPLE_TERMINAL
create table SAMPLE_TERMINAL (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    AIRPORT_ID varchar(36) not null,
    NAME varchar(255),
    --
    primary key (ID)
)^
-- end SAMPLE_TERMINAL
-- begin SAMPLE_MEETING_POINT
create table SAMPLE_MEETING_POINT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TERMINAL_ID varchar(36) not null,
    NAME varchar(255),
    --
    primary key (ID)
)^
-- end SAMPLE_MEETING_POINT
-- begin SAMPLE_NOTE
create table SAMPLE_NOTE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    MEETING_POINT_ID varchar(36) not null,
    TEXT varchar(255),
    --
    primary key (ID)
)^
-- end SAMPLE_NOTE
-- begin SAMPLE_CUSTOMER
create table SAMPLE_CUSTOMER (
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
    ACTIVE boolean,
    GRADE integer,
    CREATOR_ID varchar(36),
    DETAILS_ID varchar(36),
    --
    primary key (ID)
)^
-- end SAMPLE_CUSTOMER
-- begin SAMPLE_CUSTOMER_ADDRESS
create table SAMPLE_CUSTOMER_ADDRESS (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CUSTOMER_ID varchar(36),
    LINE1 varchar(255),
    LINE2 varchar(255),
    ZIP varchar(20),
    --
    primary key (ID)
)^
-- end SAMPLE_CUSTOMER_ADDRESS
-- begin SAMPLE_CUSTOMER_DETAILS
create table SAMPLE_CUSTOMER_DETAILS (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    INFO longvarchar,
    --
    primary key (ID)
)^
-- end SAMPLE_CUSTOMER_DETAILS
-- begin SAMPLE_CLIENT
create table SAMPLE_CLIENT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    DTYPE varchar(31),
    --
    NAME varchar(255) not null,
    EMAIL varchar(100),
    --
    primary key (ID)
)^
-- end SAMPLE_CLIENT
-- begin SAMPLE_PERSON
create table SAMPLE_PERSON (
    ID varchar(36) not null,
    --
    FIRST_NAME varchar(100),
    LAST_NAME varchar(100),
    --
    primary key (ID)
)^
-- end SAMPLE_PERSON
-- begin SAMPLE_COMPANY
create table SAMPLE_COMPANY (
    ID varchar(36) not null,
    --
    INDUSTRY varchar(255),
    --
    primary key (ID)
)^
-- end SAMPLE_COMPANY
-- begin SAMPLE_ORDER
create table SAMPLE_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NUM varchar(20) not null,
    DATE_ date not null,
    AMOUNT decimal(19, 2),
    CLIENT_ID varchar(36),
    --
    primary key (ID)
)^
-- end SAMPLE_ORDER
