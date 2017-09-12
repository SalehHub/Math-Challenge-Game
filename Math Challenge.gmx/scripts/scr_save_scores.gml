                
            if(room==rm_addition){
                //open scores.ini which is located at C:\Users\yourUserName\AppData\Local\NameOfThisStudioProject\
                ini_open("addition_scores.ini")
                for (i = 0; i<10; i++)
                {
                    //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                    global.score_array_addition[i, 0] = ini_read_string(string(i), "Name", "unknown");
                    global.score_array_addition[i, 1] = ini_read_real(string(i), "Score", 0);
                }
                ini_close();
                
                //search for first spot where player's score is greater
                for (i = 0; i<10; i++)
                {
                    //if the player's score is greater than the spot in question
                    if (global.add_correct_answers > global.score_array_addition[i, 1])
                    {
                        //starting at the last element of the array, set each element to the one before it.
                        for (j = 9; j>i; j--)
                        {
                            global.score_array_addition[j, 0] = global.score_array_addition[j-1, 0];
                            global.score_array_addition[j, 1] = global.score_array_addition[j-1, 1];
                        }
                        
                        //now set the space to that of this player
                        global.score_array_addition[i, 0] = global.name;
                        global.score_array_addition[i, 1] = global.add_correct_answers;
                        break;
                    }
                }
                
                //now update ini with this new array
                ini_open("addition_scores.ini")
                for (i = 0; i<10; i++)
                {
                    ini_write_string(string(i), "Name", string(global.score_array_addition[i, 0]));
                    ini_write_real(string(i), "Score", global.score_array_addition[i, 1]);
                }
                ini_close();//don't forget to close
                
                //go to the room where the high scores table is shown
               // room_goto(rm_scores);
            }
            
            else if(room==rm_subtraction){
                       //open scores.ini which is located at C:\Users\yourUserName\AppData\Local\NameOfThisStudioProject\
                ini_open("subtraction_scores.ini")
                for (i = 0; i<10; i++)
                {
                    //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                    global.score_array_subtraction[i, 0] = ini_read_string(string(i), "Name", "unknown");
                    global.score_array_subtraction[i, 1] = ini_read_real(string(i), "Score", 0);
                }
                ini_close();
                
                //search for first spot where player's score is greater
                for (i = 0; i<10; i++)
                {
                    //if the player's score is greater than the spot in question
                    if (global.sub_correct_answers > global.score_array_subtraction[i, 1])
                    {
                        //starting at the last element of the array, set each element to the one before it.
                        for (j = 9; j>i; j--)
                        {
                            global.score_array_subtraction[j, 0] = global.score_array_subtraction[j-1, 0];
                            global.score_array_subtraction[j, 1] = global.score_array_subtraction[j-1, 1];
                        }
                        
                        //now set the space to that of this player
                        global.score_array_subtraction[i, 0] = global.name;
                        global.score_array_subtraction[i, 1] = global.sub_correct_answers;
                        break;
                    }
                }
                
                //now update ini with this new array
                ini_open("subtraction_scores.ini")
                for (i = 0; i<10; i++)
                {
                    ini_write_string(string(i), "Name", string(global.score_array_subtraction[i, 0]));
                    ini_write_real(string(i), "Score", global.score_array_subtraction[i, 1]);
                }
                ini_close();//don't forget to close
                
                //go to the room where the high scores table is shown
               // room_goto(rm_scores);
            }
            else if(room==rm_multiplication){
                       //open scores.ini which is located at C:\Users\yourUserName\AppData\Local\NameOfThisStudioProject\
                ini_open("multiplication_scores.ini")
                for (i = 0; i<10; i++)
                {
                    //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                    global.score_array_multiplication[i, 0] = ini_read_string(string(i), "Name", "unknown");
                    global.score_array_multiplication[i, 1] = ini_read_real(string(i), "Score", 0);
                }
                ini_close();
                
                //search for first spot where player's score is greater
                for (i = 0; i<10; i++)
                {
                    //if the player's score is greater than the spot in question
                    if (global.multi_correct_answers > global.score_array_multiplication[i, 1])
                    {
                        //starting at the last element of the array, set each element to the one before it.
                        for (j = 9; j>i; j--)
                        {
                            global.score_array_multiplication[j, 0] = global.score_array_multiplication[j-1, 0];
                            global.score_array_multiplication[j, 1] = global.score_array_multiplication[j-1, 1];
                        }
                        
                        //now set the space to that of this player
                        global.score_array_multiplication[i, 0] = global.name;
                        global.score_array_multiplication[i, 1] = global.multi_correct_answers;
                        break;
                    }
                }
                
                //now update ini with this new array
                ini_open("multiplication_scores.ini")
                for (i = 0; i<10; i++)
                {
                    ini_write_string(string(i), "Name", string(global.score_array_multiplication[i, 0]));
                    ini_write_real(string(i), "Score", global.score_array_multiplication[i, 1]);
                }
                ini_close();//don't forget to close
                
                //go to the room where the high scores table is shown
               // room_goto(rm_scores);
            }else if(room==rm_division){
                       //open scores.ini which is located at C:\Users\yourUserName\AppData\Local\NameOfThisStudioProject\
                ini_open("division_scores.ini")
                for (i = 0; i<10; i++)
                {
                    //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                    global.score_array_division[i, 0] = ini_read_string(string(i), "Name", "unknown");
                    global.score_array_division[i, 1] = ini_read_real(string(i), "Score", 0);
                }
                ini_close();
                
                //search for first spot where player's score is greater
                for (i = 0; i<10; i++)
                {
                    //if the player's score is greater than the spot in question
                    if (global.div_correct_answers > global.score_array_division[i, 1])
                    {
                        //starting at the last element of the array, set each element to the one before it.
                        for (j = 9; j>i; j--)
                        {
                            global.score_array_division[j, 0] = global.score_array_division[j-1, 0];
                            global.score_array_division[j, 1] = global.score_array_division[j-1, 1];
                        }
                        
                        //now set the space to that of this player
                        global.score_array_division[i, 0] = global.name;
                        global.score_array_division[i, 1] = global.div_correct_answers;
                        break;
                    }
                }
                
                //now update ini with this new array
                ini_open("division_scores.ini")
                for (i = 0; i<10; i++)
                {
                    ini_write_string(string(i), "Name", string(global.score_array_division[i, 0]));
                    ini_write_real(string(i), "Score", global.score_array_division[i, 1]);
                }
                ini_close();//don't forget to close
                
                //go to the room where the high scores table is shown
               // room_goto(rm_scores);
            }else if(room==rm_combination){
                       //open scores.ini which is located at C:\Users\yourUserName\AppData\Local\NameOfThisStudioProject\
                ini_open("combination_scores.ini")
                for (i = 0; i<10; i++)
                {
                    //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                    global.score_array_combination[i, 0] = ini_read_string(string(i), "Name", "unknown");
                    global.score_array_combination[i, 1] = ini_read_real(string(i), "Score", 0);
                }
                ini_close();
                
                //search for first spot where player's score is greater
                for (i = 0; i<10; i++)
                {
                    //if the player's score is greater than the spot in question
                    if (global.com_correct_answers > global.score_array_combination[i, 1])
                    {
                        //starting at the last element of the array, set each element to the one before it.
                        for (j = 9; j>i; j--)
                        {
                            global.score_array_combination[j, 0] = global.score_array_combination[j-1, 0];
                            global.score_array_combination[j, 1] = global.score_array_combination[j-1, 1];
                        }
                        
                        //now set the space to that of this player
                        global.score_array_combination[i, 0] = global.name;
                        global.score_array_combination[i, 1] = global.com_correct_answers;
                        break;
                    }
                }
                
                //now update ini with this new array
                ini_open("combination_scores.ini")
                for (i = 0; i<10; i++)
                {
                    ini_write_string(string(i), "Name", string(global.score_array_combination[i, 0]));
                    ini_write_real(string(i), "Score", global.score_array_combination[i, 1]);
                }
                ini_close();//don't forget to close
                
                //go to the room where the high scores table is shown
               // room_goto(rm_scores);
            }
            
            //else if(room==rm_play_combination){
                       //open scores.ini which is located at C:\Users\yourUserName\AppData\Local\NameOfThisStudioProject\
                ini_open("incorrect_scores.ini")
                for (i = 0; i<10; i++)
                {
                    //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                    global.score_array_incorrect[i, 0] = ini_read_string(string(i), "Name", "unknown");
                    global.score_array_incorrect[i, 1] = ini_read_real(string(i), "Score", 0);
                }
                ini_close();
                
                //search for first spot where player's score is greater
                for (i = 0; i<10; i++)
                {
                    //if the player's score is greater than the spot in question
                    if (global.incorrect_answers > global.score_array_incorrect[i, 1])
                    {
                        //starting at the last element of the array, set each element to the one before it.
                        for (j = 9; j>i; j--)
                        {
                            global.score_array_combination[j, 0] = global.score_array_incorrect[j-1, 0];
                            global.score_array_combination[j, 1] = global.score_array_incorrect[j-1, 1];
                        }
                        
                        //now set the space to that of this player
                        global.score_array_incorrect[i, 0] = global.name;
                        global.score_array_incorrect[i, 1] = global.incorrect_answers;
                        break;
                    }
                }
                
                //now update ini with this new array
                ini_open("incorrect_scores.ini")
                for (i = 0; i<10; i++)
                {
                    ini_write_string(string(i), "Name", string(global.score_array_incorrect[i, 0]));
                    ini_write_real(string(i), "Score", global.score_array_incorrect[i, 1]);
                }
                ini_close();//don't forget to close
                
                //go to the room where the high scores table is shown
               // room_goto(rm_scores);
           // }
            
            
/*************************            */
