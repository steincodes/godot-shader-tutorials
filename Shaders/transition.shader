shader_type canvas_item;
render_mode unshaded;

uniform float cutoff : hint_range(0,1.0);
uniform sampler2D filter : hint_albedo;

void fragment()
{
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
	vec4 tex = texture(filter, SCREEN_UV);
	if (tex.r < cutoff || cutoff > 0.999)
	{
		COLOR.rgb = vec3(0.0);
	}
}