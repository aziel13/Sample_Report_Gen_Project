--Used to generate data for the project.
set serveroutput on

declare

begin

--     for i in 0 .. 1000 loop
     data_gen.genPersonellAndStudentNames;
--    data_gen.genUserIdentifiers;
--     end loop;
commit;
end;
/

--delete from PersonnelAndStudentsNames;

--select * from PersonnelAndStudentsNames;