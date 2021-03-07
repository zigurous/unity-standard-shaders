// Spheremap Transform from https://aras-p.info/texts/CompactNormalStorage.html

float2 EncodeNormal(float3 n)
{
    float f = sqrt(n.z * 8.0 + 8.0);
    return n.xy / f + 0.5;
}

float3 DecodeNormal(float2 enc)
{
    float2 fenc = enc * 4.0 - 2.0;
    float f = dot(fenc,fenc);
    float g = sqrt(1.0 - f / 4.0);
    float3 n;
    n.xy = fenc * g;
    n.z = 1.0 - f / 2.0;
    return n;
}
