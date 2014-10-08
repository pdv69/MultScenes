
/*
 * FourthScene
 * Created by Eqela Studio 2.0b7.4
 */

public class FourthScene : SEScene
{
	
	SESprite image3;
	SESprite image1;
	SESprite image2;
	SESprite image4;
	SESprite image5;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("black"), get_scene_width(), get_scene_height()));

		rsc.prepare_image("image3", "myimage3", get_scene_width(), get_scene_height());
		image3 = add_sprite_for_image(SEImage.for_resource("image3"));
		image3.move(0,0);

		rsc.prepare_image("image1", "myimage", 0.05 * get_scene_width(), 0.05 * get_scene_height());
		image1 = add_sprite_for_image(SEImage.for_resource("image1"));
		image1.move(0.95 * get_scene_width(), 0.85 * get_scene_height());
		
		rsc.prepare_image("image2", "myimage2",0.05 * get_scene_width(), 0.05 * get_scene_height());
		image2 = add_sprite_for_image(SEImage.for_resource("image2"));
		image2.move(0.95 * get_scene_width(), 0.90 * get_scene_height());

		rsc.prepare_image("image4", "myimage4",0.05 * get_scene_width(), 0.05 * get_scene_height());
		image4 = add_sprite_for_image(SEImage.for_resource("image4"));
		image4.move(0.95 * get_scene_width(), 0.95 * get_scene_height());

		rsc.prepare_image("image5", "menu",0.05 * get_scene_width(), 0.05 * get_scene_height());
		image5 = add_sprite_for_image(SEImage.for_resource("image5"));
		image5.move(0.95 * get_scene_width(), 0.80 * get_scene_height());
	}

	public void on_pointer_press(SEPointerInfo pi) {
		if(pi.is_inside(0.95 * get_scene_width(), 0.95 * get_scene_height(), 0.05 * get_scene_width(), 0.05 * get_scene_height())) {
			base.on_pointer_press(pi);
			switch_scene(new FifthScene());
		}

		else if(pi.is_inside(0.95 * get_scene_width(), 0.90 * get_scene_height(), 0.05 * get_scene_width(), 0.05 * get_scene_height())) {
			base.on_pointer_press(pi);
			switch_scene(new ThirdScene());
		}
		
		else if(pi.is_inside(0.95 * get_scene_width(), 0.85 * get_scene_height(), 0.05 * get_scene_width(), 0.05 * get_scene_height())) {
			base.on_pointer_press(pi);
			switch_scene(new SecondScene());
		}
		
		else if(pi.is_inside(0.95 * get_scene_width(), 0.80 * get_scene_height(), 0.05 * get_scene_width(), 0.05 * get_scene_height())) {
			base.on_pointer_press(pi);
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
