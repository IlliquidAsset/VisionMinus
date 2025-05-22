.class public Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;
.super Lcom/lewis/edit/utils/mp4/BaseGLFilter;
.source "ColorMixingGLFilter.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/ColorMixingInterface;


# instance fields
.field private mBrightness:F

.field private mColorTem:F

.field private mContrast:F

.field private mGLBrightness:I

.field private mGLColorTem:I

.field private mGLContrast:I

.field private mGLHeight:I

.field private mGLSaturation:I

.field private mGLSharpness:I

.field private mGLVignette:I

.field private mGLWidth:I

.field private mSaturation:F

.field private mSharpness:F

.field private mVignette:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "// \u9876\u70b9\u5750\u6807 vertex coordinate\nattribute vec4 aVertexCo;\n\n// \u7eb9\u7406\u5750\u6807\nattribute vec4 aTextureCo;\n\n// \u7eb9\u7406\u5750\u6807-\u4e0efragment shader\u4ea4\u4e92\uff08\u53ea\u80fd\u5728vertex\u4e2d\u4fee\u6539\uff09\nvarying vec2 vTextureCo;\n\n// \u6b63\u4ea4\u6295\u5f71\u77e9\u9635\uff08\u4f7f\u7528\u6b63\u4ea4\u6295\u5f71\uff0c\u4e0d\u7ba1\u7269\u4f53\u591a\u8fdc\u591a\u8fd1\uff0c\u7269\u4f53\u770b\u8d77\u6765\u603b\u662f\u5f62\u72b6\u3001\u5927\u5c0f\u6bd4\u4f8b\u76f8\u540c\u7684\uff09\nuniform mat4 uVertexMatrix;\n\n// \u53d8\u6362\u540e\u7eb9\u7406\u77e9\u9635\nuniform mat4 uTextureMatrix;\n\n// \u7eb9\u7406\u5bbd\u9ad8\nuniform float uTextureWidth;\nuniform float uTextureHeight;\n\n// \u5904\u7406\u9510\u5ea6\nuniform float uSharpness;\n\nvarying vec2 vLeftTextureCo;\nvarying vec2 vRightTextureCo;\nvarying vec2 vTopTextureCo;\nvarying vec2 vBottomTextureCo;\nvarying float vCenterMultiplier;\nvarying float vEdgeMultiplier;\n\nvoid main() {\n    // \u4fee\u6539\u7eb9\u7406\u4f4d\u7f6e\uff08\u5728fragment\u4e2d\u88ab\u4f7f\u7528\uff09\n    vTextureCo = (uTextureMatrix * aTextureCo).xy;\n    // \u66f4\u65b0\u9876\u70b9\u5750\u6807\u4fe1\u606f\uff0c\u4f7f\u7528\u6b63\u4ea4\u6295\u5f71\u5c06\u5176\u8f6c\u6362\u5230\u5f52\u4e00\u5316\u5750\u6807\u5185\n    gl_Position = uVertexMatrix*aVertexCo;\n\n    // \u5904\u7406\u9510\u5316\n    mediump vec2 widthStep = vec2(uTextureWidth, 0.0);\n    mediump vec2 heightStep = vec2(0.0, uTextureHeight);\n    vLeftTextureCo = vTextureCo - widthStep;\n    vRightTextureCo = vTextureCo + widthStep;\n    vTopTextureCo = vTextureCo + heightStep;\n    vBottomTextureCo = vTextureCo - heightStep;\n    vCenterMultiplier = 1.0 + 4.0 * uSharpness;\n    vEdgeMultiplier = uSharpness;\n}"

    const-string v1, "// \u8bbe\u7f6e\u9ed8\u8ba4\u7cbe\u5ea6\nprecision highp float;\n\n// \u7eb9\u7406\u5750\u6807\uff0c\u5728fragment\u4e2d\u4f7f\u7528\nvarying vec2 vTextureCo;\n\n// \u91c7\u6837\u5668-\u591a\u4e2a\u7eb9\u7406\u5bf9\u8c61\u53ef\u5171\u4eab\uff08\u5c3a\u5bf8\u53ef\u80fd\u4e0d\u540c\uff09\uff08\u5fc5\u987b\u5f15\u7528\u4e0a\u8ff0\u6269\u5c55\u5904\u7406\uff09\nuniform sampler2D uTexture;\n\n// \u4eae\u5ea6\uff08-1.0\u2014\u20141.0\uff09\uff0c0.0\nuniform lowp float uBrightness;\n\n// \u5bf9\u6bd4\u5ea6\uff080.0\u2014\u20144.0\uff09\uff0c1.0\nuniform lowp float uContrast;\n\n// \u9971\u548c\u5ea6\uff080.0\u2014\u20142.0\uff09\uff0c1.0\nuniform lowp float uSaturation;\n\n// \u8272\u6e29\uff08-2.0\u2014\u20142.0\uff09\uff0c0.5\nuniform lowp float uTemperature;\n// \u8272\u6e29\u8fc7\u6ee4\u5668\nconst lowp vec3 cWarmFilter = vec3(0.93, 0.54, 0.0);\n// RGB\u503c\u8f6cYIQ\u503c\nconst mediump mat3 cRGB2YIQ = mat3(0.299, 0.587, 0.114, 0.596, -0.274, -0.322, 0.212, -0.523, 0.311);\n// YIQ\u503c\u8f6cRGB\u503c\nconst mediump mat3 cYIQ2RGB = mat3(1.0, 0.956, 0.621, 1.0, -0.272, -0.647, 1.0, -1.105, 1.702);\n\n// \u4eae\u5ea6\u52a0\u6743\nconst mediump vec3 cLuminanceWeight = vec3(0.2125, 0.7154, 0.0721);\n\n// \u6697\u89d2\uff080.0\u2014\u20146.0\uff09\uff0c6.0\nuniform lowp float uVignette;\n\n// \u9510\u5316\uff08-4.0\u2014\u20144.0\uff09\uff0c0.0\nvarying highp vec2 vLeftTextureCo;\nvarying highp vec2 vRightTextureCo;\nvarying highp vec2 vTopTextureCo;\nvarying highp vec2 vBottomTextureCo;\nvarying highp float vCenterMultiplier;\nvarying highp float vEdgeMultiplier;\n\nvoid main() {\n  // \u83b7\u53d6\u7eb9\u7406\u989c\u8272\u503c\n  mediump vec4 texColor = texture2D(uTexture, vTextureCo);\n\n  // \u4eae\u5ea6\n  lowp vec4 brightColor = vec4((texColor.rgb + vec3(uBrightness)), texColor.w);\n\n  // \u5bf9\u6bd4\u5ea6\n  lowp vec4 contrastColor = vec4(((brightColor.rgb - vec3(0.5)) * uContrast + vec3(0.5)), brightColor.w);\n\n  // \u9971\u548c\u5ea6\n  lowp float luminance = dot(contrastColor.rgb, cLuminanceWeight);\n  lowp vec3 greyScaleColor = vec3(luminance);\n  lowp vec4 saturationColor = vec4(mix(greyScaleColor, contrastColor.rgb, uSaturation), contrastColor.w);\n\n  // \u8272\u6e29\n  mediump vec3 yiq = cRGB2YIQ * saturationColor.rgb;\n  yiq.b = clamp(yiq.b, -0.5226, 0.5226);\n  lowp vec3 rgbValue = cYIQ2RGB * yiq;\n  lowp float rValue = (rgbValue.r < 0.5 ? (2.0 * rgbValue.r * cWarmFilter.r) : (1.0 - 2.0 * (1.0 - rgbValue.r) * (1.0 - cWarmFilter.r)));\n  lowp float gValue = (rgbValue.g < 0.5 ? (2.0 * rgbValue.g * cWarmFilter.g) : (1.0 - 2.0 * (1.0 - rgbValue.g) * (1.0 - cWarmFilter.g)));\n  lowp float bValue =  (rgbValue.b < 0.5 ? (2.0 * rgbValue.b * cWarmFilter.b) : (1.0 - 2.0 * (1.0 - rgbValue.b) * (1.0 - cWarmFilter.b)));\n  lowp vec3 rgbChange = vec3(rValue, gValue, bValue);\n  lowp vec4 temColor = vec4(mix(rgbValue, rgbChange, uTemperature), saturationColor.a);\n\n  // \u6697\u89d2\n  lowp float vignetteValue = distance(vTextureCo, vec2(0.5,0.5));\n  temColor *= (1.0 - smoothstep(0.0, uVignette, vignetteValue));\n  lowp vec4 vignetteColor = vec4(vec3(temColor) , 1.0);\n\n  // \u9510\u5316\n  mediump vec3 sharpColor = vignetteColor.rgb;\n  mediump vec3 leftTextureColor = texture2D(uTexture, vLeftTextureCo).rgb;\n  mediump vec3 rightTextureColor = texture2D(uTexture, vRightTextureCo).rgb;\n  mediump vec3 topTextureColor = texture2D(uTexture, vTopTextureCo).rgb;\n  mediump vec3 bottomTextureColor = texture2D(uTexture, vBottomTextureCo).rgb;\n  mediump vec3 sharpChange = sharpColor * vCenterMultiplier - (leftTextureColor * vEdgeMultiplier + rightTextureColor * vEdgeMultiplier + topTextureColor * vEdgeMultiplier + bottomTextureColor * vEdgeMultiplier);\n  mediump float bottomW = texture2D(uTexture, vBottomTextureCo).w;\n  mediump vec4 sharpFinally = vec4(sharpChange, bottomW);\n\n  // \u8d4b\u503c\n  gl_FragColor = sharpFinally;\n}"

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mBrightness:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    iput v1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mContrast:F

    .line 19
    iput v1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mSaturation:F

    .line 22
    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mColorTem:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 25
    iput v1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mVignette:F

    .line 28
    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mSharpness:F

    return-void
.end method


# virtual methods
.method protected onBindTexture(I)V
    .locals 1

    .line 187
    invoke-super {p0, p1}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->onBindTexture(I)V

    .line 189
    iget p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLBrightness:I

    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mBrightness:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 191
    iget p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLContrast:I

    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mContrast:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 193
    iget p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLSaturation:I

    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mSaturation:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 195
    iget p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLColorTem:I

    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mColorTem:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 197
    iget p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLVignette:I

    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mVignette:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 199
    iget p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLSharpness:I

    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mSharpness:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method protected onCreate()V
    .locals 2

    .line 167
    invoke-super {p0}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->onCreate()V

    .line 169
    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLProgram:I

    const-string v1, "uTextureWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLWidth:I

    .line 170
    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLProgram:I

    const-string v1, "uTextureHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLHeight:I

    .line 172
    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLProgram:I

    const-string v1, "uBrightness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLBrightness:I

    .line 174
    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLProgram:I

    const-string v1, "uContrast"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLContrast:I

    .line 176
    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLProgram:I

    const-string v1, "uSaturation"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLSaturation:I

    .line 178
    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLProgram:I

    const-string v1, "uTemperature"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLColorTem:I

    .line 180
    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLProgram:I

    const-string v1, "uVignette"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLVignette:I

    .line 182
    iget v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLProgram:I

    const-string v1, "uSharpness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mGLSharpness:I

    return-void
.end method

.method protected onSetExpandData()V
    .locals 0

    .line 204
    invoke-super {p0}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->onSetExpandData()V

    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mBrightness:F

    return-void
.end method

.method public setColorTem(F)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mColorTem:F

    return-void
.end method

.method public setContrast(F)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mContrast:F

    return-void
.end method

.method public setSaturation(F)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mSaturation:F

    return-void
.end method

.method public setSharpness(F)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mSharpness:F

    return-void
.end method

.method public setVignette(F)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->mVignette:F

    return-void
.end method
