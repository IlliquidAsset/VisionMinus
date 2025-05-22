.class public Lcom/appunite/ffmpeg/NormalVideo;
.super Ljava/lang/Object;
.source "NormalVideo.java"


# instance fields
.field context:Landroid/content/Context;

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoorData:[F

.field private mTextureID:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexData:[F

.field private maPositionHandle:I

.field private maTexCoorHandle:I

.field private muMVPMatrixHandle:I

.field private sNormalVideo:Lcom/appunite/ffmpeg/NormalVideo;

.field vrmode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 17
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mVertexData:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 25
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mTexCoorData:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 38
    iput-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mMVPMatrix:[F

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->vrmode:I

    .line 44
    invoke-direct {p0}, Lcom/appunite/ffmpeg/NormalVideo;->initVertexData()V

    .line 45
    iput-object p1, p0, Lcom/appunite/ffmpeg/NormalVideo;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p0, p2}, Lcom/appunite/ffmpeg/NormalVideo;->setShader(I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initVertexData()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mVertexData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 54
    iget-object v1, p0, Lcom/appunite/ffmpeg/NormalVideo;->mVertexData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 55
    iget-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    iget-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mTexCoorData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 60
    iget-object v2, p0, Lcom/appunite/ffmpeg/NormalVideo;->mTexCoorData:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 61
    iget-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public DrawSelf()V
    .locals 8

    .line 97
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 100
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 101
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mTextureID:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 103
    iget v2, p0, Lcom/appunite/ffmpeg/NormalVideo;->maPositionHandle:I

    iget-object v7, p0, Lcom/appunite/ffmpeg/NormalVideo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 104
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 106
    iget v1, p0, Lcom/appunite/ffmpeg/NormalVideo;->maTexCoorHandle:I

    iget-object v6, p0, Lcom/appunite/ffmpeg/NormalVideo;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 107
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->maTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 109
    iget-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 110
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->muMVPMatrixHandle:I

    iget-object v2, p0, Lcom/appunite/ffmpeg/NormalVideo;->mMVPMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 112
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public getTextureID()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mTextureID:I

    return v0
.end method

.method public setShader(I)V
    .locals 6

    .line 65
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->vrmode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "uMVPMatrix"

    const-string v2, "aTexCoor"

    const-string v3, "aPosition"

    const-string v4, "vertexShader.sh"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/appunite/ffmpeg/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v4, p0, Lcom/appunite/ffmpeg/NormalVideo;->context:Landroid/content/Context;

    const-string v5, "fragShaderDistor.sh"

    invoke-static {v5, v4}, Lcom/appunite/ffmpeg/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v0, v4}, Lcom/appunite/ffmpeg/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mProgram:I

    if-nez v0, :cond_2

    return-void

    .line 87
    :cond_2
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->maPositionHandle:I

    .line 88
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->maTexCoorHandle:I

    .line 89
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->muMVPMatrixHandle:I

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/appunite/ffmpeg/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v4, p0, Lcom/appunite/ffmpeg/NormalVideo;->context:Landroid/content/Context;

    const-string v5, "fragShader.sh"

    invoke-static {v5, v4}, Lcom/appunite/ffmpeg/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v0, v4}, Lcom/appunite/ffmpeg/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mProgram:I

    if-nez v0, :cond_4

    return-void

    .line 75
    :cond_4
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->maPositionHandle:I

    .line 76
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->maTexCoorHandle:I

    .line 77
    iget v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->mProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appunite/ffmpeg/NormalVideo;->muMVPMatrixHandle:I

    .line 93
    :goto_0
    iput p1, p0, Lcom/appunite/ffmpeg/NormalVideo;->vrmode:I

    return-void
.end method
