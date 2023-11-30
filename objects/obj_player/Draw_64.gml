//faire apparaitre le score sur le cote gauche de l'HUD

draw_set_font(fnt_text_font);
draw_text(40, 20, "Score: " + string(global.score));





//afficher l'objet narratif 01

if (f==1)
{
	instance_create_layer(x,y,"Instances_Character",obj_stop_player);
    
    if (page_object = 0)

    {
		
        draw_sprite(spr_livre_ouvert,image_index,900,200);


        }

    if (page_object = 1)

    {
        draw_sprite(spr_livre_page01, image_index,500,200);
       

        }

        if (page_object = 2)

    {
        draw_sprite(spr_livre_page02, image_index,500,200);
   
        }
				 
		
			   if (page_object = 3)

    {
        draw_sprite(spr_livre_ferme, image_index,500,200);
   
        }


    if (page_object = 5)

    {
      
        
		f = 0;
		page_object = 0;
		instance_destroy(obj_stop_player);
		
			}
}


//afficher l'objet narratif2


if (f2==1)
{
    instance_create_layer(x,y,"Instances_Character",obj_stop_player);

    if (page_object2 = 0)

    {

        draw_sprite(spr_ecriteau,image_index,300,300);


        }
   

    if (page_object2 = 1)

    {

        f2 = 0;
        page_object2 = 0;
        instance_destroy(obj_stop_player);

            }
} 


//afficher le livre 02

if (f3==1)
{
    instance_create_layer(x,y,"Instances_Character",obj_stop_player);

    if (page_object3 = 0)

    {

        draw_sprite(spr_livre_ouvert2,image_index,700,200);


        }

    if (page_object3 = 1)

    {
        draw_sprite(spr_livre_page012, image_index,500,200);


        }

        if (page_object3 = 2)

    {
        draw_sprite(spr_livre_page022, image_index,500,200);

        }

     

               if (page_object3 = 3)

    {
        draw_sprite(spr_livre_ferme2, image_index,500,200);

        }


    if (page_object3 = 4)

    {


        f3 = 0;
        page_object3 = 0;
        instance_destroy(obj_stop_player);

            }
} 


// afficher objet 4

if (f4==1)
{
    instance_create_layer(x,y,"Instances_Character",obj_stop_player);

    if (page_object4 = 0)

    {

        draw_sprite(spr_illu_cam01,image_index,1,1);


        }

    if (page_object4 = 1)

    {
        draw_sprite(spr_illu_cam02, image_index,1,1);


        }

        if (page_object4 = 2)

    {
        draw_sprite(spr_illu_cam03, image_index,1,1);

        }

           if (page_object4 = 3)

    {
        draw_sprite(spr_illu_cam04, image_index,1,1);

      }
	  
	   if (page_object4 = 4)
	   
	   {
   f4 = 0;
        page_object4 = 0;
        instance_destroy(obj_stop_player);
		
	   }
              }
		
		
		// afficher anim récupération arme


if anim_arme = true and frames < 120  

	{
		
		draw_sprite_ext(spr_illu_arme, image_index,1,1,image_xscale,image_yscale,0,c_white,alpha);
	
		instance_create_layer(x,y,"Instances_pop_up", obj_stop_player);
		
	}	
	
	
	
	
if frames >= 120   

{ fadeillu = true;


instance_destroy(obj_stop_player);


}

//afficher animation de fin du jeu


if anim_arme2 = true and frames2 < 180  

	{
		
		//draw_sprite(spr_illu_end, image_index,1,1);
		
		draw_sprite_ext(spr_illu_end, image_index,1,1,image_xscale,image_yscale,0,c_white,alpha2);
	
		instance_create_layer(x,y,"Instances_pop_up", obj_stop_player);
		
	
	}	
	
	
	
if frames2 = 180   

{
room_goto(RoomMenu);
}






if (f5==1)
{
    instance_create_layer(x,y,"Instances_Character",obj_stop_player);

    if (page_object5 = 0)

    {

        draw_sprite(spr_affiche01,image_index,550,-2);

        }      

    if (page_object5 = 1)

    {


        f5 = 0;
        page_object5 = 0;
        instance_destroy(obj_stop_player);

            }
} 





