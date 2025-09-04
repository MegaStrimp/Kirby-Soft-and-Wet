varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelW;
uniform float pixelH;
uniform vec3 outlineColor;

void main()
{
    float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	
    float alpha_org = alpha;
	
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + pixelW, v_vTexcoord.y)).a);
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - pixelW, v_vTexcoord.y)).a);
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + pixelH)).a);
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - pixelH)).a);
	
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor.a = alpha;
    if (alpha_org != alpha) gl_FragColor.rgb = outlineColor;
}