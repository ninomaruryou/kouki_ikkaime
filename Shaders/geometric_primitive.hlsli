struct VS_OUT
{
    float4 position : SV_POSITION;//�ʒu
    float4 color : COLOR;//�F
    float2 texcoord : TEXCOORD; //���x�ȁi�摜�Ȃǂ̕��G�ȃs�N�Z���n�����߂̃f�[�^�j
};

cbuffer OBJECT_CONSTANT_BUFFER : register(b0)
{
    row_major float4x4 world;
    float4 material_color;
};
cbuffer SCENE_CONSTANT_BUFFER : register(b1)
{
    row_major float4x4 view_projection;
    float4 light_direction;
};