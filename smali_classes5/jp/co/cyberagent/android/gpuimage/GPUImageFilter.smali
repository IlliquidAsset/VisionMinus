.class public Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"


# static fields
.field public static final NO_FILTER_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field public static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"


# instance fields
.field private final mFragmentShader:Ljava/lang/String;

.field protected mGLAttribPosition:I

.field protected mGLAttribTextureCoordinate:I

.field protected mGLProgId:I

.field protected mGLUniformTexture:I

.field private mIsInitialized:Z

.field protected mOutputHeight:I

.field protected mOutputWidth:I

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 62
    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    .line 67
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mVertexShader:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mFragmentShader:Ljava/lang/String;

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 275
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p0, "\\A"

    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static loadShader(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 261
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 262
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 264
    invoke-static {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mIsInitialized:Z

    .line 91
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 92
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDestroy()V

    return-void
.end method

.method public getAttribPosition()I
    .locals 1

    .line 155
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribPosition:I

    return v0
.end method

.method public getAttribTextureCoordinate()I
    .locals 1

    .line 159
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribTextureCoordinate:I

    return v0
.end method

.method public getOutputHeight()I
    .locals 1

    .line 147
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mOutputHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    .line 143
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mOutputWidth:I

    return v0
.end method

.method public getProgram()I
    .locals 1

    .line 151
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLProgId:I

    return v0
.end method

.method public getUniformTexture()I
    .locals 1

    .line 163
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLUniformTexture:I

    return v0
.end method

.method public final init()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInit()V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mIsInitialized:Z

    .line 74
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInitialized()V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mIsInitialized:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .line 105
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 106
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 107
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribPosition:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 113
    iget p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 114
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 117
    iget p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p2, -0x1

    const/16 p3, 0xde1

    if-eq p1, p2, :cond_1

    const p2, 0x84c0

    .line 119
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 120
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 123
    :cond_1
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDrawArraysPre()V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 124
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 125
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 126
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 127
    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 0

    return-void
.end method

.method public onInit()V
    .locals 2

    .line 78
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "position"

    .line 79
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribPosition:I

    .line 80
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLUniformTexture:I

    .line 81
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mGLAttribTextureCoordinate:I

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mIsInitialized:Z

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0

    .line 99
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mOutputWidth:I

    .line 100
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mOutputHeight:I

    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    .line 254
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 256
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    .line 133
    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setFloat(IF)V
    .locals 1

    .line 176
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$2;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$2;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;IF)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setFloatArray(I[F)V
    .locals 1

    .line 212
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$6;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$6;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setFloatVec2(I[F)V
    .locals 1

    .line 185
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$3;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$3;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setFloatVec3(I[F)V
    .locals 1

    .line 194
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$4;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$4;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setFloatVec4(I[F)V
    .locals 1

    .line 203
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$5;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$5;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setInteger(II)V
    .locals 1

    .line 167
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$1;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;II)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setPoint(ILandroid/graphics/PointF;)V
    .locals 1

    .line 221
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$7;

    invoke-direct {v0, p0, p2, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$7;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setUniformMatrix3f(I[F)V
    .locals 1

    .line 234
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$8;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$8;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setUniformMatrix4f(I[F)V
    .locals 1

    .line 244
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$9;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter$9;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
