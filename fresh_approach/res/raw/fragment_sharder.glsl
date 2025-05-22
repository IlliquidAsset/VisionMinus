// 声明OES扩展
#extension GL_OES_EGL_image_external : require

// 设置默认精度
precision highp float;

// 纹理坐标，在fragment中使用
varying vec2 vTextureCo;

// 采样器-多个纹理对象可共享（尺寸可能不同）（必须引用上述扩展处理）
uniform samplerExternalOES uTexture;

// 亮度（-1.0——1.0），0.0
uniform lowp float uBrightness;

// 对比度（0.0——4.0），1.0
uniform lowp float uContrast;

// 饱和度（0.0——2.0），1.0
uniform lowp float uSaturation;

// 色温（-2.0——2.0），0.5
uniform lowp float uTemperature;
// 色温过滤器
const lowp vec3 cWarmFilter = vec3(0.93, 0.54, 0.0);
// RGB值转YIQ值
const mediump mat3 cRGB2YIQ = mat3(0.299, 0.587, 0.114, 0.596, -0.274, -0.322, 0.212, -0.523, 0.311);
// YIQ值转RGB值
const mediump mat3 cYIQ2RGB = mat3(1.0, 0.956, 0.621, 1.0, -0.272, -0.647, 1.0, -1.105, 1.702);

// 亮度加权
const mediump vec3 cLuminanceWeight = vec3(0.2125, 0.7154, 0.0721);

// 暗角（0.0——6.0），6.0
uniform lowp float uVignette;

// 锐化（-4.0——4.0），0.0
varying highp vec2 vLeftTextureCo;
varying highp vec2 vRightTextureCo;
varying highp vec2 vTopTextureCo;
varying highp vec2 vBottomTextureCo;
varying highp float vCenterMultiplier;
varying highp float vEdgeMultiplier;

void main() {
     // 获取纹理颜色值
     mediump vec4 texColor = texture2D(uTexture, vTextureCo);

     // 亮度
     lowp vec4 brightColor = vec4((texColor.rgb + vec3(uBrightness)), texColor.w);

     // 对比度
     // lowp vec4 contrastColor = vec4(((brightColor.rgb - vec3(0.5)) * uContrast + vec3(0.5)), brightColor.w);
     lowp vec4 contrastColor = vec4(mix(vec3(0.5), brightColor.rgb, uContrast), brightColor.a);

     // 饱和度
     lowp float luminance = dot(contrastColor.rgb, cLuminanceWeight);
     lowp vec3 greyScaleColor = vec3(luminance);
     lowp vec4 saturationColor = vec4(mix(greyScaleColor, contrastColor.rgb, uSaturation), contrastColor.w);

     // 色温
     mediump vec3 yiq = cRGB2YIQ * saturationColor.rgb;
     yiq.b = clamp(yiq.b, -0.5226, 0.5226);
     lowp vec3 rgbValue = cYIQ2RGB * yiq;
     lowp float rValue = (rgbValue.r < 0.5 ? (2.0 * rgbValue.r * cWarmFilter.r) : (1.0 - 2.0 * (1.0 - rgbValue.r) * (1.0 - cWarmFilter.r)));
     lowp float gValue = (rgbValue.g < 0.5 ? (2.0 * rgbValue.g * cWarmFilter.g) : (1.0 - 2.0 * (1.0 - rgbValue.g) * (1.0 - cWarmFilter.g)));
     lowp float bValue =  (rgbValue.b < 0.5 ? (2.0 * rgbValue.b * cWarmFilter.b) : (1.0 - 2.0 * (1.0 - rgbValue.b) * (1.0 - cWarmFilter.b)));
     lowp vec3 rgbChange = vec3(rValue, gValue, bValue);
     lowp vec4 temColor = vec4(mix(rgbValue, rgbChange, uTemperature), saturationColor.a);

     // 暗角
     lowp float vignetteValue = distance(vTextureCo, vec2(0.5,0.5));
     temColor *= (1.0 - smoothstep(0.0, uVignette, vignetteValue));
     lowp vec4 vignetteColor = vec4(vec3(temColor) , 1.0);

     // 锐化
     mediump vec3 sharpColor = vignetteColor.rgb;
     mediump vec3 leftTextureColor = texture2D(uTexture, vLeftTextureCo).rgb;
     mediump vec3 rightTextureColor = texture2D(uTexture, vRightTextureCo).rgb;
     mediump vec3 topTextureColor = texture2D(uTexture, vTopTextureCo).rgb;
     mediump vec3 bottomTextureColor = texture2D(uTexture, vBottomTextureCo).rgb;
     mediump vec3 sharpChange = sharpColor * vCenterMultiplier - (leftTextureColor * vEdgeMultiplier + rightTextureColor * vEdgeMultiplier + topTextureColor * vEdgeMultiplier + bottomTextureColor * vEdgeMultiplier);
     mediump float bottomW = texture2D(uTexture, vBottomTextureCo).w;
     mediump vec4 sharpFinally = vec4(sharpChange, bottomW);

     // 赋值
     gl_FragColor = sharpFinally;
}