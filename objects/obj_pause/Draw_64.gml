if ( screen_alpha > 0 )
{	
draw_set_color( c_black );
draw_set_alpha( screen_alpha );
draw_rectangle( 0,0, gwidth, gheight, false );
draw_set_alpha(1);
draw_set_color( c_white );
draw_set_halign( fa_left );
draw_set_valign( fa_center );
draw_sprite(spr_background_menu_pause, 0, x-325 , y - 175 )
draw_sprite(spr_title_pausemenu, 0, x - 1100, y - 175)


	for( var i=0; i<bc; i++; )
	{
		draw_text_transformed_color( bx[i]-800,by[i],bstring[i],bsca[i],bsca[i],0,bcol[i],bcol[i],bcol[i],bcol[i],balpha[i] * screen_alpha );
	}
}





