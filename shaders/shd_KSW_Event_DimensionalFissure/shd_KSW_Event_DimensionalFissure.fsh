uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 
uniform float alpha;
void main( void )
{
    vec2 uv =  (2.0 * fragCoord - iResolution.xy) / min(iResolution.x, iResolution.y);
	
    for(float i = 1.0; i < 10.0; i++)
	{
        uv.x += 0.6 / i * cos(i * 2.5* uv.y + iGlobalTime);
        uv.y += 0.6 / i * cos(i * 1.5 * uv.x + iGlobalTime);
    }
	
	float temp = abs(sin(iGlobalTime - uv.y - uv.x));
    vec3 cycle = 0.8 + 0.3 * cos(temp * 6.0 + vec3(11.0,2.0,2.0));

    vec3 color = cycle / (temp + 0.08);
    
    gl_FragColor = vec4(color,alpha);
}