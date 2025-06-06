.class public Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;
.source "GPUImageSobelEdgeDetection.java"


# static fields
.field public static final SOBEL_EDGE_DETECTION:Ljava/lang/String; = "precision mediump float;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\n    float bottomLeftIntensity = texture2D(inputImageTexture, bottomLeftTextureCoordinate).r;\n    float topRightIntensity = texture2D(inputImageTexture, topRightTextureCoordinate).r;\n    float topLeftIntensity = texture2D(inputImageTexture, topLeftTextureCoordinate).r;\n    float bottomRightIntensity = texture2D(inputImageTexture, bottomRightTextureCoordinate).r;\n    float leftIntensity = texture2D(inputImageTexture, leftTextureCoordinate).r;\n    float rightIntensity = texture2D(inputImageTexture, rightTextureCoordinate).r;\n    float bottomIntensity = texture2D(inputImageTexture, bottomTextureCoordinate).r;\n    float topIntensity = texture2D(inputImageTexture, topTextureCoordinate).r;\n    float h = -topLeftIntensity - 2.0 * topIntensity - topRightIntensity + bottomLeftIntensity + 2.0 * bottomIntensity + bottomRightIntensity;\n    float v = -bottomLeftIntensity - 2.0 * leftIntensity - topLeftIntensity + bottomRightIntensity + 2.0 * rightIntensity + topRightIntensity;\n\n    float mag = length(vec2(h, v));\n\n    gl_FragColor = vec4(vec3(mag), 1.0);\n}"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;-><init>()V

    .line 63
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;-><init>()V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;->addFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 64
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3TextureSamplingFilter;

    const-string v1, "precision mediump float;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\n    float bottomLeftIntensity = texture2D(inputImageTexture, bottomLeftTextureCoordinate).r;\n    float topRightIntensity = texture2D(inputImageTexture, topRightTextureCoordinate).r;\n    float topLeftIntensity = texture2D(inputImageTexture, topLeftTextureCoordinate).r;\n    float bottomRightIntensity = texture2D(inputImageTexture, bottomRightTextureCoordinate).r;\n    float leftIntensity = texture2D(inputImageTexture, leftTextureCoordinate).r;\n    float rightIntensity = texture2D(inputImageTexture, rightTextureCoordinate).r;\n    float bottomIntensity = texture2D(inputImageTexture, bottomTextureCoordinate).r;\n    float topIntensity = texture2D(inputImageTexture, topTextureCoordinate).r;\n    float h = -topLeftIntensity - 2.0 * topIntensity - topRightIntensity + bottomLeftIntensity + 2.0 * bottomIntensity + bottomRightIntensity;\n    float v = -bottomLeftIntensity - 2.0 * leftIntensity - topLeftIntensity + bottomRightIntensity + 2.0 * rightIntensity + topRightIntensity;\n\n    float mag = length(vec2(h, v));\n\n    gl_FragColor = vec4(vec3(mag), 1.0);\n}"

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3TextureSamplingFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;->addFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    return-void
.end method


# virtual methods
.method public setLineSize(F)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;->getFilters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3TextureSamplingFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3TextureSamplingFilter;->setLineSize(F)V

    return-void
.end method
