#ifdef GL_ES
precision mediump float;
#endif

#define TWO_PI 6.28318530718

uniform float u_time;
uniform vec2 u_resolution;

vec3 green = vec3(0.5098, 0.5804, 0.251);
vec3 purpl = vec3(0.3423,0.0,0.5725);
vec3 pinkA = vec3(0.9333, 0.5255, 0.8118);
vec3 pinkB = vec3(0.7412, 0.0353, 0.6471);

void main() {
    vec2 st = gl_FragCoord.xy/u_resolution;
    vec3 color = vec3(0.0);
    vec3 pinks = vec3(0.0);

    vec2 pos = vec2(0.5)-st;
    float angle = atan(pos.y,pos.x);
    float rad = length(pos)*2.0;
    float timer = abs(sin(u_time));
    float freax = cos(angle*6.);

    color = mix(green, purpl, timer);
    pinks = mix(pinkA, pinkB, timer);

    gl_FragColor = vec4(abs(pinks/rad*0.661)-(tan(color)),1.0); // this one is the best so far
    //gl_FragColor = vec4((sin(st.y - 0.0666) / st.x ),0.5764,pow((pow(st.x,5.0)),0.1234),1.0);
    //gl_FragColor = vec4(atan(st.y),cos(st.x/0.00222),0.251,1.0);
    // gl_FragColor = vec4(abs(sin(green())),abs(tan(u_time)));
}