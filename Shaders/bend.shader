shader_type canvas_item;
render_mode unshaded;

uniform float factor: hint_range(0.1,1.3);

void fragment()
{
	vec2 uv = SCREEN_UV;
	COLOR = texture(SCREEN_TEXTURE, vec2(uv.x, abs(uv.y - 0.5) * ((0.5 - abs(uv.x - 0.5)) + factor)));
}