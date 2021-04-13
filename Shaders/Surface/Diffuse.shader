Shader "Zigurous/Surface/Diffuse"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _BumpMap ("Bumpmap", 2D) = "bump" {}
        _Tint ("Color", Color) = (1, 1, 1, 1)
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
        };

        sampler2D _MainTex;
        sampler2D _BumpMap;
        fixed3 _Tint;

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb * _Tint;
            o.Normal = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap));
        }

        ENDCG
    }

    Fallback "Diffuse"
}
