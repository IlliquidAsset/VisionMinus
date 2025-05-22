.class Lme/yokeyword/indexablerv/IndexBar;
.super Landroid/view/View;
.source "IndexBar.java"


# instance fields
.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusPaint:Landroid/graphics/Paint;

.field private mIndexHeight:F

.field private mIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectionPosition:I

.field private mTextSpace:F

.field private mTotalHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mMapping:Ljava/util/HashMap;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mFocusPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method getFirstRecyclerViewPositionBySelection()I
    .locals 2

    .line 125
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    iget v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mSelectionPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mMapping:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mMapping:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getIndexList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    return-object v0
.end method

.method getPositionForPointY(F)I
    .locals 1

    .line 101
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 103
    :cond_0
    iget v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexHeight:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 108
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_2
    :goto_0
    return p1
.end method

.method getSelectionPosition()I
    .locals 1

    .line 116
    iget v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mSelectionPosition:I

    return v0
.end method

.method init(Landroid/graphics/drawable/Drawable;IIFF)V
    .locals 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lme/yokeyword/indexablerv/IndexBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lme/yokeyword/indexablerv/IndexBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :goto_0
    iput p5, p0, Lme/yokeyword/indexablerv/IndexBar;->mTextSpace:F

    .line 50
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 52
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mFocusPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 55
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mFocusPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p2, p5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    add-float/2addr p4, p2

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 85
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexHeight:F

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 92
    iget v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mSelectionPosition:I

    const v2, 0x3f59999a    # 0.85f

    if-ne v1, v0, :cond_1

    .line 93
    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexHeight:F

    mul-float v2, v2, v4

    int-to-float v5, v0

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    iget-object v4, p0, Lme/yokeyword/indexablerv/IndexBar;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexHeight:F

    mul-float v2, v2, v4

    int-to-float v5, v0

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    iget-object v4, p0, Lme/yokeyword/indexablerv/IndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 62
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 64
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mFocusPaint:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lme/yokeyword/indexablerv/IndexBar;->mTextSpace:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mTotalHeight:I

    .line 70
    :cond_0
    iget v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mTotalHeight:I

    if-le v0, p2, :cond_1

    .line 71
    iput p2, p0, Lme/yokeyword/indexablerv/IndexBar;->mTotalHeight:I

    .line 80
    :cond_1
    iget p2, p0, Lme/yokeyword/indexablerv/IndexBar;->mTotalHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method setDatas(ZLjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p2, p0, Lme/yokeyword/indexablerv/IndexBar;->mDatas:Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/yokeyword/indexablerecyclerview/R$array;->indexable_letter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 147
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 148
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/yokeyword/indexablerv/EntityWrapper;

    .line 149
    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getItemType()I

    move-result v4

    const v5, 0x7ffffffe

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndexTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 150
    :cond_1
    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndex()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez p1, :cond_2

    .line 153
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v5, "#"

    .line 155
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 157
    :cond_3
    iget-object v5, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    .line 158
    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getHeaderFooterType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    .line 159
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getHeaderFooterType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 161
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_5
    :goto_2
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexBar;->mMapping:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 166
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexBar;->mMapping:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    .line 172
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 174
    :cond_8
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexBar;->requestLayout()V

    return-void
.end method

.method setSelection(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/yokeyword/indexablerv/EntityWrapper;

    .line 181
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mIndexList:Ljava/util/List;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndex()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 183
    iget v0, p0, Lme/yokeyword/indexablerv/IndexBar;->mSelectionPosition:I

    if-eq v0, p1, :cond_1

    if-ltz p1, :cond_1

    .line 184
    iput p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mSelectionPosition:I

    .line 185
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexBar;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method setSelectionPosition(I)V
    .locals 0

    .line 120
    iput p1, p0, Lme/yokeyword/indexablerv/IndexBar;->mSelectionPosition:I

    .line 121
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexBar;->invalidate()V

    return-void
.end method
