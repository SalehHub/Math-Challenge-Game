if(room==rm_addition){
    
    global.timer--;
    
    if(global.timer == 0)
    {
    
        if(global.add_correct_answers>5){
            global.timer=P_TIMER;
            room_goto(rm_pennies);
        }else{
            global.timer=R_TIMER;
            room_goto(rm_subtraction);
        }
    

        if(global.name==""){
            global.name = get_string("Enter your name:", "");
        }
    
        if (string_length(global.name) > 5 ){
          global.name = string_copy(global.name, 1, 5 );
        }
      
        script_execute(scr_save_scores);

}
    
}else if(room==rm_subtraction){

    global.timer--;
    
    if(global.timer == 0)
    {
        if(global.sub_correct_answers>5){
        
            global.timer=P_TIMER;
            room_goto(rm_pennies);
        
        }else{
                
            global.timer=R_TIMER;
            room_goto(rm_multiplication);
        }
        
        if(global.name==""){
            global.name = get_string("Enter your name:", "");
        }
    
        if (string_length(global.name) > 5 ){
          global.name = string_copy(global.name, 1, 5 );
        }
      
        script_execute(scr_save_scores);
    }

    
}else if(room==rm_multiplication){

    global.timer--;
    
    if(global.timer == 0)
    {
        if(global.multi_correct_answers>5){
            global.timer=P_TIMER;
            room_goto(rm_pennies);
        }else{
                
            global.timer=R_TIMER;
            room_goto(rm_division);
            //room_restart(); 
        }
        
        if(global.name==""){
            global.name = get_string("Enter your name:", "");
        }
    
        if (string_length(global.name) > 5 ){
          global.name = string_copy(global.name, 1, 5 );
        }
      
        script_execute(scr_save_scores);
    }

    
}else if(room==rm_division){

    global.timer--;
    
    if(global.timer == 0)
    {
        if(global.div_correct_answers>5){
            global.timer=P_TIMER;
            room_goto(rm_pennies);
        }else{
                
            global.timer=R_TIMER;
            room_goto(rm_combination);
            //room_restart(); 
        }
        
        if(global.name==""){
            global.name = get_string("Enter your name:", "");
        }
    
        if (string_length(global.name) > 5 ){
          global.name = string_copy(global.name, 1, 5 );
        }
      
        script_execute(scr_save_scores);
    }

}else if(room==rm_combination){

    global.timer--;
    
    if(global.timer == 0)
    {
        if(global.com_correct_answers>5){
            global.timer=P_TIMER;
            room_goto(rm_pennies);
        }else{
                
            global.timer=R_TIMER;
            room_goto(rm_bonus);
            //room_restart(); 
        }
        
        if(global.name==""){
            global.name = get_string("Enter your name:", "");
        }
    
        if (string_length(global.name) > 5 ){
          global.name = string_copy(global.name, 1, 5 );
        }
      
        script_execute(scr_save_scores);
    }

}else if(room==rm_bonus){

    global.timer--;
    
    if(global.timer == 0)
    {
        if(global.bon_correct_answers>5){
            global.timer=P_TIMER;
            room_goto(rm_pennies);
        }else{
                
            global.timer=R_TIMER;
            room_goto(rm_scores);
            //room_restart(); 
        }
        
        if(global.name==""){
            global.name = get_string("Enter your name:", "");
        }
    
        if (string_length(global.name) > 5 ){
          global.name = string_copy(global.name, 1, 5 );
        }
      
        script_execute(scr_save_scores);
    }

}






/*** save scores 
if(room==rm_addition or room==rm_subtraction or room==rm_multiplication or room==rm_division or room==rm_combination){
    if(global.timer == 0){
        if(global.name==""){
            global.name = get_string("Enter your name:", "");
        }
    
        if (string_length(global.name) > 5 ){
          global.name = string_copy(global.name, 1, 5 );
        }
      
        script_execute(scr_save_scores);
    }
}

***/

/*** Run timer alarm ***/
alarm[2]=30;
