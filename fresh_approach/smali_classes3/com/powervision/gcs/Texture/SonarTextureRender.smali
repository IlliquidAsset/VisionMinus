.class public Lcom/powervision/gcs/Texture/SonarTextureRender;
.super Ljava/lang/Object;
.source "SonarTextureRender.java"

# interfaces
.implements Lcom/powervision/gcs/Texture/IGLESRenderer;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->destory()V

    return-void
.end method

.method private createBitmapFromGLSurface(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 13

    move/from16 v8, p3

    move/from16 v9, p4

    mul-int v0, v8, v9

    .line 25
    new-array v10, v0, [I

    .line 26
    new-array v11, v0, [I

    .line 27
    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v12, 0x0

    .line 28
    invoke-virtual {v7, v12}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object/from16 v0, p5

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 30
    :try_start_0
    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_1

    mul-int v1, v0, v8

    sub-int v2, v9, v0

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_0

    add-int v4, v1, v3

    .line 36
    aget v4, v10, v4

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v6, v4, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    const v7, -0xff0100

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int v5, v2, v3

    .line 40
    aput v4, v11, v5
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public synchronized native changeSenOrColor(FI)V
.end method

.method public synchronized native clearMemory()V
.end method

.method public native closeHistory()V
.end method

.method public synchronized native destory()V
.end method

.method public native getDeep()F
.end method

.method public native getHeightMax()F
.end method

.method public native initMemory()V
.end method

.method public synchronized native initTheHistory()V
.end method

.method public synchronized native lineUpdata([B[B[II[Z)I
.end method

.method public native nativeDrawFrame()V
.end method

.method public native nativeSurfaceChange(II)V
.end method

.method public synchronized native nativeSurfaceCreate()V
.end method

.method public onDestroy()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->destory()V

    return-void
.end method

.method public onDrawFrame()V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->nativeDrawFrame()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public native onRecording(Ljava/lang/String;)I
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public native onStopRecording()I
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/Texture/SonarTextureRender;->nativeSurfaceChange(II)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->nativeSurfaceCreate()V

    return-void
.end method

.method public synchronized native readHistory([BLjava/lang/String;I[FI)Z
.end method

.method public native setAutoScaleY(F)V
.end method

.method public native setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public native setLockDeep(FF)V
.end method

.method public native setPrepareing(Z)V
.end method

.method public native setScreenWidth(I)V
.end method
