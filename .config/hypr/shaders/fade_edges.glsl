precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {
    // get the original color
    vec4 original_color = texture2D(tex, v_texcoord);

    // calculate fade for the left 5% edge
    float left_fade = smoothstep(0.0, 0.05, v_texcoord.x);

    // calculate fade for the right 5% edge
    float right_fade = smoothstep(1.0, 0.95, v_texcoord.x);

    // combine the fades
    float vignette = left_fade * right_fade;

    // apply the vignette
    gl_FragColor = vec4(original_color.rgb * (0.3 + 0.7 * vignette), original_color.a);
}
