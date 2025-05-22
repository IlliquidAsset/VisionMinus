.class public Lcom/mob/elp/d/e;
.super Ljava/lang/Object;
.source "GetBitmaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/elp/d/e$b;
    }
.end annotation


# instance fields
.field private a:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 8

    .line 53
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 55
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    const/16 v3, 0x400

    div-int/2addr v1, v3

    if-le v1, v3, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 61
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {p0, v1, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 63
    :cond_0
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 64
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 65
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    .line 66
    invoke-static {p0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 67
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 68
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v7, 0x0

    .line 69
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-le p0, v6, :cond_1

    if-le p0, p1, :cond_1

    .line 72
    div-int/2addr p0, p1

    goto :goto_0

    :cond_1
    if-ge p0, v6, :cond_2

    if-le v6, p2, :cond_2

    .line 74
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p0, p2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    if-gtz p0, :cond_3

    const/4 p0, 0x1

    .line 79
    :cond_3
    iput p0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 80
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 81
    invoke-static {p0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 82
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v1, 0x5a

    .line 86
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    div-int/2addr v6, v3

    if-le v6, v2, :cond_4

    .line 87
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 88
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v6, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 v1, v1, -0xa

    goto :goto_1

    .line 91
    :cond_4
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    invoke-static {p0, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v5

    .line 93
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 94
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v5, v2, v3

    int-to-float v1, v1

    div-float/2addr v5, v1

    int-to-float v1, p2

    mul-float v3, v3, v1

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 100
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 102
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 104
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 107
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 109
    invoke-virtual {v4, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 110
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p3, p3

    .line 114
    invoke-virtual {p2, v0, p3, p3, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 117
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method static synthetic a(Lcom/mob/elp/d/e;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/elp/d/e;->a:[Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;IILcom/mob/elp/d/e$b;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/mob/elp/d/e$b;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v11, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iput-object v3, v1, Lcom/mob/elp/d/e;->a:[Landroid/graphics/Bitmap;

    .line 10
    new-instance v12, Lcom/mob/elp/d/e$a;

    invoke-direct {v12, v1}, Lcom/mob/elp/d/e$a;-><init>(Lcom/mob/elp/d/e;)V

    const/4 v14, 0x0

    .line 16
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_1

    .line 17
    new-instance v15, Ljava/lang/Thread;

    new-instance v10, Lcom/mob/elp/d/b;

    move-object/from16 v9, p1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    move-object v3, v10

    move-object v4, v0

    move-object v5, v11

    move/from16 v6, p2

    move/from16 v7, p3

    move v8, v14

    move-object/from16 v9, v16

    move-object v13, v10

    move-object v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/mob/elp/d/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;IIILjava/lang/String;Lcom/mob/elp/d/b$a;)V

    invoke-direct {v15, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 25
    :goto_1
    iget-object v4, v1, Lcom/mob/elp/d/e;->a:[Landroid/graphics/Bitmap;

    array-length v5, v4

    if-ge v13, v5, :cond_3

    .line 26
    aget-object v5, v4, v13

    if-eqz v5, :cond_2

    .line 27
    aget-object v4, v4, v13

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 32
    :goto_2
    iget-object v5, v1, Lcom/mob/elp/d/e;->a:[Landroid/graphics/Bitmap;

    array-length v6, v5

    if-ge v13, v6, :cond_5

    .line 33
    aget-object v6, v5, v13

    if-eqz v6, :cond_4

    .line 34
    aget-object v5, v5, v13

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 37
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 38
    invoke-interface {v2, v3}, Lcom/mob/elp/d/e$b;->a(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 40
    :cond_6
    invoke-interface {v2, v0}, Lcom/mob/elp/d/e$b;->a(Ljava/util/ArrayList;)V

    .line 42
    :goto_3
    throw v4

    .line 43
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 44
    :goto_4
    iget-object v4, v1, Lcom/mob/elp/d/e;->a:[Landroid/graphics/Bitmap;

    array-length v5, v4

    if-ge v13, v5, :cond_8

    .line 45
    aget-object v5, v4, v13

    if-eqz v5, :cond_7

    .line 46
    aget-object v4, v4, v13

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 49
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 50
    :goto_5
    invoke-interface {v2, v3}, Lcom/mob/elp/d/e$b;->a(Ljava/util/ArrayList;)V

    goto :goto_6

    .line 52
    :cond_9
    invoke-interface {v2, v0}, Lcom/mob/elp/d/e$b;->a(Ljava/util/ArrayList;)V

    :goto_6
    return-void
.end method
