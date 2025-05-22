// 顶点坐标 vertex coordinate
attribute vec4 aVertexCo;

// 纹理坐标
attribute vec4 aTextureCo;

// 纹理坐标-与fragment shader交互（只能在vertex中修改）
varying vec2 vTextureCo;

// 正交投影矩阵（使用正交投影，不管物体多远多近，物体看起来总是形状、大小比例相同的）
uniform mat4 uVertexMatrix;

// 变换后纹理矩阵
uniform mat4 uTextureMatrix;

// 纹理宽高
uniform float uTextureWidth;
uniform float uTextureHeight;

// 处理锐化
uniform float uSharpness;

varying vec2 vLeftTextureCo;
varying vec2 vRightTextureCo;
varying vec2 vTopTextureCo;
varying vec2 vBottomTextureCo;
varying float vCenterMultiplier;
varying float vEdgeMultiplier;

void main() {
     // 修改纹理位置（在fragment中被使用）
     vTextureCo = (uTextureMatrix * aTextureCo).xy;
     // 更新顶点坐标信息，使用正交投影将其转换到归一化坐标内
     gl_Position = uVertexMatrix*aVertexCo;

     // 处理锐化
     mediump vec2 widthStep = vec2(uTextureWidth, 0.0);
     mediump vec2 heightStep = vec2(0.0, uTextureHeight);
     vLeftTextureCo = vTextureCo - widthStep;
     vRightTextureCo = vTextureCo + widthStep;
     vTopTextureCo = vTextureCo + heightStep;
     vBottomTextureCo = vTextureCo - heightStep;
     vCenterMultiplier = 1.0 + 4.0 * uSharpness;
     vEdgeMultiplier = uSharpness;
}