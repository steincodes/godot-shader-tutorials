shader_type canvas_item;
render_mode unshaded;

uniform sampler2D displace : hint_albedo;
uniform float dispAmt: hint_range(0,0.1);
uniform float abberationAmtX: hint_range(0,0.1);
uniform float abberationAmtY: hint_range(0,0.1);
uniform float dispSize: hint_range(0.1, 2.0);
uniform float maxAlpha : hint_range(0.1,1.0);

void fragment()
{
	//displace effect
	vec4 disp = texture(displace, SCREEN_UV * dispSize);
	vec2 newUV = SCREEN_UV + disp.xy * dispAmt;
	//abberation
	COLOR.r = texture(SCREEN_TEXTURE, newUV - vec2(abberationAmtX,abberationAmtY)).r; 
	COLOR.g = texture(SCREEN_TEXTURE, newUV).g; 
	COLOR.b = texture(SCREEN_TEXTURE, newUV + vec2(abberationAmtX,abberationAmtY)).b;
	COLOR.a = texture(SCREEN_TEXTURE, newUV).a * maxAlpha;
	}