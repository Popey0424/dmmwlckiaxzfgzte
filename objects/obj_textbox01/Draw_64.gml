//affichage des textes à l'écran

xx = camera_get_view_height(view_camera[0]) /3 ;
yy = camera_get_view_width(view_camera[0]) /2.3 ;

//draw_sprite(spr_textbox,0,xx,yy);

draw_set_font(fnt_text_font);

draw_sprite(spr_text_box,0,xx+550,yy+25);

draw_text(xx + 50,yy,text[page]);


