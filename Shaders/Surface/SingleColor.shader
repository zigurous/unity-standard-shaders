Shader "Zigurous/Surface/Single Color"
{
    Properties
    {
        _Color ("Color", Color) = (1, 1, 1, 1)
    }

    SubShader
    {
        Tags { "RenderType"="Opaque" }

        CGPROGRAM

        #pragma surface surf Lambert

        struct Input
        {
            float4 color : COLOR;
        };

        fixed3 _Color;

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _Color;
        }

        ENDCG
    }

    Fallback "Diffuse"
}
