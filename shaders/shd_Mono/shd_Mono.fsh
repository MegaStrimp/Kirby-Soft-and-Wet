varying vec2 v_vTexcoord;
varying vec4 v_vColour;
void main() {
    vec4 source = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    float brightness = dot( vec3( 0.2989, 0.5870, 0.1140 ), source.rgb );
    gl_FragColor = vec4( vec3( brightness ), source.a );
}