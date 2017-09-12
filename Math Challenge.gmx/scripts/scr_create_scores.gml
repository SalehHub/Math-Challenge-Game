            ini_open("animals_scores.ini")
            for (i = 0; i<10; i++)
            {
                //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                global.score_array_animals[i, 0] = ini_read_string(string(i), "Name", "unknown");
                global.score_array_animals[i, 1] = ini_read_real(string(i), "Score", 0);
            }
            ini_close();
            
            ini_open("fruits_scores.ini")
            for (i = 0; i<10; i++)
            {
                //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                global.score_array_fruits[i, 0] = ini_read_string(string(i), "Name", "unknown");
                global.score_array_fruits[i, 1] = ini_read_real(string(i), "Score", 0);
            }
            ini_close();
            
            
            ini_open("flags_scores.ini")
            for (i = 0; i<10; i++)
            {
                //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                global.score_array_flags[i, 0] = ini_read_string(string(i), "Name", "unknown");
                global.score_array_flags[i, 1] = ini_read_real(string(i), "Score", 0);
            }
            ini_close();
            
            
            ini_open("professions_scores.ini")
            for (i = 0; i<10; i++)
            {
                //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                global.score_array_professions[i, 0] = ini_read_string(string(i), "Name", "unknown");
                global.score_array_professions[i, 1] = ini_read_real(string(i), "Score", 0);
            }
            ini_close();
            
            
            ini_open("colors_scores.ini")
            for (i = 0; i<10; i++)
            {
                //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                global.score_array_colors[i, 0] = ini_read_string(string(i), "Name", "unknown");
                global.score_array_colors[i, 1] = ini_read_real(string(i), "Score", 0);
            }
            ini_close();
            

