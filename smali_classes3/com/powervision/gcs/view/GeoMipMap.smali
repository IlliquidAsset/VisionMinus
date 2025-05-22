.class Lcom/powervision/gcs/view/GeoMipMap;
.super Ljava/lang/Object;
.source "GeoMipMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/GeoMipMap$MyShader;
    }
.end annotation


# instance fields
.field shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

.field verticesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->verticesList:Ljava/util/ArrayList;

    .line 108
    invoke-direct {p0}, Lcom/powervision/gcs/view/GeoMipMap;->init()V

    .line 109
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/GeoMipMap;->GaodeDrawCreate(Landroid/content/res/AssetManager;)V

    return-void
.end method

.method public static drawTextToBitmap(Landroid/content/Context;IILjava/lang/String;ZF)Landroid/graphics/Bitmap;
    .locals 5

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 285
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 286
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-nez p1, :cond_0

    .line 288
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    const/4 v1, 0x1

    .line 291
    invoke-virtual {p0, p1, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v2, p5, p1

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p5

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p5

    float-to-int p5, v3

    invoke-static {p0, v2, p5, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 294
    :cond_1
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 296
    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v2, p2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 297
    :cond_2
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 298
    invoke-virtual {p2, p0, v3, v3, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, -0x1

    .line 302
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41700000    # 15.0f

    mul-float v0, v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    .line 303
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 304
    invoke-virtual {p5, p1, v3, p1, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 305
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 306
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p5, p3, v2, v0, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    if-eqz p4, :cond_3

    .line 310
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr p4, v2

    int-to-double v2, p4

    div-double/2addr v2, v0

    double-to-int p4, v2

    .line 311
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v2, v0

    double-to-int p1, v2

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr p4, v2

    int-to-double v2, p4

    div-double/2addr v2, v0

    double-to-int p4, v2

    .line 314
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr v0, p1

    int-to-double v0, v0

    const-wide v2, 0x4003333333333333L    # 2.4

    div-double/2addr v0, v2

    double-to-int p1, v0

    :goto_0
    int-to-float p4, p4

    int-to-float p1, p1

    .line 320
    invoke-virtual {p2, p3, p4, p1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p0
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method public static loadTexture(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 5

    .line 227
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 233
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    .line 234
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 238
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 239
    aget v0, v1, v2

    const/16 v1, 0xde1

    .line 242
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/16 v4, 0x2600

    .line 243
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 245
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 247
    invoke-static {v1, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 251
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 253
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    .line 255
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw p0

    :catch_1
    move-exception p0

    .line 229
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static loadTextureFromBitmap(I)I
    .locals 6

    .line 261
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/model/MapMarker;->WAYPOINT_MARKER:Lcom/powervision/gcs/model/MapMarker;

    .line 262
    invoke-virtual {v1}, Lcom/powervision/gcs/model/MapMarker;->getMarkerResId()I

    move-result v1

    .line 263
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/powervision/gcs/view/GeoMipMap;->drawTextToBitmap(Landroid/content/Context;IILjava/lang/String;ZF)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 267
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 268
    aget v0, v1, v2

    const/16 v1, 0xde1

    .line 271
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/16 v4, 0x2600

    .line 272
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 274
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 276
    invoke-static {v1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return v0
.end method


# virtual methods
.method public native GaodeDrawCreate(Landroid/content/res/AssetManager;)V
.end method

.method public native addAFish(FF)V
.end method

.method public native addBubble(FFJ)V
.end method

.method public native addFishPoint(FFZ)V
.end method

.method public native addMarker(FF)V
.end method

.method public native addNewLine(FF)V
.end method

.method public native addNewPoint(FFF)V
.end method

.method public native changeBubblePosition(FFJ)V
.end method

.method public synchronized native clearOtherThreadMemory()V
.end method

.method public native clearRenderThreadMemory()V
.end method

.method public native clearShipMarker()V
.end method

.method public native closeWaypoint()V
.end method

.method public synchronized native computeAnddrawTheMipMap([D[DZ)V
.end method

.method public native drawBubbble([FI)V
.end method

.method public drawES20([F)V
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v2, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aVertex:I

    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v3, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aColor:I

    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v5, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aMVPMatrix:I

    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v6, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->program:I

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/powervision/gcs/view/GeoMipMap;->drawNative(II[FII)V

    return-void
.end method

.method public native drawFish([FI)V
.end method

.method public native drawFishPoint([FI)V
.end method

.method public drawFishes([F)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v0, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aMVPMatrix:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/GeoMipMap;->drawFish([FI)V

    return-void
.end method

.method public native drawLineNative(II[FI)V
.end method

.method public drawLineOpenGl([F)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v0, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aVertex:I

    iget-object v1, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v1, v1, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aColor:I

    iget-object v2, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v2, v2, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aMVPMatrix:I

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/powervision/gcs/view/GeoMipMap;->drawLineNative(II[FI)V

    return-void
.end method

.method public native drawMarker([FI)V
.end method

.method public native drawMarkerLine(II[FI)V
.end method

.method public native drawNative(II[FII)V
.end method

.method public native drawShipMarker([FI)V
.end method

.method public drawT([F)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v0, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aMVPMatrix:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/GeoMipMap;->drawShipMarker([FI)V

    return-void
.end method

.method public native freeNewData()V
.end method

.method public initShader()V
    .locals 1

    .line 183
    new-instance v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/GeoMipMap$MyShader;-><init>(Lcom/powervision/gcs/view/GeoMipMap;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    .line 184
    invoke-virtual {v0}, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->create()V

    return-void
.end method

.method public nativeAddFishPoint(FFZ)V
    .locals 0

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/gcs/view/GeoMipMap;->addFishPoint(FFZ)V

    return-void
.end method

.method public nativeDrawFishBubble([F)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v0, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aMVPMatrix:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/GeoMipMap;->drawBubbble([FI)V

    return-void
.end method

.method public nativeDrawFishPoint([F)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v0, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aMVPMatrix:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/GeoMipMap;->drawFishPoint([FI)V

    return-void
.end method

.method public nativeDrawMarker([F)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v0, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aMVPMatrix:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/GeoMipMap;->drawMarker([FI)V

    return-void
.end method

.method public nativeDrawMarkerLine([F)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v0, v0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aVertex:I

    iget-object v1, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v1, v1, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aColor:I

    iget-object v2, p0, Lcom/powervision/gcs/view/GeoMipMap;->shader:Lcom/powervision/gcs/view/GeoMipMap$MyShader;

    iget v2, v2, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aMVPMatrix:I

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/powervision/gcs/view/GeoMipMap;->drawMarkerLine(II[FI)V

    return-void
.end method

.method public native onChanged(F)V
.end method

.method public native reSetFishPointMemory(II)V
.end method

.method public native removeBubble(J)V
.end method

.method public native removeMarker(I)V
.end method

.method public native setGeoRange(F)V
.end method

.method public native setManutal(Z)V
.end method

.method public native setShipMarkerPosition(FF)V
.end method

.method public synchronized native updataTheMipMap(F)V
.end method

.method public native updataTheNewDataRange(F)V
.end method
