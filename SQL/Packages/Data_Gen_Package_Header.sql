create or replace PACKAGE data_gen is

    procedure genPersonellAndStudentNames;
    procedure genUserIdentifiers;
    procedure genAddress;
    procedure genPhone;
    procedure genStudentAccounts;
    procedure genTerms;
    procedure genRegisteredTerms;
    procedure gen_all_data;

end;