.class public Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
.source "GPUImageSaturationFilter.java"


# static fields
.field public static final SATURATION_FRAGMENT_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float saturation;\n \n // Values from \"Graphics Shaders: Theory and Practice\" by Bailey and Cunningham\n const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n \n void main()\n {\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp float luminance = dot(textureColor.rgb, luminanceWeighting);\n    lowp vec3 greyScaleColor = vec3(luminance);\n    \n    gl_FragColor = vec4(mix(greyScaleColor, textureColor.rgb, saturation), textureColor.w);\n     \n }"


# instance fields
.field private mSaturation:F

.field private mSaturationLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float saturation;\n \n // Values from \"Graphics Shaders: Theory and Practice\" by Bailey and Cunningham\n const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n \n void main()\n {\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp float luminance = dot(textureColor.rgb, luminanceWeighting);\n    lowp vec3 greyScaleColor = vec3(luminance);\n    \n    gl_FragColor = vec4(mix(greyScaleColor, textureColor.rgb, saturation), textureColor.w);\n     \n }"

    .line 52
    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;->mSaturation:F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .line 58
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInit()V

    .line 59
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;->getProgram()I

    move-result v0

    const-string v1, "saturation"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;->mSaturationLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    .line 64
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInitialized()V

    .line 65
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;->mSaturation:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;->setSaturation(F)V

    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    .line 69
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;->mSaturation:F

    .line 70
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;->mSaturationLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;->setFloat(IF)V

    return-void
.end method
