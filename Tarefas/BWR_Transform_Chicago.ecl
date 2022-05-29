IMPORT $;
IMPORT STD;

Crimes := $.File_crime_optimized.File;

rec := RECORD
    UNSIGNED4 id;
    STRING9 case_number;
    STRING22 date;
    STRING38 block;
    STRING4 iucr;
    STRING33 primary_type;
    STRING60 description;
    STRING53  location_description;
    STRING5 arrest;
    STRING5 domestic;
    STRING4 beat;
    STRING3 district;
    UNSIGNED1 ward;
    UNSIGNED1 community_area;
    STRING3 fbi_code;
    UNSIGNED4 x_coordinate;
    UNSIGNED4 y_coordinate;
    UNSIGNED2 year;
    STRING22 updated_on;
    REAL8 latitude;
    REAL8 longitude;
    STRING29 location;
  END;

// Adicao de campo no dataset
rec2 := RECORD
  UNSIGNED recid;  
	UNSIGNED4 id;
  STRING9 case_number;
  STRING22 date;
  STRING38 block;
  STRING4 iucr;
  STRING33 primary_type;
  STRING60 description;
  STRING53  location_description;
  STRING5 arrest;
  STRING5 domestic;
  STRING4 beat;
  STRING3 district;
  UNSIGNED1 ward;
  UNSIGNED1 community_area;
  STRING3 fbi_code;
  UNSIGNED4 x_coordinate;
  UNSIGNED4 y_coordinate;
  UNSIGNED2 year;
  STRING22 updated_on;
  REAL8 latitude;
  REAL8 longitude;
  STRING29 location;
END;

rec2 MyTransf(rec Le, UNSIGNED cnt) := TRANSFORM
  SELF.recid := cnt;
  //SELF.date := STD.Date.FromStringToDate(date, '%m/%d/%Y %I%M%s');
  SELF := Le;
END;

newds := PROJECT(Crimes,MyTransf(LEFT,COUNTER));

OUTPUT(newds);













