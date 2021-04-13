Shader "Zigurous/Unlit/Shadows Only"
{
    Properties
    {
        _Color ("Main Color", Color) = (1, 1, 1, 1)
        _MainTex ("Base (RGB)", 2D) = "white" {}
        _Cutoff ("Cutout", Range(0, 1)) = 0.5
    }

    SubShader
    {
        Pass
        {
            Alphatest Greater[_Cutoff]
            SetTexture[_MainTex]
        }

        Pass
        {
            Blend DstColor Zero
            Tags { "LightMode" = "ForwardBase" }

            CGPROGRAM

            #include "UnityCG.cginc"
            #include "AutoLight.cginc"

            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_fwdbase

            struct v2f
            {
                float4 pos : SV_POSITION;
                LIGHTING_COORDS(0, 1)
            };

            v2f vert (appdata_base v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o);
                return o;
            }

            fixed4 frag (v2f i) : COLOR
            {
                return LIGHT_ATTENUATION(i);
            }

            ENDCG
        }

    }

    Fallback "Transparent/Cutout/VertexLit"
}
