shader_type canvas_item;
render_mode unshaded;

uniform float cutoff : hint_range(0,1.0); // cutoff is driving value of the effect

uniform mediump float offset : hint_range(1.0,1.2); // offset is used to add delay of fix offset issues

uniform sampler2D mask : hint_albedo; // mask is the effect template

uniform vec4 color : hint_color;

void fragment()
{
	// texture should be read as per screen uv to ensure that effect is at the center of the screeen
	// and as plain uv to allow for the position of the Effect Node to decide the center 
	COLOR = texture(SCREEN_TEXTURE, UV);
	vec4 tex = texture(mask, UV);
	
	// using mix and smoothstep functions is better than if-else computation
	// because branching can cause convergence if not handled properly
	// and because static if-else optimizations are hardware dependent
	COLOR.rgb = mix(COLOR.rgb, color.rgb, smoothstep(tex.r, 1, cutoff*offset));
}