.class public Lcom/powervision/aircraft/ui/views/CompassView;
.super Landroid/view/View;
.source "CompassView.java"


# instance fields
.field private mCompassBitmap:Landroid/graphics/Bitmap;

.field private mCompassPaint:Landroid/graphics/Paint;

.field private mCompassWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CompassView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_compass:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CompassView;->mCompassBitmap:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CompassView;->mCompassWidth:I

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CompassView;->mCompassPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CompassView;->mCompassBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CompassView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CompassView;->mCompassWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CompassView;->mCompassPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
