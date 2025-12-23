.class public Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
.source "GPUImageHazeFilter.java"


# static fields
.field public static final HAZE_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp float distance;\nuniform highp float slope;\nuniform highp vec4 hazeColor;\n\nvoid main()\n{\n\t//todo reconsider precision modifiers\t \n\t highp vec4 color = hazeColor;//todo reimplement as a parameter\n\n\t highp float  d = textureCoordinate.y * slope  +  distance; \n\n\t highp vec4 c = texture2D(inputImageTexture, textureCoordinate) ; // consider using unpremultiply\n\n\t c = (c - d * color) / (1.0 -d);\n\n\t gl_FragColor = c; //consider using premultiply(c);\n}\n"


# instance fields
.field private mDistance:F

.field private mDistanceLocation:I

.field private mHazeColor:[F

.field private mHazeColorLocation:I

.field private mSlope:F

.field private mSlopeLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;-><init>(FF)V

    return-void
.end method

.method public setHazeColor(FFFF)V
    .locals 2

    .line 105
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mHazeColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 106
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mHazeColorLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mHazeColor:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->setFloatVec4(I[F)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp float distance;\nuniform highp float slope;\nuniform highp vec4 hazeColor;\n\nvoid main()\n{\n\t//todo reconsider precision modifiers\t \n\t highp vec4 color = hazeColor;//todo reimplement as a parameter\n\n\t highp float  d = textureCoordinate.y * slope  +  distance; \n\n\t highp vec4 c = texture2D(inputImageTexture, textureCoordinate) ; // consider using unpremultiply\n\n\t c = (c - d * color) / (1.0 -d);\n\n\t gl_FragColor = c; //consider using premultiply(c);\n}\n"

    .line 59
    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mDistance:F

    .line 61
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mSlope:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mHazeColor:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .line 66
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInit()V

    .line 67
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->getProgram()I

    move-result v0

    const-string v1, "distance"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mDistanceLocation:I

    .line 68
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->getProgram()I

    move-result v0

    const-string v1, "slope"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mSlopeLocation:I

    .line 69
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->getProgram()I

    move-result v0

    const-string v1, "hazeColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mHazeColorLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 2

    .line 73
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInitialized()V

    .line 74
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mDistance:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->setDistance(F)V

    .line 75
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mSlope:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->setSlope(F)V

    .line 76
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mHazeColorLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mHazeColor:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->setFloatVec4(I[F)V

    return-void
.end method

.method public setDistance(F)V
    .locals 1

    .line 84
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mDistance:F

    .line 85
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mDistanceLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->setFloat(IF)V

    return-void
.end method

.method public setSlope(F)V
    .locals 1

    .line 94
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mSlope:F

    .line 95
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->mSlopeLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->setFloat(IF)V

    return-void
.end method
