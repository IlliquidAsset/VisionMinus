.class public Lcom/powervision/gcs/view/CustomCycleLayout;
.super Landroid/widget/RelativeLayout;
.source "CustomCycleLayout.java"


# instance fields
.field Fill:Z

.field private context:Landroid/content/Context;

.field private isCycleView:Z

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/powervision/gcs/view/CustomCycleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/CustomCycleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->Fill:Z

    .line 41
    iput-object p1, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->context:Landroid/content/Context;

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->paint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/powervision/gcs/R$styleable;->CustomCycleView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    sget p2, Lcom/powervision/gcs/R$styleable;->CustomCycleView_iscycle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->isCycleView:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 62
    iget-boolean v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->isCycleView:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/powervision/gcs/view/CustomCycleLayout;->getWidth()I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lcom/powervision/gcs/view/CustomCycleLayout;->getHeight()I

    move-result v1

    .line 69
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 71
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 73
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v1, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 78
    iget-object v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 80
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 83
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIsCycleView()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->isCycleView:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 91
    iget-boolean v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->isCycleView:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 95
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 103
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 113
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 120
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setIsCycleView(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->isCycleView:Z

    .line 125
    invoke-virtual {p0}, Lcom/powervision/gcs/view/CustomCycleLayout;->invalidate()V

    return-void
.end method

.method public setNotFillParent()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/powervision/gcs/view/CustomCycleLayout;->Fill:Z

    return-void
.end method
