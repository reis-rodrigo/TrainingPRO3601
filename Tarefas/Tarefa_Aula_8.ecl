IMPORT $;

file := $.Formatted_File;

rec2 := RECORD
    UNSIGNED row_id;
    UNSIGNED4 id;
    STRING9 case_number;
    STRING22 date;
    STRING4 iucr;
    STRING33 primary_type;
    STRING60 description;
    STRING5 arrest;
    STRING5 domestic;
    UNSIGNED2 year;
END;

rec2 crimes(rec Le) := TRANSFORM
    SELF := Le;
END;

rec3 := RECORD
    UNSIGNED row_id;
    STRING38 block;
    STRING53 location_description;
    STRING4 beat;
    STRING3 district;
    UNSIGNED1 ward;
    UNSIGNED1 community_area;
    STRING3 fbi_code;
    UNSIGNED4 x_coordinate;
    UNSIGNED4 y_coordinate;
    STRING22 updated_on;
    REAL8 latitude;
    REAL8 longitude;
    STRING29 location;
END;

rec3 address(rec Le) := TRANSFORM
    SELF := Le;
END;


table1 := PROJECT(file, crimes(LEFT));

table2 := PROJECT(file, address(LEFT));

newds := PROJECT(ds,MyTransf(LEFT,COUNTER));
