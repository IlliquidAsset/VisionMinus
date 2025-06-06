.class public Lcom/powervision/base/utils/BlurTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "BlurTransformation.java"


# static fields
.field private static DEFAULT_DOWN_SAMPLING:I = 0x1

.field private static final ID:Ljava/lang/String; = "BlurTransformation.1"

.field private static MAX_RADIUS:I = 0x19

.field private static final VERSION:I = 0x1


# instance fields
.field private radius:I

.field private sampling:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    sget v0, Lcom/powervision/base/utils/BlurTransformation;->MAX_RADIUS:I

    sget v1, Lcom/powervision/base/utils/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, v0, v1}, Lcom/powervision/base/utils/BlurTransformation;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 31
    sget v0, Lcom/powervision/base/utils/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, p1, v0}, Lcom/powervision/base/utils/BlurTransformation;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 35
    iput p1, p0, Lcom/powervision/base/utils/BlurTransformation;->radius:I

    .line 36
    iput p2, p0, Lcom/powervision/base/utils/BlurTransformation;->sampling:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 65
    instance-of v0, p1, Lcom/powervision/base/utils/BlurTransformation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/powervision/base/utils/BlurTransformation;

    iget v0, p1, Lcom/powervision/base/utils/BlurTransformation;->radius:I

    iget v1, p0, Lcom/powervision/base/utils/BlurTransformation;->radius:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/powervision/base/utils/BlurTransformation;->sampling:I

    iget v0, p0, Lcom/powervision/base/utils/BlurTransformation;->sampling:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 72
    iget v0, p0, Lcom/powervision/base/utils/BlurTransformation;->radius:I

    mul-int/lit16 v0, v0, 0x3e8

    const v1, 0x231c7533

    add-int/2addr v1, v0

    iget v0, p0, Lcom/powervision/base/utils/BlurTransformation;->sampling:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/base/utils/BlurTransformation;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/base/utils/BlurTransformation;->sampling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 41
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 42
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 43
    iget v0, p0, Lcom/powervision/base/utils/BlurTransformation;->sampling:I

    div-int/2addr p3, v0

    .line 44
    div-int/2addr p4, v0

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 48
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    iget p4, p0, Lcom/powervision/base/utils/BlurTransformation;->sampling:I

    int-to-float v0, p4

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    int-to-float p4, p4

    div-float/2addr v1, p4

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 50
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x2

    .line 51
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p3, p2, v0, v0, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    iget p2, p0, Lcom/powervision/base/utils/BlurTransformation;->radius:I

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Ljp/wasabeef/glide/transformations/internal/FastBlur;->blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurTransformation.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/base/utils/BlurTransformation;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/base/utils/BlurTransformation;->sampling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/powervision/base/utils/BlurTransformation;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
