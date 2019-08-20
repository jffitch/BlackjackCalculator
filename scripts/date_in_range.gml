var i, start_date_string, start_time_string, end_date_string, end_time_string, start_date, end_date, start_date_default, end_date_default, date_start, date_end;

start_date_default[0] = "1";
start_date_default[1] = "1";
start_date_default[2] = string(current_year);
start_date_default[3] = "0";
start_date_default[4] = "00";
start_date_default[5] = "00";

end_date_default[0] = "12";
end_date_default[1] = "31";
end_date_default[2] = string(current_year);
end_date_default[3] = "23";
end_date_default[4] = "59";
end_date_default[5] = "59";

start_date_string = ini_read_string("ad"+string(chosen_ad), "start_date", "1/1/"+string(current_year));
start_time_string = ini_read_string("ad"+string(chosen_ad), "start_time", "0:00:00");
end_date_string = ini_read_string("ad"+string(chosen_ad), "end_date", "12/31/"+string(current_year));
end_time_string = ini_read_string("ad"+string(chosen_ad), "end_time", "23:59:59");

for (i=0; i<6; i++) {
    start_date[i] = "";
    end_date[i] = "";
    }
    
i = 0;
while (start_date_string != "" && i < 3) {
    if (string_char_at(start_date_string, 1) == "/") {
        i++;
        }
    else {
        start_date[i] += string_char_at(start_date_string, 1)
        }
    start_date_string = string_delete(start_date_string, 1, 1);
    }

i = 3;
while (start_time_string != "" && i < 6) {
    if (string_char_at(start_time_string, 1) == ":") {
        i++;
        }
    else {
        start_date[i] += string_char_at(start_time_string, 1)
        }
    start_time_string = string_delete(start_time_string, 1, 1);
    }
    
i = 0;
while (end_date_string != "" && i < 3) {
    if (string_char_at(end_date_string, 1) == "/") {
        i++;
        }
    else {
        end_date[i] += string_char_at(end_date_string, 1)
        }
    end_date_string = string_delete(end_date_string, 1, 1);
    }

i = 3;
while (end_time_string != "" && i < 6) {
    if (string_char_at(end_time_string, 1) == ":") {
        i++;
        }
    else {
        end_date[i] += string_char_at(end_time_string, 1)
        }
    end_time_string = string_delete(end_time_string, 1, 1);
    }
    
for (i=0; i<6; i++) {
    if (start_date[i] == "") {
        start_date[i] = start_date_default[i];
        }
    if (end_date[i] == "") {
        end_date[i] = end_date_default[i];
        }
    }

date_start = date_create_datetime(real(start_date[2]), real(start_date[0]), real(start_date[1]), real(start_date[3]), real(start_date[4]), real(start_date[5]));
date_end = date_create_datetime(real(end_date[2]), real(end_date[0]), real(end_date[1]), real(end_date[3]), real(end_date[4]), real(end_date[5]));
return (!date_compare_datetime(date_start, date_current_datetime()) && !date_compare_datetime(date_current_datetime(), date_end));

