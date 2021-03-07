float2 jitterOffsets[8] = (
    float2( 0.125,-0.375),
    float2(-0.125, 0.375),
    float2( 0.625, 0.125),
    float2( 0.375,-0.625),
    float2(-0.625, 0.625),
    float2(-0.875,-0.125),
    float2( 0.375,-0.875),
    float2( 0.875, 0.875)
);

float2 TAAJitter(float2 coord, float w)
{
    float2 offset = jitterOffsets[int(mod(frameCounter, 8))] * (w / float2(viewWidth, viewHeight));
    return coord + offset;
}
