//********SETUP*********
//The following variables must be populated specific to your project.
#define TexturePageSize 64. 
//How big is your pal surface. Most likely you need to set this to the 
//smallest power of 2 that will fit your surface palette

#define ColorCount 64. 
//How tall is your color palette? You could set this to the tallest one and
//leave it, but if you are experiencing performances issues, there are some
//ways to make this work a bit more efficiently

#define PixelSize 1./TexturePageSize
#define PalHeight ColorCount * PixelSize
#define Transparent vec4(.0,.0,.0,.0)
#define Tolerance .004

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_palTexture;
uniform vec4 u_Uvs;
uniform float u_paletteId;
uniform vec2 u_pixelSize;


vec4 findAltColor(vec4 inCol, vec2 corner)
{
  if(inCol.a == 0.) return Transparent;
  
  float dist;
  vec2 testPos;
  vec4 palCol;
  for(float i=0.; i < PalHeight; i+=PixelSize)
  {
    testPos = vec2(corner.x,corner.y+i);
    palCol = texture2D( u_palTexture, testPos);
    dist = distance(palCol,inCol);
    if(dist <= Tolerance)
    {
			testPos = vec2(corner.x + u_pixelSize.x * floor(u_paletteId + 1.0), corner.y + i);
      return mix(texture2D(u_palTexture, vec2(testPos.x - u_pixelSize.x, testPos.y)), texture2D(u_palTexture, testPos), fract(u_paletteId));
    }
  }
  return inCol;
}

void main()
{
  vec4 col = texture2D( gm_BaseTexture, v_vTexcoord);
  DoAlphaTest( col );
  col = findAltColor(col, u_Uvs.xy);
  gl_FragColor = v_vColour * col;
}

