shader_type canvas_item;
render_mode unshaded;

uniform sampler2D screen : hint_albedo;
uniform float brightness: hint_range(0,0.1);
uniform float size: hint_range(0.1,2.0);

void fragment()
{
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
	COLOR.rgb += texture(screen, SCREEN_UV * size).rgb * brightness;
}