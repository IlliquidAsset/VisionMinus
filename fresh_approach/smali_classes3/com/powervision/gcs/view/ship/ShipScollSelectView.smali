.class public Lcom/powervision/gcs/view/ship/ShipScollSelectView;
.super Landroid/widget/RelativeLayout;
.source "ShipScollSelectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipScollSelectView$OnScrollSelect;,
        Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;
    }
.end annotation


# instance fields
.field private PAGE_COUNT:I

.field private adapter:Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;

.field private aim:I

.field private bian:I

.field private datas:[Ljava/lang/String;

.field private eachWidth:I

.field private firstView:Landroid/view/View;

.field private halfWidth:I

.field private isFirstClick:Z

.field private lastView:Landroid/view/View;

.field private lastX:F

.field private lastY:F

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mContext:Landroid/content/Context;

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mTriPaint:Landroid/graphics/Paint;

.field private mView:Landroid/view/View;

.field public onScrollSelect:Lcom/powervision/gcs/view/ship/ShipScollSelectView$OnScrollSelect;

.field private previousAimPosition:I

.field private recycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private sideHeight:F

.field private startLine1:I

.field startLine2:I

.field private triHeight:I

.field private triStartY:I

.field private wholeHeight:I

.field private wholeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v0, 0x5

    .line 28
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->PAGE_COUNT:I

    .line 53
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->datas:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->aim:I

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->isFirstClick:Z

    .line 225
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->firstView:Landroid/view/View;

    .line 226
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->lastView:Landroid/view/View;

    .line 67
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->initPaint()V

    .line 71
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mContext:Landroid/content/Context;

    sget p2, Lcom/powervision/gcs/R$layout;->scollseclectcontent:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->firstView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/ship/ShipScollSelectView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->firstView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->eachWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->aim:I

    return p0
.end method

.method static synthetic access$302(Lcom/powervision/gcs/view/ship/ShipScollSelectView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->aim:I

    return p1
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)[Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->datas:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->previousAimPosition:I

    return p0
.end method

.method static synthetic access$502(Lcom/powervision/gcs/view/ship/ShipScollSelectView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->previousAimPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private drawSelectLine(Landroid/graphics/Canvas;)V
    .locals 8

    .line 273
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->startLine1:I

    add-int/lit8 v1, v0, -0x2

    int-to-float v3, v1

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->sideHeight:F

    add-int/lit8 v0, v0, -0x2

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->wholeHeight:I

    int-to-float v0, v0

    sub-float v6, v0, v4

    iget-object v7, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 274
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->startLine2:I

    add-int/lit8 v1, v0, 0x2

    int-to-float v3, v1

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->sideHeight:F

    add-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->wholeHeight:I

    int-to-float v0, v0

    sub-float v6, v0, v4

    iget-object v7, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTrigon(Landroid/graphics/Canvas;)V
    .locals 4

    .line 260
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 261
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->halfWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->triStartY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 262
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->halfWidth:I

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->bian:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->triStartY:I

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->triHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->halfWidth:I

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->bian:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->triStartY:I

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->triHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 265
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mTriPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 203
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    const-string v1, "#3F3F3F"

    .line 204
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mTriPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 208
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mTriPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/powervision/gcs/R$id;->sc_r:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 187
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public getOnScrollSelect()Lcom/powervision/gcs/view/ship/ShipScollSelectView$OnScrollSelect;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->onScrollSelect:Lcom/powervision/gcs/view/ship/ShipScollSelectView$OnScrollSelect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 252
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->drawSelectLine(Landroid/graphics/Canvas;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->drawTrigon(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 195
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 196
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->initView()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 234
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 235
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->wholeWidth:I

    .line 236
    iget p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->PAGE_COUNT:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->eachWidth:I

    .line 237
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->wholeHeight:I

    int-to-float p2, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    .line 238
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->sideHeight:F

    .line 239
    iget p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->wholeWidth:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->halfWidth:I

    .line 241
    iget p3, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->eachWidth:I

    div-int/lit8 p4, p3, 0x2

    sub-int p4, p2, p4

    iput p4, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->startLine1:I

    .line 243
    div-int/lit8 p4, p3, 0x2

    add-int/2addr p2, p4

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->startLine2:I

    .line 244
    div-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->bian:I

    mul-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    const p2, 0x40733333    # 3.8f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 245
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->triStartY:I

    int-to-float p1, p3

    float-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    .line 246
    invoke-static {p3, p4, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, p3

    div-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->triHeight:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 3

    .line 157
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->previousAimPosition:I

    if-eq v0, p1, :cond_0

    .line 158
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$3;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView$3;-><init>(Lcom/powervision/gcs/view/ship/ShipScollSelectView;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setDatas([Ljava/lang/String;)V
    .locals 3

    .line 79
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->datas:[Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->adapter:Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/powervision/gcs/view/ship/ShipScollSelectView$1;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView$1;-><init>(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/powervision/gcs/ui/interfaces/MessageLisetener;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->adapter:Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;

    .line 87
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;-><init>(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setOnScrollSelect(Lcom/powervision/gcs/view/ship/ShipScollSelectView$OnScrollSelect;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->onScrollSelect:Lcom/powervision/gcs/view/ship/ShipScollSelectView$OnScrollSelect;

    return-void
.end method
