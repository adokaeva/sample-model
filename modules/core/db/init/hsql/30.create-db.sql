insert into SAMPLE_AIRPORT (ID, VERSION, CREATE_TS, NAME)
values ('6f2e2f9e-9f19-df38-0aac-122e2b6ba466', 1, current_timestamp, 'Heathrow');

insert into SAMPLE_TERMINAL (ID, VERSION, CREATE_TS, AIRPORT_ID, NAME)
values ('9fef9f0b-af4d-2b58-c37a-1aa4e9574879', 1, current_timestamp, '6f2e2f9e-9f19-df38-0aac-122e2b6ba466', 'Terminal 2');

insert into SAMPLE_MEETING_POINT (ID, VERSION, CREATE_TS, TERMINAL_ID, NAME)
values ('9fefe238-614f-0914-b31a-da9628297788', 1, current_timestamp, '9fef9f0b-af4d-2b58-c37a-1aa4e9574879', 't2 point 1');

insert into SAMPLE_TERMINAL (ID, VERSION, CREATE_TS, AIRPORT_ID, NAME)
values ('b55eecf2-e434-5850-8743-c8b3b33786b4', 1, current_timestamp, '6f2e2f9e-9f19-df38-0aac-122e2b6ba466', 'Terminal 3');

insert into SAMPLE_MEETING_POINT (ID, VERSION, CREATE_TS, TERMINAL_ID, NAME)
values ('209cab00-5cc4-087c-69b3-c303c737be64', 1, current_timestamp, 'b55eecf2-e434-5850-8743-c8b3b33786b4', 't3 point 1');

insert into SAMPLE_MEETING_POINT (ID, VERSION, CREATE_TS, TERMINAL_ID, NAME)
values ('38a41187-fb98-f2cf-34b1-c9156efd4d1a', 1, current_timestamp, 'b55eecf2-e434-5850-8743-c8b3b33786b4', 't3 point 2');

insert into SAMPLE_TERMINAL (ID, VERSION, CREATE_TS, AIRPORT_ID, NAME)
values ('3b773d44-3eff-6723-fe31-7386d6461394', 1, current_timestamp, '6f2e2f9e-9f19-df38-0aac-122e2b6ba466', 'Terminal 4');

--

insert into SAMPLE_AIRPORT (ID, VERSION, CREATE_TS, NAME)
values ('eade7c5a-233e-02df-0ab0-d2a2cf0b9a19', 1, current_timestamp, 'Sheremetyevo');

insert into SAMPLE_TERMINAL (ID, VERSION, CREATE_TS, AIRPORT_ID, NAME)
values ('341b3458-1c73-10b0-2de0-f716df03cbfb', 1, current_timestamp, 'eade7c5a-233e-02df-0ab0-d2a2cf0b9a19', 'Terminal A');

insert into SAMPLE_MEETING_POINT (ID, VERSION, CREATE_TS, TERMINAL_ID, NAME)
values ('c4285d32-ccee-ba17-5e1d-f9e664b3ed68', 1, current_timestamp, '341b3458-1c73-10b0-2de0-f716df03cbfb', 'ta point1');

insert into SAMPLE_MEETING_POINT (ID, VERSION, CREATE_TS, TERMINAL_ID, NAME)
values ('c04b4fd0-60ef-150f-d09a-cf3c3dbabe2c', 1, current_timestamp, '341b3458-1c73-10b0-2de0-f716df03cbfb', 'ta point2');

insert into SAMPLE_TERMINAL (ID, VERSION, CREATE_TS, AIRPORT_ID, NAME)
values ('4b1ac788-dfc1-cc20-82c1-02e1141160d5', 1, current_timestamp, 'eade7c5a-233e-02df-0ab0-d2a2cf0b9a19', 'Terminal D');

insert into SAMPLE_MEETING_POINT (ID, VERSION, CREATE_TS, TERMINAL_ID, NAME)
values ('2e74c70b-6bf0-c7b9-8c76-da18d0a8127b', 1, current_timestamp, '4b1ac788-dfc1-cc20-82c1-02e1141160d5', 'td point1');

insert into SAMPLE_MEETING_POINT (ID, VERSION, CREATE_TS, TERMINAL_ID, NAME)
values ('835dfd1a-64a5-d382-4e37-f438b0f48a30', 1, current_timestamp, '4b1ac788-dfc1-cc20-82c1-02e1141160d5', 'td point2');

insert into SAMPLE_TERMINAL (ID, VERSION, CREATE_TS, AIRPORT_ID, NAME)
values ('4b34ade5-d10d-38fa-c56a-6e42a354acca', 1, current_timestamp, 'eade7c5a-233e-02df-0ab0-d2a2cf0b9a19', 'Terminal E');


insert into SAMPLE_CUSTOMER_DETAILS (ID, VERSION, CREATE_TS, INFO)
values ('0d3787bd-7f18-46d2-a1fc-b09cae63fe75', 1, current_timestamp, 'Some details');

insert into SAMPLE_CUSTOMER (ID, VERSION, CREATE_TS, NAME, ACTIVE, GRADE, CREATOR_ID, DETAILS_ID)
values ('3ba419e7-c5e6-052f-aa68-ce477c14b68b', 1, current_timestamp, 'Homer Simpson', true, 10, '9b999f7e-face-3904-b36c-f70c060f9937', '0d3787bd-7f18-46d2-a1fc-b09cae63fe75');

insert into SAMPLE_CLIENT (DTYPE, NAME, EMAIL, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('M', 'Globex Corporation', 'info@globex.com', 2, '2016-03-05 17:21:55', 'admin', null, null, '486047e4-caf6-c89c-5df4-3fbdb39e78d2', '2016-03-05 17:19:31', 'admin');

insert into SAMPLE_COMPANY (ID, INDUSTRY)
values ('486047e4-caf6-c89c-5df4-3fbdb39e78d2', 'Manufacturing');

insert into SAMPLE_CLIENT (DTYPE, NAME, EMAIL, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('M', 'Sirius Cybernetics Corporation', 'info@sirius.com', 1, '2016-03-05 17:21:30', null, null, null, '4fb03b19-1580-689e-e729-29725f82c0bc', '2016-03-05 17:21:30', 'admin');

insert into SAMPLE_COMPANY (ID, INDUSTRY)
values ('4fb03b19-1580-689e-e729-29725f82c0bc', 'Robotics');

insert into SAMPLE_CLIENT (DTYPE, NAME, EMAIL, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('M', 'Initech', 'info@initech.com', 1, '2016-03-05 17:20:16', null, null, null, '61113265-b4ce-0a59-2ec6-dbcb29045292', '2016-03-05 17:20:16', 'admin');

insert into SAMPLE_COMPANY (ID, INDUSTRY)
values ('61113265-b4ce-0a59-2ec6-dbcb29045292', 'IT');

insert into SAMPLE_CLIENT (DTYPE, NAME, EMAIL, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('P', 'Homer Simpson', 'homer.simpson@gmail.com', 3, '2016-03-05 17:35:11', 'admin', null, null, '3e323672-333c-c23f-1173-b1beb3dba85d', '2016-03-05 17:34:55', 'admin');

insert into SAMPLE_PERSON (ID, FIRST_NAME, LAST_NAME)
values ('3e323672-333c-c23f-1173-b1beb3dba85d', 'Homer', 'Simpson');

insert into SAMPLE_CLIENT (DTYPE, NAME, EMAIL, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('P', 'Arthur Dent', 'arthur.dent@gmail.com', 1, '2016-03-05 17:38:23', null, null, null, '25d4976a-4dee-5219-fa74-5ccf0b388962', '2016-03-05 17:38:23', 'admin');

insert into SAMPLE_PERSON (ID, FIRST_NAME, LAST_NAME)
values ('25d4976a-4dee-5219-fa74-5ccf0b388962', 'Arthur', 'Dent');