//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time;


// shamelessly taken from book of shaders
// returns 0.0 to 1.0
vec2 random2_fract( vec2 p ) {
    return fract(sin(vec2(dot(p,vec2(127.1,311.7)),dot(p,vec2(269.5,183.3))))*43758.5453);
}

float linear_colorramp(float x) {
	const float mn = 0.4;
	const float mx = 0.827;
	
	float y = clamp(x, mn, mx);
	return (y - mn) / (mx - mn);
}

float smooth_noise(vec2 uv) {
	vec2 uv_i = floor(uv);
	vec2 uv_f = fract(uv);
	
	float a = random2_fract(uv_i).x;
	float b = random2_fract(uv_i + vec2(1.0, 0.0)).x;
	float c = random2_fract(uv_i + vec2(0.0, 1.0)).x;
	float d = random2_fract(uv_i + vec2(1.0, 1.0)).x;
	
	//wtf is a cubic hermite curve
	vec2 curved_f = uv_f * uv_f * (3.0 - 2.0 * uv_f);
	return mix(a, b, curved_f.x) + (c - a) * curved_f.y * (1.0 - curved_f.x) + (d - b) * curved_f.x * curved_f.y;
}

float voronoi(vec2 uv) {
	vec2 tile_index = floor(uv);
	vec2 uv_fraction = fract(uv);
	
	
	float min_distance = 1.0;
	for (int y = -1; y <= 1; y++) {
		for (int x = -1; x <= 1; x++) {
			vec2 neighbor = vec2(float(x), float(y));
			vec2 point = random2_fract(tile_index + neighbor);
			// this should be deterministic for the most part but i just dont care to learn how the random function works
			
			float dist = length(neighbor + point - uv_fraction);
			min_distance = min(min_distance, dist);
			// i do however understand how the basic voronoi concept works now
		}
	}
	
	return pow( linear_colorramp(min_distance), 1.5);
}

void main()
{
	
	float horizontal_tiles = 6.5;
	
	vec2 uv = gl_FragCoord.xy / vec2(240.0, 160.0);
	vec2 noise_uv = uv * 4.0;
	uv *= horizontal_tiles;
	
	noise_uv.x += time;
	
	float noise = (smooth_noise(noise_uv) - 0.5);
	
	uv.x += noise;
	uv.y += noise;
	
	
	float min_distance = voronoi(uv * 0.3 + vec2(-0.5 - (time / 10.0), -0.3)) * 0.35 + voronoi(uv * 0.8 + vec2(time / 8.0, 0.0)) * 0.8;
	min_distance = floor(min_distance * 16.0) / 16.0;
    gl_FragColor = vec4(1.0, 1.0, 1.0, min_distance * 0.5);
}