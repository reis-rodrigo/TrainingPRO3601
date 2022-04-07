IMPORT $;
EXPORT chicago_crimes := MODULE
    EXPORT Layout := RECORD
        UNSIGNED id;
        STRING case_number;
        STRING date;
        STRING block;
        STRING iucr;
        STRING primary_type;
        STRING description;
        STRING location_description;
        BOOLEAN arrest;
        BOOLEAN domestic;
        STRING beat;
        STRING district;
        UNSIGNED ward;
        STRING community_area;
        STRING fbi_code;
        INTEGER x_coordinate;
        INTEGER y_coordinate;
        UNSIGNED year;
        STRING updated_on;
        STRING latitude;
        STRING longitude;
        STRING location;
     END;
    EXPORT File :=DATASET('~class::rgr::intro::crimes_-_2001_to_present.csv', Layout, CSV(HEADING(1)));
END;