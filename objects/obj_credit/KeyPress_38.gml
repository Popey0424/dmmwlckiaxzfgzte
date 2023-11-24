if keyboard_check_pressed(vk_up) {
    // Démarre l'animation jusqu'à la 2ème frame
    if sprite_index == spr_background_menu_credits {
        image_speed = 0 ; // Arrête la progression automatique de l'animation
        image_index += 2; // Fait avancer l'animation d'un certain montant à chaque appui
	}
	
}