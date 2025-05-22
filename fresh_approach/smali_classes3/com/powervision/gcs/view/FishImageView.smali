.class public Lcom/powervision/gcs/view/FishImageView;
.super Landroid/view/View;
.source "FishImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/FishImageView$ClockThread;,
        Lcom/powervision/gcs/view/FishImageView$ClockListener;,
        Lcom/powervision/gcs/view/FishImageView$HistoryWrongListener;
    }
.end annotation


# instance fields
.field private RuleHeight:F

.field private aFloat:Ljava/lang/Float;

.field private bigFish:Landroid/graphics/Bitmap;

.field clockThread:Lcom/powervision/gcs/view/FishImageView$ClockThread;

.field private contentPaint:Landroid/graphics/Paint;

.field private contentSize:F

.field private currentTime:Ljava/lang/String;

.field decimalFormat:Ljava/text/DecimalFormat;

.field private depth:F

.field private eachHeight:F

.field private endTime:Ljava/lang/String;

.field private fishExtentedRate:F

.field private fishLock:Ljava/lang/Object;

.field fishModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/model/FishModel;",
            ">;"
        }
    .end annotation
.end field

.field private historyDate:Ljava/lang/String;

.field private historyMode:Z

.field private historyPaint:Landroid/graphics/Paint;

.field historyWrongListener:Lcom/powervision/gcs/view/FishImageView$HistoryWrongListener;

.field private lLineLen:F

.field listener:Lcom/powervision/gcs/view/FishImageView$ClockListener;

.field private mFishPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private n0:Ljava/lang/String;

.field private n1:Ljava/lang/String;

.field private n2:Ljava/lang/String;

.field private n3:Ljava/lang/String;

.field private n4:Ljava/lang/String;

.field private normalfish:Landroid/graphics/Bitmap;

.field private num1:F

.field private num2:F

.field private num3:F

.field private num4:F

.field private numPaint:Landroid/graphics/Paint;

.field private onRecodingMode:Z

.field preparing:Z

.field private recodeDuringTime:J

.field private recodePaint:Landroid/graphics/Paint;

.field private recodeStartTime:J

.field private sLineLen:F

.field private scaleX:F

.field screenWidth:F

.field private smallFish:Landroid/graphics/Bitmap;

.field private superSmallFish:Landroid/graphics/Bitmap;

.field private tem:I

.field private textWidth:F

.field private titlePaint:Landroid/graphics/Paint;

.field private titleTextSize:F

.field unitName:Ljava/lang/String;

.field private wholeWidth:F

.field private windowRatio:F

.field zeroNum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->fishLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->RuleHeight:F

    .line 50
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    .line 51
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    .line 52
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->lLineLen:F

    .line 53
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->sLineLen:F

    const/4 p2, 0x0

    .line 55
    iput-boolean p2, p0, Lcom/powervision/gcs/view/FishImageView;->onRecodingMode:Z

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->mFishPaint:Landroid/graphics/Paint;

    const v0, 0x3f99999a    # 1.2f

    .line 64
    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishExtentedRate:F

    const-string v0, "0.0"

    .line 68
    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n0:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n1:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n2:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n3:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n4:Ljava/lang/String;

    .line 78
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->windowRatio:F

    .line 81
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->titleTextSize:F

    .line 82
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->contentSize:F

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyDate:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->endTime:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->currentTime:Ljava/lang/String;

    .line 96
    iput-boolean p2, p0, Lcom/powervision/gcs/view/FishImageView;->historyMode:Z

    .line 166
    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    .line 207
    iput p2, p0, Lcom/powervision/gcs/view/FishImageView;->tem:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 208
    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->depth:F

    .line 209
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    const-wide/16 v0, 0x0

    .line 211
    iput-wide v0, p0, Lcom/powervision/gcs/view/FishImageView;->recodeStartTime:J

    .line 212
    iput-wide v0, p0, Lcom/powervision/gcs/view/FishImageView;->recodeDuringTime:J

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    .line 613
    iput-boolean p2, p0, Lcom/powervision/gcs/view/FishImageView;->preparing:Z

    .line 641
    new-instance p2, Lcom/powervision/gcs/view/FishImageView$2;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/FishImageView$2;-><init>(Lcom/powervision/gcs/view/FishImageView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/FishImageView;->listener:Lcom/powervision/gcs/view/FishImageView$ClockListener;

    .line 680
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->screenWidth:F

    .line 105
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->fish_small:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishExtentedRate:F

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->fishExtentedRate:F

    mul-float v0, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/powervision/gcs/view/FishImageView;->big(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->smallFish:Landroid/graphics/Bitmap;

    .line 108
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->fish_normal:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishExtentedRate:F

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->fishExtentedRate:F

    mul-float v0, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/powervision/gcs/view/FishImageView;->big(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/FishImageView;->normalfish:Landroid/graphics/Bitmap;

    .line 111
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$mipmap;->samllwin_fish:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    invoke-virtual {p0, p2, v0, p1}, Lcom/powervision/gcs/view/FishImageView;->big(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->superSmallFish:Landroid/graphics/Bitmap;

    .line 115
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->fish_big:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishExtentedRate:F

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->fishExtentedRate:F

    mul-float v0, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/powervision/gcs/view/FishImageView;->big(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->bigFish:Landroid/graphics/Bitmap;

    .line 117
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->mFishPaint:Landroid/graphics/Paint;

    .line 118
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 119
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->mFishPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/FishImageView;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/powervision/gcs/view/FishImageView;->recodeStartTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/view/FishImageView;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/powervision/gcs/view/FishImageView;->recodeStartTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/FishImageView;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/powervision/gcs/view/FishImageView;->recodeDuringTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/powervision/gcs/view/FishImageView;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->recodePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private getFahrenheit(I)F
    .locals 1

    int-to-float p1, p1

    const v0, 0x3fe66666    # 1.8f

    mul-float p1, p1, v0

    const/high16 v0, 0x42000000    # 32.0f

    add-float/2addr p1, v0

    return p1
.end method

.method private getFeetByMetre(F)F
    .locals 1

    const v0, 0x3e9c0ebf    # 0.3048f

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public addFish(IFF)V
    .locals 1

    .line 485
    new-instance p2, Lcom/powervision/gcs/model/FishModel;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p3}, Lcom/powervision/gcs/model/FishModel;-><init>(IFF)V

    .line 486
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->fishLock:Ljava/lang/Object;

    monitor-enter p1

    .line 487
    :try_start_0
    iget-object p3, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public big(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    .line 547
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 548
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v3

    div-float/2addr p2, v0

    int-to-float v0, v4

    div-float/2addr p3, v0

    .line 551
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 552
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 553
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public clearTheDeepNum()V
    .locals 1

    const/4 v0, 0x0

    .line 581
    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->zeroNum:F

    .line 582
    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->num1:F

    .line 583
    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->num2:F

    .line 584
    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->num3:F

    .line 585
    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->num4:F

    .line 586
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/FishImageView;->updateRuleUnit(F)V

    .line 587
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    return-void
.end method

.method public clearTheFish()V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 610
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    return-void
.end method

.method public doUpDateFish()V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->updataFishes()V

    .line 562
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public drawFish(Landroid/graphics/Canvas;)V
    .locals 9

    .line 425
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 426
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/4 v2, 0x0

    .line 429
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/model/FishModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/powervision/gcs/model/FishModel;->getX()F

    move-result v4

    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->scaleX:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    .line 437
    invoke-virtual {v2}, Lcom/powervision/gcs/model/FishModel;->getDeep()F

    move-result v4

    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->zeroNum:F

    sub-float/2addr v4, v5

    const/4 v6, 0x0

    cmpg-float v7, v4, v6

    if-gtz v7, :cond_1

    goto/16 :goto_3

    .line 441
    :cond_1
    iget v7, p0, Lcom/powervision/gcs/view/FishImageView;->num4:F

    sub-float/2addr v7, v5

    cmpg-float v5, v7, v6

    if-gtz v5, :cond_2

    goto/16 :goto_3

    .line 446
    :cond_2
    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->RuleHeight:F

    mul-float v4, v4, v5

    div-float/2addr v4, v7

    .line 447
    invoke-virtual {v2, v4}, Lcom/powervision/gcs/model/FishModel;->setY(F)V

    .line 450
    invoke-virtual {v2}, Lcom/powervision/gcs/model/FishModel;->getType()I

    move-result v5

    .line 452
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->DrawFish:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 454
    iget-object v5, p0, Lcom/powervision/gcs/view/FishImageView;->smallFish:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/powervision/gcs/view/FishImageView;->mFishPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 457
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getWidth()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_4

    .line 458
    iget-object v5, p0, Lcom/powervision/gcs/view/FishImageView;->normalfish:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/powervision/gcs/view/FishImageView;->mFishPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 460
    :cond_4
    iget-object v5, p0, Lcom/powervision/gcs/view/FishImageView;->superSmallFish:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/powervision/gcs/view/FishImageView;->mFishPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 463
    iget-object v5, p0, Lcom/powervision/gcs/view/FishImageView;->bigFish:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/powervision/gcs/view/FishImageView;->mFishPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 467
    :cond_6
    :goto_2
    sget-boolean v5, Lcom/powervision/gcs/utils/SonarStateHelper;->DrawFishDeep:Z

    if-eqz v5, :cond_8

    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Lcom/powervision/gcs/model/FishModel;->getDeep()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    if-nez v6, :cond_7

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Lcom/powervision/gcs/model/FishModel;->getDeep()F

    move-result v2

    sget v7, Lcom/powervision/gcs/utils/SonarStateHelper;->GongToBrith:F

    mul-float v2, v2, v7

    float-to-double v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ft"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_7
    const/high16 v2, 0x41700000    # 15.0f

    sub-float/2addr v4, v2

    .line 474
    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public getDepth()F
    .locals 1

    .line 199
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->depth:F

    return v0
.end method

.method public getTem()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->tem:I

    int-to-float v0, v0

    return v0
.end method

.method public isHistoryMode()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyMode:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 216
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    iget-boolean v0, p0, Lcom/powervision/gcs/view/FishImageView;->preparing:Z

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/FishImageView;->drawFish(Landroid/graphics/Canvas;)V

    .line 221
    :cond_0
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->color_Style:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    :cond_2
    :goto_0
    iget v6, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    const/4 v5, 0x0

    iget v7, p0, Lcom/powervision/gcs/view/FishImageView;->RuleHeight:F

    iget-object v8, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 244
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v2, p0, Lcom/powervision/gcs/view/FishImageView;->sLineLen:F

    sub-float v4, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v6, v0, v2

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 246
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->sLineLen:F

    sub-float v5, v0, v3

    iget v8, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    sub-float v7, v0, v2

    iget-object v9, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 248
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->sLineLen:F

    sub-float v5, v0, v3

    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v6, v3, v10

    sub-float v7, v0, v2

    mul-float v8, v3, v10

    iget-object v9, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->sLineLen:F

    sub-float v5, v0, v3

    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v6, v3, v11

    sub-float v7, v0, v2

    mul-float v8, v3, v11

    iget-object v9, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->sLineLen:F

    sub-float v5, v0, v3

    iget v8, p0, Lcom/powervision/gcs/view/FishImageView;->RuleHeight:F

    sub-float v7, v0, v2

    iget-object v9, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->n0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    .line 258
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n0:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v2, v3

    const/high16 v4, 0x420c0000    # 35.0f

    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->windowRatio:F

    mul-float v5, v5, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->n1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    .line 261
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    sub-float/2addr v2, v4

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->windowRatio:F

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 263
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->n2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    .line 264
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n2:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    sub-float/2addr v2, v4

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    mul-float v4, v4, v10

    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->windowRatio:F

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->n3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    .line 268
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n3:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    sub-float/2addr v2, v4

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    mul-float v4, v4, v11

    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->windowRatio:F

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 271
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->n4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    .line 272
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->n4:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->textWidth:F

    sub-float/2addr v2, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->RuleHeight:F

    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->windowRatio:F

    mul-float v4, v4, v6

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 274
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    const/high16 v2, 0x40a00000    # 5.0f

    div-float v3, v0, v2

    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->titleTextSize:F

    div-float v5, v4, v10

    add-float/2addr v3, v5

    div-float v5, v0, v2

    add-float/2addr v5, v3

    .line 275
    iget v7, p0, Lcom/powervision/gcs/view/FishImageView;->contentSize:F

    div-float/2addr v7, v10

    add-float/2addr v5, v7

    div-float/2addr v0, v2

    add-float/2addr v0, v3

    div-float/2addr v4, v11

    add-float/2addr v0, v4

    .line 278
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 279
    iget v2, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    const v7, 0x3ed70a3d    # 0.42f

    mul-float v2, v2, v7

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 285
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/powervision/gcs/R$string;->PVW4_Sonar_5:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    const v9, 0x3f266666    # 0.65f

    mul-float v8, v8, v9

    add-float/2addr v3, v2

    iget-object v11, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 289
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/powervision/gcs/R$string;->PVW4_Sonar_6:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    const v11, 0x3f4ccccd    # 0.8f

    mul-float v8, v8, v11

    iget-object v12, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v3, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->tem:I

    const-string v7, "N/A"

    if-eqz v3, :cond_5

    .line 295
    sget-boolean v3, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    if-eqz v3, :cond_4

    .line 296
    iget-object v3, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v8, p0, Lcom/powervision/gcs/view/FishImageView;->tem:I

    int-to-long v12, v8

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 299
    :cond_4
    iget-object v3, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v8, p0, Lcom/powervision/gcs/view/FishImageView;->tem:I

    invoke-direct {p0, v8}, Lcom/powervision/gcs/view/FishImageView;->getFahrenheit(I)F

    move-result v8

    float-to-double v12, v8

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v7

    .line 305
    :goto_2
    iget v8, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    mul-float v8, v8, v9

    add-float/2addr v5, v2

    iget-object v9, p0, Lcom/powervision/gcs/view/FishImageView;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 310
    iget v8, p0, Lcom/powervision/gcs/view/FishImageView;->depth:F

    cmpl-float v4, v8, v4

    if-ltz v4, :cond_7

    iget-boolean v4, p0, Lcom/powervision/gcs/view/FishImageView;->preparing:Z

    if-nez v4, :cond_7

    .line 311
    sget-boolean v4, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    if-eqz v4, :cond_6

    .line 312
    iget-object v4, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v7, p0, Lcom/powervision/gcs/view/FishImageView;->depth:F

    float-to-double v7, v7

    invoke-virtual {v4, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 315
    :cond_6
    iget-object v4, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v7, p0, Lcom/powervision/gcs/view/FishImageView;->depth:F

    invoke-direct {p0, v7}, Lcom/powervision/gcs/view/FishImageView;->getFeetByMetre(F)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v4, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 321
    :cond_7
    :goto_3
    iget v4, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    mul-float v4, v4, v11

    iget-object v8, p0, Lcom/powervision/gcs/view/FishImageView;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v4, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 326
    iget-object v4, p0, Lcom/powervision/gcs/view/FishImageView;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 327
    iget-object v5, p0, Lcom/powervision/gcs/view/FishImageView;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 329
    sget-boolean v5, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    const v7, 0x3f27ef9e    # 0.656f

    if-eqz v5, :cond_8

    .line 330
    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    mul-float v5, v5, v7

    add-float/2addr v5, v3

    add-float v3, v0, v2

    iget-object v7, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    const-string v8, "\u00b0C"

    invoke-virtual {p1, v8, v5, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 333
    :cond_8
    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    mul-float v5, v5, v7

    add-float/2addr v5, v3

    add-float v3, v0, v2

    iget-object v7, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    const-string v8, "\u00b0F"

    invoke-virtual {p1, v8, v5, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 339
    :goto_4
    sget-boolean v3, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    const v5, 0x3f4e5604    # 0.806f

    if-eqz v3, :cond_9

    .line 340
    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    const-string v4, "m"

    invoke-virtual {p1, v4, v3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 343
    :cond_9
    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    const-string v4, "ft"

    invoke-virtual {p1, v4, v3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 347
    :goto_5
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->isHistoryMode()Z

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40600000    # 3.5f

    if-eqz v0, :cond_c

    .line 348
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_a

    .line 349
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    .line 350
    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    div-float/2addr v5, v3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 351
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 357
    :cond_a
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 358
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    const v1, 0x40f9999a    # 7.8f

    div-float/2addr v0, v1

    .line 359
    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    mul-float v5, v1, v4

    .line 360
    iget-boolean v7, p0, Lcom/powervision/gcs/view/FishImageView;->preparing:Z

    if-eqz v7, :cond_b

    mul-float v1, v1, v4

    .line 361
    iget-object v7, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    const-string v8, "00:00/"

    invoke-virtual {p1, v8, v0, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 363
    :cond_b
    iget-object v7, p0, Lcom/powervision/gcs/view/FishImageView;->currentTime:Ljava/lang/String;

    mul-float v1, v1, v4

    iget-object v8, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 366
    :goto_6
    iget-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/powervision/gcs/view/FishImageView;->currentTime:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    .line 368
    iget-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->endTime:Ljava/lang/String;

    iget-object v7, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->historyDate:Ljava/lang/String;

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    const v7, 0x3f19999a    # 0.6f

    mul-float v1, v1, v7

    iget-object v7, p0, Lcom/powervision/gcs/view/FishImageView;->historyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 372
    :cond_c
    iget-boolean v0, p0, Lcom/powervision/gcs/view/FishImageView;->onRecodingMode:Z

    if-eqz v0, :cond_f

    .line 373
    iget-wide v0, p0, Lcom/powervision/gcs/view/FishImageView;->recodeStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-nez v5, :cond_d

    return-void

    .line 376
    :cond_d
    iget-wide v7, p0, Lcom/powervision/gcs/view/FishImageView;->recodeDuringTime:J

    sub-long/2addr v7, v0

    .line 377
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "mm:ss"

    invoke-direct {v0, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 378
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->recodePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_e

    .line 380
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->recodePaint:Landroid/graphics/Paint;

    .line 381
    iget v5, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    div-float/2addr v5, v3

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 382
    iget-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->recodePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 383
    iget-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->recodePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    :cond_e
    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    const/high16 v2, 0x40f00000    # 7.5f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    mul-float v2, v2, v4

    const/high16 v5, 0x41c80000    # 25.0f

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/FishImageView;->recodePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 386
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    const v1, 0x40f33333    # 7.6f

    div-float/2addr v0, v1

    sub-float/2addr v0, v6

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    mul-float v4, v4, v1

    div-float/2addr v1, v3

    div-float/2addr v1, v10

    sub-float/2addr v4, v1

    const/high16 v1, 0x41700000    # 15.0f

    sub-float/2addr v4, v1

    const/high16 v1, 0x41000000    # 8.0f

    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->recodePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_f
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 127
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 129
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->RuleHeight:F

    .line 130
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    .line 131
    iget p1, p0, Lcom/powervision/gcs/view/FishImageView;->RuleHeight:F

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    const p2, 0x4019999a    # 2.4f

    div-float p2, p1, p2

    .line 132
    iput p2, p0, Lcom/powervision/gcs/view/FishImageView;->lLineLen:F

    const p2, 0x40666666    # 3.6f

    div-float/2addr p1, p2

    .line 133
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->sLineLen:F

    .line 134
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/powervision/gcs/view/FishImageView;->screenWidth:F

    div-float/2addr p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->scaleX:F

    .line 135
    iget p1, p0, Lcom/powervision/gcs/view/FishImageView;->wholeWidth:F

    const p2, 0x44ed8000    # 1900.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->windowRatio:F

    .line 136
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 137
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40c00000    # 6.0f

    .line 138
    iget p3, p0, Lcom/powervision/gcs/view/FishImageView;->windowRatio:F

    mul-float p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 141
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->mPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    const/high16 p4, 0x41000000    # 8.0f

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    .line 149
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    new-instance p1, Landroid/graphics/Paint;

    const/16 p4, 0x21

    invoke-direct {p1, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->contentPaint:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->numPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x42000000    # 32.0f

    iget p3, p0, Lcom/powervision/gcs/view/FishImageView;->windowRatio:F

    mul-float p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    iget p1, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    const/high16 p2, 0x40d00000    # 6.5f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->titleTextSize:F

    .line 159
    iget-object p2, p0, Lcom/powervision/gcs/view/FishImageView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget p1, p0, Lcom/powervision/gcs/view/FishImageView;->eachHeight:F

    const p2, 0x40733333    # 3.8f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->contentSize:F

    .line 161
    iget-object p2, p0, Lcom/powervision/gcs/view/FishImageView;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setDepth(F)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->depth:F

    .line 204
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    return-void
.end method

.method public setHistory(Lcom/powervision/gcs/model/History;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 395
    :cond_0
    iget-object v1, p1, Lcom/powervision/gcs/model/History;->Date:Ljava/lang/String;

    iput-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->historyDate:Ljava/lang/String;

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->historyDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/gcs/model/History;->clock:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->historyDate:Ljava/lang/String;

    .line 397
    iget-object p1, p1, Lcom/powervision/gcs/model/History;->time:Ljava/lang/String;

    :try_start_0
    const-string v1, "mins"

    .line 399
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 400
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x42700000    # 60.0f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->aFloat:Ljava/lang/Float;

    .line 401
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 402
    iget-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->aFloat:Ljava/lang/Float;

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->endTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public setHistoryMode(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/powervision/gcs/view/FishImageView;->historyMode:Z

    return-void
.end method

.method public setHistoryWrongListener(Lcom/powervision/gcs/view/FishImageView$HistoryWrongListener;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->historyWrongListener:Lcom/powervision/gcs/view/FishImageView$HistoryWrongListener;

    return-void
.end method

.method public setLockDeepNum(FF)V
    .locals 2

    .line 570
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->zeroNum:F

    sub-float v0, p2, p1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    add-float v1, p1, v0

    .line 572
    iput v1, p0, Lcom/powervision/gcs/view/FishImageView;->num1:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    add-float/2addr v1, p1

    .line 573
    iput v1, p0, Lcom/powervision/gcs/view/FishImageView;->num2:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    add-float/2addr v0, p1

    .line 574
    iput v0, p0, Lcom/powervision/gcs/view/FishImageView;->num3:F

    .line 575
    iput p2, p0, Lcom/powervision/gcs/view/FishImageView;->num4:F

    .line 576
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/FishImageView;->updateRuleUnit(F)V

    .line 577
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    return-void
.end method

.method public setPrepareing(Z)V
    .locals 0

    .line 616
    iput-boolean p1, p0, Lcom/powervision/gcs/view/FishImageView;->preparing:Z

    return-void
.end method

.method public setRecodeingMode(Z)V
    .locals 2

    const-string v0, "lzqrecode"

    const-string v1, "setRecodeingMode true"

    .line 662
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iput-boolean p1, p0, Lcom/powervision/gcs/view/FishImageView;->onRecodingMode:Z

    if-nez p1, :cond_0

    .line 666
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->clockThread:Lcom/powervision/gcs/view/FishImageView$ClockThread;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/FishImageView$ClockThread;->interrupt()V

    goto :goto_0

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->clockThread:Lcom/powervision/gcs/view/FishImageView$ClockThread;

    if-nez p1, :cond_1

    .line 669
    new-instance p1, Lcom/powervision/gcs/view/FishImageView$ClockThread;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/powervision/gcs/view/FishImageView$ClockThread;-><init>(Lcom/powervision/gcs/view/FishImageView$1;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->clockThread:Lcom/powervision/gcs/view/FishImageView$ClockThread;

    .line 671
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->clockThread:Lcom/powervision/gcs/view/FishImageView$ClockThread;

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->listener:Lcom/powervision/gcs/view/FishImageView$ClockListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/FishImageView$ClockThread;->setListener(Lcom/powervision/gcs/view/FishImageView$ClockListener;)V

    .line 672
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->clockThread:Lcom/powervision/gcs/view/FishImageView$ClockThread;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/FishImageView$ClockThread;->start()V

    :goto_0
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    int-to-float p1, p1

    .line 683
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->screenWidth:F

    return-void
.end method

.method public setTem(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/powervision/gcs/view/FishImageView;->tem:I

    return-void
.end method

.method public startAnimation(F)V
    .locals 2

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 593
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 594
    new-instance v0, Lcom/powervision/gcs/view/FishImageView$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/FishImageView$1;-><init>(Lcom/powervision/gcs/view/FishImageView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 604
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 605
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public updataFishes()V
    .locals 5

    .line 519
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 522
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 524
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 525
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/model/FishModel;

    .line 527
    invoke-virtual {v2}, Lcom/powervision/gcs/model/FishModel;->getX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    .line 531
    invoke-virtual {v2, v3}, Lcom/powervision/gcs/model/FishModel;->setX(F)V

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 533
    iget-object v3, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    iget-object v3, p0, Lcom/powervision/gcs/view/FishImageView;->fishLock:Ljava/lang/Object;

    monitor-enter v3

    .line 535
    :try_start_0
    iget-object v4, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updataFishes2()V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/FishModel;

    .line 500
    invoke-virtual {v1}, Lcom/powervision/gcs/model/FishModel;->getX()F

    move-result v2

    .line 502
    iget v3, p0, Lcom/powervision/gcs/view/FishImageView;->scaleX:F

    sub-float/2addr v2, v3

    .line 504
    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/FishModel;->setX(F)V

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/powervision/gcs/view/FishImageView;->fishModels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updataTheRule()V
    .locals 1

    .line 186
    iget v0, p0, Lcom/powervision/gcs/view/FishImageView;->zeroNum:F

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/FishImageView;->updateRuleUnit(F)V

    return-void
.end method

.method public updateRuleUnit(F)V
    .locals 4

    .line 170
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n0:Ljava/lang/String;

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->num1:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n1:Ljava/lang/String;

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->num2:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n2:Ljava/lang/String;

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->num3:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n3:Ljava/lang/String;

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->num4:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n4:Ljava/lang/String;

    goto/16 :goto_0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->GongToBrith:F

    mul-float p1, p1, v2

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n0:Ljava/lang/String;

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->num1:F

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->GongToBrith:F

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n1:Ljava/lang/String;

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->num2:F

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->GongToBrith:F

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n2:Ljava/lang/String;

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->num3:F

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->GongToBrith:F

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n3:Ljava/lang/String;

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/powervision/gcs/view/FishImageView;->num4:F

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->GongToBrith:F

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->n4:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public updateTheLineCount(I)V
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    .line 414
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView;->aFloat:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 415
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->aFloat:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 417
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 418
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView;->currentTime:Ljava/lang/String;

    .line 420
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    return-void
.end method
