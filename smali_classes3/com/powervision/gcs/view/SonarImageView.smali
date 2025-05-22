.class public Lcom/powervision/gcs/view/SonarImageView;
.super Landroid/widget/ImageView;
.source "SonarImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/SonarImageView$OnLayoutListener;
    }
.end annotation


# instance fields
.field private Width:I

.field private currBitmap:Landroid/graphics/Bitmap;

.field private currRect:Landroid/graphics/Rect;

.field private dataLenght:I

.field private height:I

.field private oldBitmap:Landroid/graphics/Bitmap;

.field private oldRect:Landroid/graphics/Rect;

.field public onLayoutListener:Lcom/powervision/gcs/view/SonarImageView$OnLayoutListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/powervision/gcs/view/SonarImageView;->dataLenght:I

    .line 37
    iput p1, p0, Lcom/powervision/gcs/view/SonarImageView;->Width:I

    iput p1, p0, Lcom/powervision/gcs/view/SonarImageView;->height:I

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/SonarImageView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 34
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 92
    iget v0, p0, Lcom/powervision/gcs/view/SonarImageView;->Width:I

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/SonarImageView;->Width:I

    .line 95
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarImageView;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/SonarImageView;->currRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/SonarImageView;->oldRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarImageView;->oldBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarImageView;->currRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/SonarImageView;->oldRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/powervision/gcs/view/SonarImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/SonarImageView;->currRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sonarimageviewrect:"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 41
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    .line 43
    iput p4, p0, Lcom/powervision/gcs/view/SonarImageView;->Width:I

    sub-int/2addr p5, p3

    .line 44
    iput p5, p0, Lcom/powervision/gcs/view/SonarImageView;->height:I

    .line 45
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/powervision/gcs/view/SonarImageView;->Width:I

    iget p3, p0, Lcom/powervision/gcs/view/SonarImageView;->height:I

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/powervision/gcs/view/SonarImageView;->oldRect:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarImageView;->oldBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOnLayoutListener(Lcom/powervision/gcs/view/SonarImageView$OnLayoutListener;)V
    .locals 0

    return-void
.end method

.method public setParam(III)V
    .locals 3

    .line 74
    iput p3, p0, Lcom/powervision/gcs/view/SonarImageView;->dataLenght:I

    .line 75
    iget-object p3, p0, Lcom/powervision/gcs/view/SonarImageView;->oldRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/powervision/gcs/view/SonarImageView;->oldRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-nez p3, :cond_3

    .line 76
    :cond_0
    iget p3, p0, Lcom/powervision/gcs/view/SonarImageView;->Width:I

    if-nez p3, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarImageView;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/powervision/gcs/view/SonarImageView;->Width:I

    .line 79
    :cond_1
    iget p3, p0, Lcom/powervision/gcs/view/SonarImageView;->height:I

    if-nez p3, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarImageView;->getHeight()I

    move-result p3

    iput p3, p0, Lcom/powervision/gcs/view/SonarImageView;->height:I

    .line 82
    :cond_2
    new-instance p3, Landroid/graphics/Rect;

    iget v1, p0, Lcom/powervision/gcs/view/SonarImageView;->Width:I

    iget v2, p0, Lcom/powervision/gcs/view/SonarImageView;->height:I

    invoke-direct {p3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/powervision/gcs/view/SonarImageView;->oldRect:Landroid/graphics/Rect;

    .line 85
    :cond_3
    new-instance p3, Landroid/graphics/Rect;

    iget v1, p0, Lcom/powervision/gcs/view/SonarImageView;->Width:I

    invoke-direct {p3, v0, p1, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/powervision/gcs/view/SonarImageView;->currRect:Landroid/graphics/Rect;

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hahah  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  height "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/gcs/view/SonarImageView;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqratio"

    invoke-static {p2, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    return-void
.end method
