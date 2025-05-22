.class public Lcom/powervision/gcs/view/HookView;
.super Landroid/view/View;
.source "HookView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 18
    iput p1, p0, Lcom/powervision/gcs/view/HookView;->strokeWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    .line 18
    iput p1, p0, Lcom/powervision/gcs/view/HookView;->strokeWidth:I

    .line 25
    invoke-direct {p0}, Lcom/powervision/gcs/view/HookView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/HookView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object v0, p0, Lcom/powervision/gcs/view/HookView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/HookView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->main_mission_control_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/powervision/gcs/view/HookView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/gcs/view/HookView;->strokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p0}, Lcom/powervision/gcs/view/HookView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float v3, v0, v1

    const v1, 0x3ee147ae    # 0.44f

    mul-float v4, v0, v1

    const v1, 0x3ebd70a4    # 0.37f

    mul-float v5, v0, v1

    const v1, 0x3f428f5c    # 0.76f

    mul-float v8, v0, v1

    .line 41
    iget-object v7, p0, Lcom/powervision/gcs/view/HookView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v1, 0x3eb33333    # 0.35f

    mul-float v7, v0, v1

    const v1, 0x3f47ae14    # 0.78f

    mul-float v9, v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v10, v0, v1

    .line 42
    iget-object v11, p0, Lcom/powervision/gcs/view/HookView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
