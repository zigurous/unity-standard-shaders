Shader "Zigurous/Surface/Rim Lighting"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _BumpMap ("Bumpmap", 2D) = "bump" {}
        _Tint ("Color", Color) = (1, 1, 1, 1)
        _RimColor ("Rim Color", Color) = (0.26, 0.19, 0.16, 0.0)
        _RimPower ("Rim Power", Range(0.5, 8.0)) = 3.0
    }

    SubShader
    {
        Tags { "RenderType"="Opaque" }

        CGPROGRAM

        #pragma surface surf Lambert

        struct Input
        {
            float2 uv_MainTex;
            float2 uv_BumpMap;
            float3 viewDir;
        };

        sampler2D _MainTex;
        sampler2D _BumpMap;
        fixed3 _Tint;
        fixed3 _RimColor;
        float _RimPower;

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb * _Tint;
            o.Normal = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap));
            half rim = 1.0 - saturate(dot(normalize(IN.viewDir), o.Normal));
            o.Emission = _RimColor * pow(rim, _RimPower);
        }

        ENDCG
    }

    Fallback "Diffuse"
}
