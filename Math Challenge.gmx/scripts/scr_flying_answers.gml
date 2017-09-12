/*
if(room==rm_addition){
    randomize();
    ra=irandom(50);
}else if(room==rm_subtraction){
    randomize();
    ra=irandom(4);
}else if(room==rm_multiplication){
     randomize();
     ra=irandom(4);
}else if(room==rm_division){
     randomize();
     ra=irandom(4);
}
*/
var n;
randomize();
n[0]=irandom(9);
randomize();
n[1]=irandom(9);
randomize();
n[2]=irandom(9);
randomize();
n[3]=irandom(9);
n[4]=global.res;
n[5]=global.res;


//generate flying answers
//nox=global.nox;//irandom_range(sprite_get_width(spt_num)+200,room_width-sprite_get_width(spt_num)+50);

global.nos=random_range(3,6);

noy=360;
no=instance_create(global.nox,noy,obj_answer);

no.image_speed=0;
no.sprite_index=spt_num;

randomize();
no.image_index=n[irandom(5)];
//no.vspeed=no.vspeed-4; //speed


        if(irandom(2)==0){randomize();
            dov=instance_create(global.nox,noy,obj_dove_2);
            if(irandom(1)==1){dov.image_xscale=-1;}
            no.image_xscale=0.7;
            no.image_yscale=0.7;
        }else if(irandom(2)==1){randomize();
            dov=instance_create(global.nox,noy,obj_dove);
            if(irandom(1)==1){dov.image_xscale=-1;}
            no.image_xscale=0.5;
            no.image_yscale=0.5;
        }else{randomize();
            dov=instance_create(global.nox,noy,obj_dove_3);
            if(irandom(1)==1){dov.image_xscale=-1;}
            no.image_xscale=0.6;
            no.image_yscale=0.6;
        }
        dov.image_speed=1;
        //dov.direction=0;
        dov.vspeed=dov.vspeed-4;
        
        if(irandom(2)==0){
            
            with(no){path_start(path0,global.nos,path_action_stop,0);}
            with(dov){path_start(path0,global.nos,path_action_stop,0);}
        }else if(irandom(2)==1){
            with(no){path_start(path1,4,path_action_stop,0);}
            with(dov){path_start(path1,4,path_action_stop,0);}
        }else{
            with(no){path_start(path2,4,path_action_stop,0);}
            with(dov){path_start(path2,4,path_action_stop,0);}
        }













global.nox=global.nox+200;

if(global.nox > (room_width-sprite_get_width(spt_num))){
    global.nox=400;
}






/*
with(no) {
noy=300;
    var tries, done;
    tries = 0;
    done = false;
    do {
        tries += 1;
        x = irandom_range(sprite_get_width(spt_num)+300,room_width-sprite_get_width(spt_num));
        done = !place_meeting(x,y,object_index);
       // nox=x;
    } until(done or tries>50);
    
    if(not done) {
        // not enough space (or bad luck), bail out
        instance_destroy();
    }else{
    */
/***************************/
        
/*
    }
}    
*/


alarm[0]=25;
