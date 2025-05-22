.class public Lcom/powervision/aircraft/ui/views/BarrierView;
.super Landroid/view/View;
.source "BarrierView.java"


# instance fields
.field private distance1:F

.field private distance2:F

.field private distance3:F

.field private distance4:F

.field private endAngle:F

.field private mAngle:F

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcPaint1:Landroid/graphics/Paint;

.field private mArcPaint2:Landroid/graphics/Paint;

.field private mArcPaint3:Landroid/graphics/Paint;

.field private mBackPaint:Landroid/graphics/Paint;

.field private mBackWith:F

.field private mIncludedAngle:F

.field private mLeft2Bitmap:Landroid/graphics/Bitmap;

.field private mLeftBitmap:Landroid/graphics/Bitmap;

.field private mRight2Bitmap:Landroid/graphics/Bitmap;

.field private mRightBitmap:Landroid/graphics/Bitmap;

.field private mStrokeWith:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private startAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x43520000    # 210.0f

    .line 27
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->startAngle:F

    const/high16 p1, 0x42340000    # 45.0f

    .line 29
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->endAngle:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 31
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mAngle:F

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mIncludedAngle:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 35
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mStrokeWith:F

    const/high16 p1, 0x41400000    # 12.0f

    .line 37
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mBackWith:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x43520000    # 210.0f

    .line 27
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->startAngle:F

    const/high16 p1, 0x42340000    # 45.0f

    .line 29
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->endAngle:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 31
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mAngle:F

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mIncludedAngle:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 35
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mStrokeWith:F

    const/high16 p1, 0x41400000    # 12.0f

    .line 37
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mBackWith:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x43520000    # 210.0f

    .line 27
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->startAngle:F

    const/high16 p1, 0x42340000    # 45.0f

    .line 29
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->endAngle:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 31
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mAngle:F

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mIncludedAngle:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 35
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mStrokeWith:F

    const/high16 p1, 0x41400000    # 12.0f

    .line 37
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mBackWith:F

    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 8

    .line 136
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance1:F

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x41000000    # 8.0f

    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left_green:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeftBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 138
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance1:F

    cmpl-float v5, v0, v3

    if-lez v5, :cond_1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left_yellow:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeftBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance1:F

    cmpl-float v5, v0, v2

    if-lez v5, :cond_2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left_yellow:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeftBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 142
    :cond_2
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance1:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left_red:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 146
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeftBitmap:Landroid/graphics/Bitmap;

    const/high16 v5, 0x42480000    # 50.0f

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance2:F

    cmpl-float v5, v0, v4

    if-lez v5, :cond_4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left2_green:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeft2Bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 150
    :cond_4
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance2:F

    cmpl-float v5, v0, v3

    if-lez v5, :cond_5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left2_yellow:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeft2Bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 152
    :cond_5
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance2:F

    cmpl-float v5, v0, v2

    if-lez v5, :cond_6

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    .line 153
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left2_yellow:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeft2Bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 154
    :cond_6
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance2:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 155
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left2_red:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeft2Bitmap:Landroid/graphics/Bitmap;

    .line 158
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeft2Bitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x37

    int-to-float v5, v5

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance3:F

    cmpl-float v5, v0, v4

    if-lez v5, :cond_8

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 161
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right2_green:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRight2Bitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 162
    :cond_8
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance3:F

    cmpl-float v5, v0, v3

    if-lez v5, :cond_9

    cmpg-float v0, v0, v4

    if-gez v0, :cond_9

    .line 163
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right2_yellow:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRight2Bitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 164
    :cond_9
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance3:F

    cmpl-float v5, v0, v2

    if-lez v5, :cond_a

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    .line 165
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right2_yellow:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRight2Bitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 166
    :cond_a
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance3:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_b

    .line 167
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right2_red:I

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRight2Bitmap:Landroid/graphics/Bitmap;

    .line 170
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRight2Bitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeft2Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x3c

    int-to-float v5, v5

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 172
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance4:F

    cmpl-float v5, v0, v4

    if-lez v5, :cond_c

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 173
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right_green:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRightBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 174
    :cond_c
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance4:F

    cmpl-float v1, v0, v3

    if-lez v1, :cond_d

    cmpg-float v0, v0, v4

    if-gez v0, :cond_d

    .line 175
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right_yellow:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRightBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 176
    :cond_d
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance4:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_e

    cmpg-float v0, v0, v3

    if-gez v0, :cond_e

    .line 177
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right_yellow:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRightBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 178
    :cond_e
    iget v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance4:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_f

    .line 179
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right_red:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 182
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRightBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeft2Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRight2Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x41

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initBitmapView()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left_red:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_left2_red:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mLeft2Bitmap:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint1:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right2_red:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRight2Bitmap:Landroid/graphics/Bitmap;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint2:Landroid/graphics/Paint;

    .line 73
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_barrier_right_red:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint3:Landroid/graphics/Paint;

    return-void
.end method

.method private initView()V
    .locals 5

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint:Landroid/graphics/Paint;

    const-string v2, "#EC1328"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint:Landroid/graphics/Paint;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 84
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mStrokeWith:F

    invoke-virtual {p0, v4}, Lcom/powervision/aircraft/ui/views/BarrierView;->dp2px(F)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint1:Landroid/graphics/Paint;

    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint1:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint1:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 92
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint1:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint1:Landroid/graphics/Paint;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mStrokeWith:F

    invoke-virtual {p0, v4}, Lcom/powervision/aircraft/ui/views/BarrierView;->dp2px(F)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint2:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint2:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint2:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 100
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint2:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint2:Landroid/graphics/Paint;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mStrokeWith:F

    invoke-virtual {p0, v4}, Lcom/powervision/aircraft/ui/views/BarrierView;->dp2px(F)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint3:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint3:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 108
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mArcPaint3:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mStrokeWith:F

    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/views/BarrierView;->dp2px(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mBackPaint:Landroid/graphics/Paint;

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mBackPaint:Landroid/graphics/Paint;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mBackPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mBackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mBackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->mBackWith:F

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/views/BarrierView;->dp2px(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public dp2px(F)F
    .locals 1

    .line 203
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 204
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method public getDistanceData(FFFF)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance1:F

    .line 58
    iput p2, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance2:F

    .line 59
    iput p3, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance3:F

    .line 60
    iput p4, p0, Lcom/powervision/aircraft/ui/views/BarrierView;->distance4:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->initBitmapView()V

    .line 125
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/BarrierView;->drawArc(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/BarrierView;->invalidate()V

    return-void
.end method
