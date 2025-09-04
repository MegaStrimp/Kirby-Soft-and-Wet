
#macro rps_type_standard 0
#macro rps_type_html5_sprite 1
#macro rps_type_html5_surface 2

///@func pal_swap_init_system(shader, [html5 sprite shader], [html5 surface shader])
function pal_swap_init_system(_shader = shd_pal_swapper, _html5_sprite_shader = shd_pal_html_sprite, _html5_surface_shader = shd_pal_html_surface) {

	//Initiates the palette system.  Call once at the beginning of your game somewhere.
	//IMPORTANT: if you plan on using this for HTML5, you need to specify your two HTML5 
  //shader assets
	var _swapper = {
  	shader: noone,
  	html5: false,
  	html5_sprite: noone,
  	html5_surface: noone,
  	texel_size: [0],
  	uvs: [0],
  	index: [0],
  	texture: [0],
  	layer_data: {} 
  }

	_swapper.html5 = os_browser != browser_not_a_browser;
	
	if(!_swapper.html5) {
		//Init non-html5 mode
		_swapper.shader = _shader;
		_swapper.texel_size[rps_type_standard] = shader_get_uniform(_shader, "u_pixelSize");
		_swapper.uvs[rps_type_standard] = shader_get_uniform(_shader, "u_Uvs");
		_swapper.index[rps_type_standard] = shader_get_uniform(_shader, "u_paletteId");
		_swapper.texture[rps_type_standard] = shader_get_sampler_index(_shader, "u_palTexture");
	}	else	{
		if(_html5_sprite_shader == undefined || _html5_surface_shader == undefined) {
			show_message("Must provide pal_swap_init_system() with 2 additional arguments for HTML5 Compatible Sprite and Surface Shaders");
			game_end();
		}
		_swapper.html5_sprite = _html5_sprite_shader;
		_swapper.html5_surface = _html5_surface_shader;
	
		_swapper.texel_size[rps_type_html5_sprite] = shader_get_uniform(_html5_sprite_shader, "u_pixelSize");
		_swapper.uvs[rps_type_html5_sprite] = shader_get_uniform(_html5_sprite_shader, "u_Uvs");
		_swapper.index[rps_type_html5_sprite] = shader_get_uniform(_html5_sprite_shader, "u_paletteId");
		_swapper.texture[rps_type_html5_sprite] = shader_get_sampler_index(_html5_sprite_shader, "u_palTexture");
	
	
		_swapper.texel_size[rps_type_html5_surface] = shader_get_uniform(_html5_surface_shader, "u_pixelSize");
		_swapper.uvs[rps_type_html5_surface] = shader_get_uniform(_html5_surface_shader, "u_Uvs");
		_swapper.index[rps_type_html5_surface] = shader_get_uniform(_html5_surface_shader, "u_paletteId");
		_swapper.texture[rps_type_html5_surface] = shader_get_sampler_index(_html5_surface_shader, "u_palTexture");
	}
	
	global.retro_pal_swapper = _swapper;
}
pal_swap_init_system();
	
///@func pal_swap_set(palette_sprite_index, palette_index, palette is surface);
function pal_swap_set(_pal_sprite, _pal_index, _is_surface) {
	
	var _swapper = global.retro_pal_swapper;
	if(_pal_index == 0) exit;

	var _mode = rps_type_standard;
	
	if(!_is_surface) {   
		//Using a sprite based palette
		if(_swapper.html5)	{
			shader_set(_swapper.html5_sprite);
			_mode = rps_type_html5_sprite;
		} else shader_set(_swapper.shader);

		var _tex = sprite_get_texture(_pal_sprite, 0),
				_UVs = sprite_get_uvs(_pal_sprite, 0);
	  texture_set_stage(_swapper.texture[_mode], _tex);
    
	  var _texel_x = texture_get_texel_width(_tex),
	      _texel_y = texture_get_texel_height(_tex),
	      _texel_hx = _texel_x * 0.5,
	      _texel_hy = _texel_y * 0.5;
    
	  shader_set_uniform_f(_swapper.texel_size[_mode], _texel_x, _texel_y);
	  shader_set_uniform_f(_swapper.uvs[_mode], _UVs[0] + _texel_hx, _UVs[1] + _texel_hy, _UVs[2], _UVs[3]);
	  shader_set_uniform_f(_swapper.index[_mode], _pal_index);
	} else {   
		//Using a surface based palette
		if(_swapper.html5) {
			shader_set(_swapper.html5_surface);
			_mode = rps_type_html5_surface;
		}	else shader_set(_swapper.shader);
    
		var _tex = surface_get_texture(_pal_sprite);
    
	  texture_set_stage(_swapper.texture[_mode], _tex);
    
	  var _texel_x = texture_get_texel_width(_tex),
	      _texel_y = texture_get_texel_height(_tex),
	      _texel_hx = _texel_x * 0.5,
	      _texel_hy = _texel_y * 0.5;
		shader_set_uniform_f(_swapper.texel_size[_mode], _texel_x, _texel_y);
	  shader_set_uniform_f(_swapper.uvs[_mode], _texel_hx, _texel_hy, 1.0 + _texel_hx, 1.0 + _texel_hy);
	  shader_set_uniform_f(_swapper.index[_mode], _pal_index);
	}
}

/// @func pal_swap_reset();
function pal_swap_reset() {
	//Resets the shader
	if(shader_current() != -1) shader_reset();
}


///@func pal_swap_layer_init();  
// Should be called once before setting up any layers to pal swap.
// This should be done on room start
function pal_swap_layer_init() {
	global.retro_pal_swapper.layer_data = {};
}

// @func pal_swap_set_layer(pal_sprite, pal_index, layer_index, pal_is_surface)
//draws the specified layer using the specified palette in the specified event.
function pal_swap_set_layer(_pal_sprite, _pal_index, _layer_index, _pal_is_surface) {
	global.retro_pal_swapper.layer_data[$ _layer_index] = {sprite: _pal_sprite, index: _pal_index, is_surf: _pal_is_surface};
}


///@func pal_swap_enable_layer(layer index)
///   This script sets layer start and end scripts. 
///   This script should not be called in either a step event or a draw event.  
///   It should only be called once.
function pal_swap_enable_layer(_layer_index) {
  if(!layer_exists(_layer_index)) return;

  var _onLayerBegin = method({layer: _layer_index}, function(){
    if(event_type == ev_draw) {
        var _data = global.retro_pal_swapper.layer_data[$ layer];
        if(_data == undefined) return;
        
        pal_swap_set(_data.sprite,_data.index,_data.is_surf);
    }
  });
  
  layer_script_begin(_layer_index, _onLayerBegin);
  
  layer_script_end(_layer_index,function() {
    if(event_type == ev_draw) {
        pal_swap_reset();
    }
  });
}
