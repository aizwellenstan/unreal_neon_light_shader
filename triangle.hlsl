#define PI 3.14159265359
#define TWO_PI 6.28318530718
float2 uv = 0;

{
    float2 uv = ((fragCoord.xy-.5)/.5);
     
    int N = 3;
    
    float a = atan2(uv.x,uv.y) + PI,
          r = TWO_PI / float(N),
          d = cos(floor(0.5 + a / r) * r - a) * length(uv);

    float s = (smoothstep(0.41,0.4,d));

    return float3(s,s,s);
}