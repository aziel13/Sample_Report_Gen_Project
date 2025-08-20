    create or replace PACKAGE body data_gen is

        procedure genPersonellAndStudentNames is
            --Male Names: James John Robert Michael William David Richard Charles Joseph Thomas Miguel Ravi Théo Gael Noé Artur Davi Antônio Heitor Samuel José João Antônio Francisco Carlos Paulo Pedro Lucas Luiz Marcos Mohamed Youssef Ahmed Mahmoud Mustafa Yassin Taha Khaled Hamza Bilal Ibrahim Hassan Hussein Karim Tareq Abdel-Rahman Ali Omar Halim Murad Selim AbdallahPeter Pierre George John Mina Beshoi Kirollos Mark Fadi HabibRam Mohammed Santosh Sanjay Sunil Rajesh Ramesh Ashok Manoj Anil Haruto Minato Riku Aoto Haruki Sōta Sora Yuito Hinata HaruHaruto  Minato  Riku  Haruki  Hinata  Sōta  Sora  Aoto  Yuito  Asahi
            --
            --Female Names:Olivia Aino Linnea Sofia Ellen  Isla Lilja Eevi Aava  Helmi Viola Hilla Amelija Sofija Emilija Luknė Lėja Liepa Olivija Adelė Ema Patricija Sana Ema Mei Mio Tsumugi Sui Koharu Ena Nagisa Rio Sunita Anita Gita Rekha Shanti Usha Asha Mina Laxmi Sita Fatemeh Zahra Maryam Ma'soumeh Sakineh Zeinab Roghayyeh Khadije Leyla Somayyeh Min Lin Yu Lei Ni Ye Yin Wei Yan Yi Mary Patricia Linda Barbara Elizabeth Jennifer Maria Susan Margaret Dorothy
            --Last Names:Smith  Johnson  Williams  Brown  Jones  Garcia  Miller  Davis  Rodriguez  Martinez  Hernandez  Lopez  Gonzalez  Wilson  Anderson  Taylor  Moore  Jackson  Martin  Thompson  White  Harris  Sanchez  Clark  Ramirez  Lewis  Robinson  Walker  Young  Allen  King  Wright  Scott  Torres  Nguyen  Hill  Flores  Green  Adams  Nelson  Baker  Hall  Rivera  Campbell  Mitchell  Carter RobertsSato  Suzuki  Takahashi  Tanaka  Watanabe  Ito  Yamamoto  Nakamura  Kobayashi Yoshida Abdelaal Al-Hilli Al-Katib Al-Khafaji Al-Khatib Al-Maghrabi Fayek Gomaa Khoudary Nasr Sharaf Sharawi Yaisien Li Wang Zhang Liu Chen Yang Huang Zhao Wu Zhou Almeida Alves Souza Oliveira Santos Carvalho Costa Pereira Ferreira Lima Silva Andrade Barbosa Ribeiro Rodrigues Fernandes Lopes Martin's Afonso Araujo Azevedo Barro's Batista Campos Korhonen  Virtanen  Mäkinen  Nieminen  Mäkelä  Hämäläinen  Laine  Heikkinen  Koskinen  Järvinen

            --'James,John,Robert,Michael,William,David,Richard,Charles,Joseph,Thomas,Miguel,Ravi,Théo,Gael,Noé,Artur,Davi,Antônio,Heitor,Samuel,José,João,Antônio,Francisco,Carlos,Paulo,Pedro,Lucas,Luiz,Marcos,Mohamed,Youssef,Ahmed,Mahmoud,Mustafa,Yassin,Taha,Khaled,Hamza,Bilal,Ibrahim,Hassan,Hussein,Karim,Tareq,Abdel-Rahman,Ali,Omar,Halim,Murad,Selim,AbdallahPeter,Pierre,George,John,Mina,Beshoi,Kirollos,Mark,Fadi,HabibRam,Mohammed,Santosh,Sanjay,Sunil,Rajesh,Ramesh,Ashok,Manoj,Anil,Haruto,Minato,Riku,Aoto,Haruki,Sōta,Sora,Yuito,Hinata,HaruHaruto,Minato,Riku,Haruki,Hinata,Sōta,Sora,Aoto,Yuito,Asahi'
            --'Olivia,Aino,Linnea,Sofia,Ellen,Isla,Lilja,Eevi,Aava,Helmi,Viola,Hilla,Amelija,Sofija,Emilija,Luknė,Lėja,Liepa,Olivija,Adelė,Ema,Patricija,Sana,Ema,Mei,Mio,Tsumugi,Sui,Koharu,Ena,Nagisa,Rio,Sunita,Anita,Gita,Rekha,Shanti,Usha,Asha,Mina,Laxmi,Sita,Fatemeh,Zahra,Maryam,Ma'soumeh,Sakineh,Zeinab,Roghayyeh,Khadije,Leyla,Somayyeh,Min,Lin,Yu,Lei,Ni,Ye,Yin,Wei,Yan,Yi,Mary,Patricia,Linda,Barbara,Elizabeth,Jennifer,Maria,Susan,Margaret,Dorothy'
            --'Smith,Johnson,Williams,Brown,Jones,Garcia,Miller,Davis,Rodriguez,Martinez,Hernandez,Lopez,Gonzalez,Wilson,Anderson,Taylor,Moore,Jackson,Martin,Thompson,White,Harris,Sanchez,Clark,Ramirez,Lewis,Robinson,Walker,Young,Allen,King,Wright,Scott,Torres,Nguyen,Hill,Flores,Green,Adams,Nelson,Baker,Hall,Rivera,Campbell,Mitchell,Carter,RobertsSato,Suzuki,Takahashi,Tanaka,Watanabe,Ito,Yamamoto,Nakamura,Kobayashi,Yoshida,Abdelaal,Al-Hilli,Al-Katib,Al-Khafaji,Al-Khatib,Al-Maghrabi,Fayek,Gomaa,Khoudary,Nasr,Sharaf,Sharawi,Yaisien,Li,Wang,Zhang,Liu,Chen,Yang,Huang,Zhao,Wu,Zhou,Almeida,Alves,Souza,Oliveira,Santos,Carvalho,Costa,Pereira,Ferreira,Lima,Silva,Andrade,Barbosa,Ribeiro,Rodrigues,Fernandes,Lopes,Martin's,Afonso,Araujo,Azevedo,Barro's,Batista,Campos,Korhonen,Virtanen,Mäkinen,Nieminen,Mäkelä,Hämäläinen,Laine,Heikkinen,Koskinen,Järvinen'


            cursor cur_maleNamesList is
                with tbl as
                         (select 'James,John,Robert,Michael,William,David,Richard,Charles,Joseph,Thomas,Miguel,Ravi,Théo,Gael,Noé,Artur,Davi,Antônio,Heitor,Samuel,José,João,Antônio,Francisco,Carlos,Paulo,Pedro,Lucas,Luiz,Marcos,Mohamed,Youssef,Ahmed,Mahmoud,Mustafa,Yassin,Taha,Khaled,Hamza,Bilal,Ibrahim,Hassan,Hussein,Karim,Tareq,Abdel-Rahman,Ali,Omar,Halim,Murad,Selim,AbdallahPeter,Pierre,George,John,Mina,Beshoi,Kirollos,Mark,Fadi,HabibRam,Mohammed,Santosh,Sanjay,Sunil,Rajesh,Ramesh,Ashok,Manoj,Anil,Haruto,Minato,Riku,Aoto,Haruki,Sōta,Sora,Yuito,Hinata,HaruHaruto,Minato,Riku,Haruki,Hinata,Sōta,Sora,Aoto,Yuito,Asahi' as my_string
                          from dual)
                SELECT REGEXP_SUBSTR(my_string, '[^,]+', 1, LEVEL) AS split_value
                FROM tbl
                CONNECT BY LEVEL <= LENGTH(my_string) - LENGTH(REPLACE(my_string, ',', '')) + 1
                       AND PRIOR my_string = my_string -- Prevents cycles when using CONNECT BY
                       AND PRIOR SYS_GUID() IS NOT NULL; -- A unique identifier to further prevent cycles

            cursor cur_femaleNamesList is
                with tbl as
                         (select 'Olivia,Aino,Linnea,Sofia,Ellen,Isla,Lilja,Eevi,Aava,Helmi,Viola,Hilla,Amelija,Sofija,Emilija,Luknė,Lėja,Liepa,Olivija,Adelė,Ema,Patricija,Sana,Ema,Mei,Mio,Tsumugi,Sui,Koharu,Ena,Nagisa,Rio,Sunita,Anita,Gita,Rekha,Shanti,Usha,Asha,Mina,Laxmi,Sita,Fatemeh,Zahra,Maryam,Ma''soumeh,Sakineh,Zeinab,Roghayyeh,Khadije,Leyla,Somayyeh,Min,Lin,Yu,Lei,Ni,Ye,Yin,Wei,Yan,Yi,Mary,Patricia,Linda,Barbara,Elizabeth,Jennifer,Maria,Susan,Margaret,Dorothy' as my_string
                          from dual)
                SELECT REGEXP_SUBSTR(my_string, '[^,]+', 1, LEVEL) AS split_value
                FROM tbl
                CONNECT BY LEVEL <= LENGTH(my_string) - LENGTH(REPLACE(my_string, ',', '')) + 1
                       AND PRIOR my_string = my_string -- Prevents cycles when using CONNECT BY
                       AND PRIOR SYS_GUID() IS NOT NULL; -- A unique identifier to further prevent cycles


            cursor cur_lastNamesList is
                with tbl as
                         (select 'Smith,Johnson,Williams,Brown,Jones,Garcia,Miller,Davis,Rodriguez,Martinez,Hernandez,Lopez,Gonzalez,Wilson,Anderson,Taylor,Moore,Jackson,Martin,Thompson,White,Harris,Sanchez,Clark,Ramirez,Lewis,Robinson,Walker,Young,Allen,King,Wright,Scott,Torres,Nguyen,Hill,Flores,Green,Adams,Nelson,Baker,Hall,Rivera,Campbell,Mitchell,Carter,RobertsSato,Suzuki,Takahashi,Tanaka,Watanabe,Ito,Yamamoto,Nakamura,Kobayashi,Yoshida,Abdelaal,Al-Hilli,Al-Katib,Al-Khafaji,Al-Khatib,Al-Maghrabi,Fayek,Gomaa,Khoudary,Nasr,Sharaf,Sharawi,Yaisien,Li,Wang,Zhang,Liu,Chen,Yang,Huang,Zhao,Wu,Zhou,Almeida,Alves,Souza,Oliveira,Santos,Carvalho,Costa,Pereira,Ferreira,Lima,Silva,Andrade,Barbosa,Ribeiro,Rodrigues,Fernandes,Lopes,Martin''s,Afonso,Araujo,Azevedo,Barro''s,Batista,Campos,Korhonen,Virtanen,Mäkinen,Nieminen,Mäkelä,Hämäläinen,Laine,Heikkinen,Koskinen,Järvinen' as my_string
                          from dual)
                SELECT REGEXP_SUBSTR(my_string, '[^,]+', 1, LEVEL) AS split_value
                FROM tbl
                CONNECT BY LEVEL <= LENGTH(my_string) - LENGTH(REPLACE(my_string, ',', '')) + 1
                       AND PRIOR my_string = my_string -- Prevents cycles when using CONNECT BY
                       AND PRIOR SYS_GUID() IS NOT NULL; -- A unique identifier to further prevent cycles

            external_id   varchar2(2000 char);
            internal_id   varchar2(2000 char);
            firstName     varchar(1000);
            lastName      varchar(1000);
            TYPE nameListType IS TABLE OF varchar2(2000 char);
            FirstNameList nameListType;
            lastNameList  nameListType;
            gender        varchar2(3);
            randomIndex   number;
            lv_count number;

            lv_next_ext_counter number;
            lv_next_int_counter number;


            PersonnelAndStudentsrow PersonnelAndStudentsNames%rowtype;

        begin


            lv_next_ext_counter := external_id_seq.NEXTVAL;
            lv_next_int_counter := internal_id_seq.NEXTVAL;


            dbms_output.PUT_LINE('lv_next_ext_counter: ' ||lv_next_ext_counter || ' lv_next_int_counter: ' || lv_next_int_counter);

            external_id := TO_CHAR(lv_next_ext_counter, '0000000099');

            internal_id := TO_CHAR(lv_next_int_counter, '0000000099');

            if external_id is null then
                  external_id := '0000000000';
            end if;

             if internal_id is null then
                internal_id := '0000000000';
            end if;

            -- randomly choose a gender value. m f
            dbms_output.PUT_LINE('external_id: ' ||external_id || ' internal_id: ' || internal_id);

            SELECT round(dbms_random.value(1, 2)) num
            into gender
            FROM dual;
             dbms_output.PUT_LINE('gender: ' ||gender);

            if gender = 1 then

                OPEN cur_maleNamesList;
                FETCH cur_maleNamesList bulk collect INTO FirstNameList;
                close cur_maleNamesList;

            else
                OPEN cur_femaleNamesList;
                FETCH cur_femaleNamesList bulk collect INTO FirstNameList;
                close cur_femaleNamesList;

            end if;

            OPEN cur_lastNamesList;
            FETCH cur_lastNamesList bulk collect INTO lastNameList;
            close cur_lastNamesList;


            --pick a random first name
            if FirstNameList is not empty then

                lv_count := FirstNameList.count();

                dbms_output.PUT_LINE('fname count: ' || lv_count);

                SELECT round(dbms_random.value(0, lv_count-1)) num
                into randomIndex
                FROM dual;

                dbms_output.PUT_LINE('randomIndex: ' || randomIndex);

                firstName := FirstNameList(randomIndex);

            end if;

            if lastNameList is not empty then
                lv_count := lastNameList.count();

                SELECT round(dbms_random.value(0, lv_count-1)) num
                into randomIndex
                FROM dual;

                lastName := lastNameList(randomIndex);
            end if;

            dbms_output.PUT_LINE('firstname: ' ||firstName || ' lastname: ' || lastName);

            PersonnelAndStudentsrow.external_id := external_id;
            PersonnelAndStudentsrow.internal_id := internal_id;
            PersonnelAndStudentsrow.firstName := firstName;
            PersonnelAndStudentsrow.middleName := '';
            PersonnelAndStudentsrow.lastName := lastName;
            PersonnelAndStudentsrow.activity_date := sysdate;
            PersonnelAndStudentsrow.begin_date := sysdate;

           INSERT INTO PersonnelAndStudentsNames VALUES PersonnelAndStudentsrow;

        EXCEPTION
                When others then
                    --if no records were found the script has yet to be run. set default value

                    dbms_output.PUT_LINE('lv_next_ext_counter: ' ||lv_next_ext_counter || ' lv_next_int_counter: ' || lv_next_int_counter);


                     dbms_output.PUT_LINE('fname count: ' || lv_count);

                    dbms_output.PUT_LINE('randomIndex: ' || randomIndex);

                    dbms_output.PUT_LINE('sqlerrm: ' || sqlerrm);


        end genPersonellAndStudentNames;

        procedure genUserIdentifiers is

            cursor cur_PersonnelAndStudentsNames is
            select * from PersonnelAndStudentsNames where external_id not in (select b.external_id from internalUserIdentifiers b);

            type  PersonnelAndStudentsNameslistype is table of cur_PersonnelAndStudentsNames%rowtype;
            PersonnelAndStudentsNameslist PersonnelAndStudentsNameslistype;

            internalUserIdentifiers_row internalUserIdentifiers%rowtype;
            userid varchar2(2000);

            type  internalUserIdentifierslistype is table of internalUserIdentifiers%rowtype;
            internalUserIdentifierslist internalUserIdentifierslistype := new internalUserIdentifierslistype();

        begin

                OPEN cur_PersonnelAndStudentsNames;
                FETCH cur_PersonnelAndStudentsNames bulk collect INTO PersonnelAndStudentsNameslist;
                close cur_PersonnelAndStudentsNames;

                if PersonnelAndStudentsNameslist is not empty then

                    for i in PersonnelAndStudentsNameslist.first .. PersonnelAndStudentsNameslist.last loop

                        internalUserIdentifiers_row.external_id := PersonnelAndStudentsNameslist(i).external_id;
                        internalUserIdentifiers_row.internal_id := PersonnelAndStudentsNameslist(i).internal_id;

                        userid := 'eud'||trim(external_id_seq.NEXTVAL);
                        dbms_output.PUT_LINE('userid: ' ||userid);

                        if userid is null then
                            userid:= SUBSTR (PersonnelAndStudentsNameslist(i).firstName,0,1) || PersonnelAndStudentsNameslist(i).lastName || '1';
                        end if;

                        dbms_output.PUT_LINE('userid: ' ||userid);

                        internalUserIdentifiers_row.user_id := userid;
                        internalUserIdentifiers_row.activity := sysdate;
                        internalUserIdentifiers_row.begin_date := sysdate;

                        internalUserIdentifierslist.extend();
                        internalUserIdentifierslist(internalUserIdentifierslist.last) := internalUserIdentifiers_row;

                    end loop;

                end if;

                if internalUserIdentifierslist is not empty then

                    FORALL i IN internalUserIdentifierslist.first..internalUserIdentifierslist.last
                        INSERT INTO internalUserIdentifiers VALUES internalUserIdentifierslist(i);

                end if;

        end genUserIdentifiers;

        procedure genAddress is

        begin
            null;
        end genAddress;

        procedure genPhone is

        lv_phone_number varchar2(12 char);

        begin

            --1 555-xxxx

            null;


        end genPhone;

        procedure genStudentAccounts is
        begin
            null;
        end genStudentAccounts;

        procedure genTerms is
        begin
            null;
        end genTerms;

        procedure genRegisteredTerms is
        begin
            null;
        end genRegisteredTerms;

        procedure gen_all_data is
        begin
            null;
        end gen_all_data;

    end;