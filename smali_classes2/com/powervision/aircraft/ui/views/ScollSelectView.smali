.class public Lcom/powervision/aircraft/ui/views/ScollSelectView;
.super Landroid/widget/RelativeLayout;
.source "ScollSelectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/ScollSelectView$MessageLisetener;,
        Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;,
        Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;
    }
.end annotation


# instance fields
.field private PAGE_COUNT:I

.field private adapter:Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;

.field private aim:I

.field private bian:I

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field public onScrollSelect:Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;

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

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v0, 0x5

    .line 31
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->PAGE_COUNT:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->datas:Ljava/util/List;

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->aim:I

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->isFirstClick:Z

    .line 227
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->firstView:Landroid/view/View;

    .line 228
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->lastView:Landroid/view/View;

    .line 70
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->initPaint()V

    .line 74
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mContext:Landroid/content/Context;

    sget p2, Lcom/powervision/aircraft/R$layout;->aircraft_scollse_clect_content_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->firstView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/aircraft/ui/views/ScollSelectView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->firstView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->eachWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->aim:I

    return p0
.end method

.method static synthetic access$302(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->aim:I

    return p1
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->previousAimPosition:I

    return p0
.end method

.method static synthetic access$502(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->previousAimPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private drawSelectLine(Landroid/graphics/Canvas;)V
    .locals 8

    .line 275
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->startLine1:I

    add-int/lit8 v1, v0, -0x2

    int-to-float v3, v1

    iget v4, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->sideHeight:F

    add-int/lit8 v0, v0, -0x2

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->wholeHeight:I

    int-to-float v0, v0

    sub-float v6, v0, v4

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->startLine2:I

    add-int/lit8 v1, v0, 0x2

    int-to-float v3, v1

    iget v4, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->sideHeight:F

    add-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->wholeHeight:I

    int-to-float v0, v0

    sub-float v6, v0, v4

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTrigon(Landroid/graphics/Canvas;)V
    .locals 4

    .line 262
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 263
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->halfWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->triStartY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 264
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->halfWidth:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->bian:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->triStartY:I

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->triHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->halfWidth:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->bian:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->triStartY:I

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->triHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 267
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mTriPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    const-string v1, "#3F3F3F"

    .line 206
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mDividerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mTriPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 210
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mTriPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->sc_r:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public getOnScrollSelect()Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->onScrollSelect:Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->drawSelectLine(Landroid/graphics/Canvas;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->drawTrigon(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 197
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 198
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->initView()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 236
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 237
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->wholeWidth:I

    .line 238
    iget p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->PAGE_COUNT:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->eachWidth:I

    .line 239
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->wholeHeight:I

    int-to-float p2, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    .line 240
    iput p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->sideHeight:F

    .line 241
    iget p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->wholeWidth:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->halfWidth:I

    .line 243
    iget p3, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->eachWidth:I

    div-int/lit8 p4, p3, 0x2

    sub-int p4, p2, p4

    iput p4, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->startLine1:I

    .line 245
    div-int/lit8 p4, p3, 0x2

    add-int/2addr p2, p4

    iput p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->startLine2:I

    .line 246
    div-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->bian:I

    mul-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    const p2, 0x40733333    # 3.8f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 247
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->triStartY:I

    int-to-float p1, p3

    float-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    .line 248
    invoke-static {p3, p4, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, p3

    div-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->triHeight:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 223
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 3

    .line 161
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->previousAimPosition:I

    if-eq v0, p1, :cond_0

    .line 162
    new-instance v0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;-><init>(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->datas:Ljava/util/List;

    const-string p1, "dfasdfasdfasdfadfa"

    const-string v0, "adapter\u7a7a"

    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance p1, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->datas:Ljava/util/List;

    new-instance v2, Lcom/powervision/aircraft/ui/views/ScollSelectView$1;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView$1;-><init>(Lcom/powervision/aircraft/ui/views/ScollSelectView;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/powervision/aircraft/ui/views/ScollSelectView$MessageLisetener;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->adapter:Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;

    .line 91
    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->notifyDataSetChanged()V

    .line 92
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->adapter:Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 95
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;-><init>(Lcom/powervision/aircraft/ui/views/ScollSelectView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setOnScrollSelect(Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView;->onScrollSelect:Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;

    return-void
.end method
