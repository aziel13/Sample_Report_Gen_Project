create table PersonnelAndStudentsNames
(external_id varchar2(2000 char) not null,
internal_id varchar2(2000 char) not null,
firstName varchar2(2000) not null,
middleName varchar2(2000),
lastName varchar2(2000) not null,
change_indicator varchar2(2000),
activity_date date not null,
begin_date date not null,
end_date date
);


CREATE INDEX pers_and_stud_n_ext_ids  ON PersonnelAndStudentsNames (external_id);

CREATE INDEX pers_and_stud_n_int_ids  ON PersonnelAndStudentsNames (internal_id);