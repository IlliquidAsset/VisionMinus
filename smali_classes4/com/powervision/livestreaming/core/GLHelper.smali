.class public Lcom/powervision/livestreaming/core/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field public static COORDS_PER_VERTEX:I = 0x0

.field private static Cam2dTextureVertices:[F = null

.field private static Cam2dTextureVertices_180:[F = null

.field private static Cam2dTextureVertices_270:[F = null

.field private static Cam2dTextureVertices_90:[F = null

.field private static CamTextureVertices:[F = null

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static FLOAT_SIZE_BYTES:I = 0x0

.field private static FRAGMENTSHADER_2D:Ljava/lang/String; = "precision highp float;\nvarying highp vec2 vTextureCoord;\nuniform sampler2D uTexture;\nvoid main(){\n    vec4  color = texture2D(uTexture, vTextureCoord);\n    gl_FragColor = color;\n}"

.field private static FRAGMENTSHADER_CAMERA:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying highp vec2 vTextureCoord;\nuniform sampler2D uTexture;\nvoid main(){\n    vec4  color = texture2D(uTexture, vTextureCoord);\n    gl_FragColor = color;\n}"

.field private static FRAGMENTSHADER_CAMERA2D:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying highp vec2 vTextureCoord;\nuniform samplerExternalOES uTexture;\nvoid main(){\n    vec4  color = texture2D(uTexture, vTextureCoord);\n    gl_FragColor = color;\n}"

.field private static MediaCodecTextureVertices:[F = null

.field public static SHORT_SIZE_BYTES:I = 0x0

.field private static ScreenTextureVertices:[F = null

.field private static SquareVertices:[F = null

.field public static TEXTURE_COORDS_PER_VERTEX:I = 0x0

.field private static VERTEXSHADER:Ljava/lang/String; = "attribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main(){\n    gl_Position= aPosition;\n    vTextureCoord = aTextureCoord;\n}"

.field private static final VERTEXSHADER_CAMERA2D:Ljava/lang/String; = "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nuniform mat4 uTextureMatrix;\nvarying vec2 vTextureCoord;\nvoid main(){\n    gl_Position= aPosition;\n    vTextureCoord = (uTextureMatrix * aTextureCoord).xy;\n}"

.field private static drawIndices:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 73
    fill-array-data v0, :array_0

    sput-object v0, Lcom/powervision/livestreaming/core/GLHelper;->drawIndices:[S

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 74
    fill-array-data v1, :array_1

    sput-object v1, Lcom/powervision/livestreaming/core/GLHelper;->SquareVertices:[F

    new-array v1, v0, [F

    .line 79
    fill-array-data v1, :array_2

    sput-object v1, Lcom/powervision/livestreaming/core/GLHelper;->CamTextureVertices:[F

    new-array v1, v0, [F

    .line 84
    fill-array-data v1, :array_3

    sput-object v1, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices:[F

    new-array v1, v0, [F

    .line 89
    fill-array-data v1, :array_4

    sput-object v1, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices_90:[F

    new-array v1, v0, [F

    .line 94
    fill-array-data v1, :array_5

    sput-object v1, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices_180:[F

    new-array v1, v0, [F

    .line 99
    fill-array-data v1, :array_6

    sput-object v1, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices_270:[F

    new-array v1, v0, [F

    .line 104
    fill-array-data v1, :array_7

    sput-object v1, Lcom/powervision/livestreaming/core/GLHelper;->MediaCodecTextureVertices:[F

    new-array v0, v0, [F

    .line 109
    fill-array-data v0, :array_8

    sput-object v0, Lcom/powervision/livestreaming/core/GLHelper;->ScreenTextureVertices:[F

    const/4 v0, 0x4

    .line 114
    sput v0, Lcom/powervision/livestreaming/core/GLHelper;->FLOAT_SIZE_BYTES:I

    const/4 v0, 0x2

    .line 115
    sput v0, Lcom/powervision/livestreaming/core/GLHelper;->SHORT_SIZE_BYTES:I

    .line 116
    sput v0, Lcom/powervision/livestreaming/core/GLHelper;->COORDS_PER_VERTEX:I

    .line 117
    sput v0, Lcom/powervision/livestreaming/core/GLHelper;->TEXTURE_COORDS_PER_VERTEX:I

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCamFrameBuff([I[III)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 274
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 275
    aget v0, p1, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    move v6, p2

    move v7, p3

    .line 276
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p2, 0x2800

    const p3, 0x46180400    # 9729.0f

    .line 277
    invoke-static {v2, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2801

    .line 279
    invoke-static {v2, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2802

    const p3, 0x47012f00    # 33071.0f

    .line 281
    invoke-static {v2, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2803

    .line 283
    invoke-static {v2, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 285
    aget p0, p0, v1

    const p2, 0x8d40

    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 286
    aget p0, p1, v1

    const p1, 0x8ce0

    invoke-static {p2, p1, v2, p0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 287
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 288
    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string p0, "createCamFrameBuff"

    .line 289
    invoke-static {p0}, Lcom/powervision/livestreaming/tools/GLESTools;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static createCamera2DProgram()I
    .locals 2

    .line 309
    sget-object v0, Lcom/powervision/livestreaming/core/GLHelper;->FRAGMENTSHADER_CAMERA2D:Ljava/lang/String;

    const-string v1, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nuniform mat4 uTextureMatrix;\nvarying vec2 vTextureCoord;\nvoid main(){\n    gl_Position= aPosition;\n    vTextureCoord = (uTextureMatrix * aTextureCoord).xy;\n}"

    invoke-static {v1, v0}, Lcom/powervision/livestreaming/tools/GLESTools;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createCameraProgram()I
    .locals 2

    .line 313
    sget-object v0, Lcom/powervision/livestreaming/core/GLHelper;->VERTEXSHADER:Ljava/lang/String;

    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->FRAGMENTSHADER_CAMERA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/GLESTools;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createMediaCodecProgram()I
    .locals 2

    .line 317
    sget-object v0, Lcom/powervision/livestreaming/core/GLHelper;->VERTEXSHADER:Ljava/lang/String;

    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->FRAGMENTSHADER_2D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/GLESTools;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createScreenProgram()I
    .locals 2

    .line 321
    sget-object v0, Lcom/powervision/livestreaming/core/GLHelper;->VERTEXSHADER:Ljava/lang/String;

    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->FRAGMENTSHADER_2D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/GLESTools;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static disableVertex(II)V
    .locals 0

    .line 304
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 305
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public static enableVertex(IILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 11

    .line 293
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 294
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 295
    sget v1, Lcom/powervision/livestreaming/core/GLHelper;->COORDS_PER_VERTEX:I

    mul-int/lit8 v4, v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    move v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 298
    sget v6, Lcom/powervision/livestreaming/core/GLHelper;->TEXTURE_COORDS_PER_VERTEX:I

    mul-int/lit8 v9, v6, 0x4

    const/16 v7, 0x1406

    const/4 v8, 0x0

    move v5, p1

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method private static flip(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method public static getCamera2DTextureVerticesBuffer(IF)Ljava/nio/FloatBuffer;
    .locals 14

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 362
    sget p0, Lcom/powervision/livestreaming/core/GLHelper;->FLOAT_SIZE_BYTES:I

    sget-object p1, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices:[F

    array-length p1, p1

    mul-int p0, p0, p1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 363
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 365
    sget-object p1, Lcom/powervision/livestreaming/core/GLHelper;->CamTextureVertices:[F

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 366
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0

    :cond_0
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x20

    const/16 v3, 0x40

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 381
    sget-object v2, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    goto :goto_0

    .line 378
    :cond_1
    sget-object v2, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices_270:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    goto :goto_0

    .line 375
    :cond_2
    sget-object v2, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices_180:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    goto :goto_0

    .line 372
    :cond_3
    sget-object v2, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices_90:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    :goto_0
    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    if-eq v1, v4, :cond_e

    if-ne v1, v3, :cond_4

    goto/16 :goto_8

    :cond_4
    cmpl-float v1, p1, v5

    if-lez v1, :cond_9

    .line 397
    aget v1, v2, v0

    cmpl-float v1, v1, v13

    if-nez v1, :cond_5

    sub-float v1, v13, p1

    goto :goto_1

    :cond_5
    move v1, p1

    :goto_1
    aput v1, v2, v0

    .line 398
    aget v1, v2, v11

    cmpl-float v1, v1, v13

    if-nez v1, :cond_6

    sub-float v1, v13, p1

    goto :goto_2

    :cond_6
    move v1, p1

    :goto_2
    aput v1, v2, v11

    .line 399
    aget v1, v2, v9

    cmpl-float v1, v1, v13

    if-nez v1, :cond_7

    sub-float v1, v13, p1

    goto :goto_3

    :cond_7
    move v1, p1

    :goto_3
    aput v1, v2, v9

    .line 400
    aget v1, v2, v7

    cmpl-float v1, v1, v13

    if-nez v1, :cond_8

    sub-float p1, v13, p1

    :cond_8
    aput p1, v2, v7

    goto/16 :goto_10

    .line 402
    :cond_9
    aget v1, v2, v12

    cmpl-float v1, v1, v13

    if-nez v1, :cond_a

    add-float v1, p1, v13

    goto :goto_4

    :cond_a
    neg-float v1, p1

    :goto_4
    aput v1, v2, v12

    .line 403
    aget v1, v2, v10

    cmpl-float v1, v1, v13

    if-nez v1, :cond_b

    add-float v1, p1, v13

    goto :goto_5

    :cond_b
    neg-float v1, p1

    :goto_5
    aput v1, v2, v10

    .line 404
    aget v1, v2, v8

    cmpl-float v1, v1, v13

    if-nez v1, :cond_c

    add-float v1, p1, v13

    goto :goto_6

    :cond_c
    neg-float v1, p1

    :goto_6
    aput v1, v2, v8

    .line 405
    aget v1, v2, v6

    cmpl-float v1, v1, v13

    if-nez v1, :cond_d

    add-float/2addr p1, v13

    goto :goto_7

    :cond_d
    neg-float p1, p1

    :goto_7
    aput p1, v2, v6

    goto/16 :goto_10

    :cond_e
    :goto_8
    cmpl-float v1, p1, v5

    if-lez v1, :cond_13

    .line 385
    aget v1, v2, v12

    cmpl-float v1, v1, v13

    if-nez v1, :cond_f

    sub-float v1, v13, p1

    goto :goto_9

    :cond_f
    move v1, p1

    :goto_9
    aput v1, v2, v12

    .line 386
    aget v1, v2, v10

    cmpl-float v1, v1, v13

    if-nez v1, :cond_10

    sub-float v1, v13, p1

    goto :goto_a

    :cond_10
    move v1, p1

    :goto_a
    aput v1, v2, v10

    .line 387
    aget v1, v2, v8

    cmpl-float v1, v1, v13

    if-nez v1, :cond_11

    sub-float v1, v13, p1

    goto :goto_b

    :cond_11
    move v1, p1

    :goto_b
    aput v1, v2, v8

    .line 388
    aget v1, v2, v6

    cmpl-float v1, v1, v13

    if-nez v1, :cond_12

    sub-float p1, v13, p1

    :cond_12
    aput p1, v2, v6

    goto :goto_10

    .line 390
    :cond_13
    aget v1, v2, v0

    cmpl-float v1, v1, v13

    if-nez v1, :cond_14

    add-float v1, p1, v13

    goto :goto_c

    :cond_14
    neg-float v1, p1

    :goto_c
    aput v1, v2, v0

    .line 391
    aget v1, v2, v11

    cmpl-float v1, v1, v13

    if-nez v1, :cond_15

    add-float v1, p1, v13

    goto :goto_d

    :cond_15
    neg-float v1, p1

    :goto_d
    aput v1, v2, v11

    .line 392
    aget v1, v2, v9

    cmpl-float v1, v1, v13

    if-nez v1, :cond_16

    add-float v1, p1, v13

    goto :goto_e

    :cond_16
    neg-float v1, p1

    :goto_e
    aput v1, v2, v9

    .line 393
    aget v1, v2, v7

    cmpl-float v1, v1, v13

    if-nez v1, :cond_17

    add-float/2addr p1, v13

    goto :goto_f

    :cond_17
    neg-float p1, p1

    :goto_f
    aput p1, v2, v7

    :goto_10
    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_18

    .line 411
    aget p1, v2, v0

    invoke-static {p1}, Lcom/powervision/livestreaming/core/GLHelper;->flip(F)F

    move-result p1

    aput p1, v2, v0

    .line 412
    aget p1, v2, v11

    invoke-static {p1}, Lcom/powervision/livestreaming/core/GLHelper;->flip(F)F

    move-result p1

    aput p1, v2, v11

    .line 413
    aget p1, v2, v9

    invoke-static {p1}, Lcom/powervision/livestreaming/core/GLHelper;->flip(F)F

    move-result p1

    aput p1, v2, v9

    .line 414
    aget p1, v2, v7

    invoke-static {p1}, Lcom/powervision/livestreaming/core/GLHelper;->flip(F)F

    move-result p1

    aput p1, v2, v7

    :cond_18
    and-int/2addr p0, v11

    if-eqz p0, :cond_19

    .line 417
    aget p0, v2, v12

    invoke-static {p0}, Lcom/powervision/livestreaming/core/GLHelper;->flip(F)F

    move-result p0

    aput p0, v2, v12

    .line 418
    aget p0, v2, v10

    invoke-static {p0}, Lcom/powervision/livestreaming/core/GLHelper;->flip(F)F

    move-result p0

    aput p0, v2, v10

    .line 419
    aget p0, v2, v8

    invoke-static {p0}, Lcom/powervision/livestreaming/core/GLHelper;->flip(F)F

    move-result p0

    aput p0, v2, v8

    .line 420
    aget p0, v2, v6

    invoke-static {p0}, Lcom/powervision/livestreaming/core/GLHelper;->flip(F)F

    move-result p0

    aput p0, v2, v6

    .line 422
    :cond_19
    sget p0, Lcom/powervision/livestreaming/core/GLHelper;->FLOAT_SIZE_BYTES:I

    array-length p1, v2

    mul-int p0, p0, p1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 423
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 424
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 425
    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 426
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public static getCameraTextureVerticesBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    .line 431
    sget v0, Lcom/powervision/livestreaming/core/GLHelper;->FLOAT_SIZE_BYTES:I

    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->Cam2dTextureVertices:[F

    array-length v1, v1

    mul-int v0, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 432
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 434
    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->CamTextureVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 435
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static getDrawIndecesBuffer()Ljava/nio/ShortBuffer;
    .locals 2

    .line 325
    sget v0, Lcom/powervision/livestreaming/core/GLHelper;->SHORT_SIZE_BYTES:I

    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->drawIndices:[S

    array-length v1, v1

    mul-int v0, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 326
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 328
    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->drawIndices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    .line 329
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static getMediaCodecTextureVerticesBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    .line 343
    sget v0, Lcom/powervision/livestreaming/core/GLHelper;->FLOAT_SIZE_BYTES:I

    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->MediaCodecTextureVertices:[F

    array-length v1, v1

    mul-int v0, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 344
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 346
    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->MediaCodecTextureVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 347
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static getScreenTextureVerticesBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    .line 352
    sget v0, Lcom/powervision/livestreaming/core/GLHelper;->FLOAT_SIZE_BYTES:I

    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->ScreenTextureVertices:[F

    array-length v1, v1

    mul-int v0, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 353
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 355
    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->ScreenTextureVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 356
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static getShapeVerticesBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    .line 334
    sget v0, Lcom/powervision/livestreaming/core/GLHelper;->FLOAT_SIZE_BYTES:I

    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->SquareVertices:[F

    array-length v1, v1

    mul-int v0, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 335
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/powervision/livestreaming/core/GLHelper;->SquareVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static initMediaCodecGL(Lcom/powervision/livestreaming/model/MediaCodecGLWapper;Landroid/opengl/EGLContext;Landroid/view/Surface;)V
    .locals 12

    const/4 v0, 0x0

    .line 166
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 167
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 171
    iget-object v2, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v3, [I

    new-array v2, v3, [Landroid/opengl/EGLConfig;

    const/16 v4, 0xf

    new-array v5, v4, [I

    .line 176
    fill-array-data v5, :array_0

    .line 186
    iget-object v4, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v2

    move-object v10, v1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 187
    aget v1, v1, v0

    if-lez v1, :cond_2

    .line 190
    aget-object v1, v2, v0

    iput-object v1, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglConfig:Landroid/opengl/EGLConfig;

    new-array v1, v3, [I

    const/16 v2, 0x3038

    aput v2, v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 194
    fill-array-data v2, :array_1

    .line 198
    iget-object v4, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v4, v5, p1, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglContext:Landroid/opengl/EGLContext;

    .line 199
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglContext:Landroid/opengl/EGLContext;

    if-eq p1, v2, :cond_1

    new-array p1, v3, [I

    .line 203
    iget-object v2, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglContext:Landroid/opengl/EGLContext;

    const/16 v4, 0x3098

    invoke-static {v2, v3, v4, p1, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 204
    iget-object p1, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, v2, p2, v1, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    .line 205
    iget-object p1, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    if-eq p1, p0, :cond_0

    return-void

    .line 206
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglCreateWindowSurface,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglCreateContext,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglChooseConfig,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglInitialize,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglGetDisplay,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3142
        0x1
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static initOffScreenGL(Lcom/powervision/livestreaming/model/OffScreenGLWapper;)V
    .locals 12

    const/4 v0, 0x0

    .line 120
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 121
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 125
    iget-object v2, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v3, [I

    new-array v2, v3, [Landroid/opengl/EGLConfig;

    const/16 v4, 0xd

    new-array v5, v4, [I

    .line 130
    fill-array-data v5, :array_0

    .line 139
    iget-object v4, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v2

    move-object v10, v1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 140
    aget v1, v1, v0

    if-lez v1, :cond_2

    .line 143
    aget-object v1, v2, v0

    iput-object v1, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglConfig:Landroid/opengl/EGLConfig;

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 144
    fill-array-data v1, :array_1

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 149
    fill-array-data v2, :array_2

    .line 153
    iget-object v4, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglConfig:Landroid/opengl/EGLConfig;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v4, v5, v6, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    .line 154
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v4, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    if-eq v2, v4, :cond_1

    new-array v2, v3, [I

    .line 158
    iget-object v3, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    const/16 v5, 0x3098

    invoke-static {v3, v4, v5, v2, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 159
    iget-object v2, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, v3, v1, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    .line 160
    iget-object v0, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    if-eq v0, p0, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglCreateWindowSurface,failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglCreateContext,failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglChooseConfig,failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize,failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay,failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static initScreenGL(Lcom/powervision/livestreaming/model/ScreenGLWapper;Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V
    .locals 12

    const/4 v0, 0x0

    .line 211
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 212
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 216
    iget-object v2, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v3, [I

    new-array v2, v3, [Landroid/opengl/EGLConfig;

    const/16 v4, 0xd

    new-array v5, v4, [I

    .line 221
    fill-array-data v5, :array_0

    .line 230
    iget-object v4, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v2

    move-object v10, v1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 231
    aget v1, v1, v0

    if-lez v1, :cond_2

    .line 234
    aget-object v1, v2, v0

    iput-object v1, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglConfig:Landroid/opengl/EGLConfig;

    new-array v1, v3, [I

    const/16 v2, 0x3038

    aput v2, v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 238
    fill-array-data v2, :array_1

    .line 242
    iget-object v4, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v4, v5, p1, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    .line 243
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    if-eq p1, v2, :cond_1

    new-array p1, v3, [I

    .line 247
    iget-object v2, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    const/16 v4, 0x3098

    invoke-static {v2, v3, v4, p1, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 248
    iget-object p1, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, v2, p2, v1, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    .line 249
    iget-object p1, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    if-eq p1, p0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglCreateWindowSurface,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglCreateContext,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglChooseConfig,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglInitialize,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglGetDisplay,failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static makeCurrent(Lcom/powervision/livestreaming/model/MediaCodecGLWapper;)V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent,failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeCurrent(Lcom/powervision/livestreaming/model/OffScreenGLWapper;)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent,failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeCurrent(Lcom/powervision/livestreaming/model/ScreenGLWapper;)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 268
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent,failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
