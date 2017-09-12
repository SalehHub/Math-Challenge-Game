
//draw 6 stars
global.star1=instance_create(room_width-(sprite_get_width(spt_star_2)/2),580,obj_star_2);
global.star2=instance_create(room_width-(sprite_get_width(spt_star_2)/2)*2,580,obj_star_2);
global.star3=instance_create(room_width-(sprite_get_width(spt_star_2)/2)*3,580,obj_star_2);

global.star6=instance_create((sprite_get_width(spt_star_2)/2),580,obj_star_2);
global.star5=instance_create((sprite_get_width(spt_star_2)/2)*2,580,obj_star_2);
global.star4=instance_create((sprite_get_width(spt_star_2)/2)*3,580,obj_star_2);


global.score=0;
global.nox=400;
global.buy="";
global.timer2=0;
if(room==rm_addition){

   // global.name="";
    global.new1=irandom(2);
    global.new2=irandom(2);
    
    global.good=false;
    global.correct_answers=0;
    global.incorrect_answers=0;
    
    
    global.add_correct_answers=0;
    global.sub_correct_answers=0;
    global.multi_correct_answers=0;
    global.div_correct_answers=0;
    global.com_correct_answers=0;    
    global.bon_correct_answers=0;
    
    global.timer=R_TIMER;
    global.score=0;
    global.pennies=0;
    global.room=rm_addition;
    global.res=global.new1+global.new2;
    
}else if(room==rm_subtraction){
    
    global.timer=R_TIMER;

    global.new1=irandom_range(4,9);
    global.new2=irandom(4);
    
    global.room=rm_subtraction;
    
    global.res=global.new1-global.new2;
    
}else if(room==rm_multiplication){
global.timer=R_TIMER;
    global.new1=irandom_range(0,4);
    global.new2=irandom(2);
    
    global.room=rm_multiplication;
    
    global.res=global.new1*global.new2;
    
}else if(room==rm_division){
global.timer=R_TIMER;
    var n;
    n[0]=2;
    n[1]=4;
    n[3]=6;
    n[4]=8;            
    var n2;
    n2[0]=1;
    n2[1]=2;

    global.new1=n[irandom(4)];
    global.new2=n2[irandom(1)];
    global.res=global.new1/global.new2;

    global.room=rm_division;
    
    global.res=global.new1/global.new2;

}else if(room==rm_combination){
global.timer=R_TIMER;
global.res=0;
var rand;

rand=irandom(2);
    do{
        randomize();
        global.new1=irandom(50);
        randomize();
        global.new2=irandom(50);
        randomize();
        global.new3=irandom(50);
        
        if(rand==0){
        
            global.res=global.new1+global.new2-global.new3;
            
            global.expression=string(global.new1)+" + "+string(global.new2)+" - "+string(global.new3)+" = ?";
        }else if (rand==1){
            global.res=global.new1-global.new2+global.new3;
            global.expression=string(global.new1)+" - "+string(global.new2)+" + "+string(global.new3)+" = ?";
        }else{
        
                    global.res=global.new3*(global.new1+global.new2)
            
                    global.expression=string(global.new3)+" * ( "+string(global.new1)+" + "+string(global.new2)+" ) = ?";
        }
        
    }until(global.res>0 && global.res<50);
    
    global.room=rm_combination;

}

else if(room==rm_bonus){
            global.timer=R_TIMER;
            global.room=rm_bonus;
            
            global.bon_correct_answers++;
            randomize();
            global.new1=irandom_range(1,5);
            randomize();
            global.new2=irandom_range(5,9);
            
            global.res=(-global.new1)+global.new2;
            
            global.expression="(-"+string(global.new1)+")+"+string(global.new2)+" = ?";
            
        }


alarm[0]=1;
alarm[2]=1;

