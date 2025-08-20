create table internalUserIdentifiers
(external_id number,
internal_id number,
user_id varchar2,
activity date,
begin_date date,
termination_date date
);




CREATE INDEX internalUserIdentifiers_ext_ids  ON internalUserIdentifiers (external_id);

CREATE INDEX internalUserIdentifiers_int_ids  ON internalUserIdentifiers (internal_id);