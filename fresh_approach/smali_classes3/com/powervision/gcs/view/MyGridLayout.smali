.class public Lcom/powervision/gcs/view/MyGridLayout;
.super Landroid/view/ViewGroup;
.source "MyGridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/MyGridLayout$GridAdatper;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field adapter:Lcom/powervision/gcs/view/MyGridLayout$GridAdatper;

.field colums:I

.field count:I

.field private mMaxChildHeight:I

.field private mMaxChildWidth:I

.field margin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/MyGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/MyGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "MyGridLayout"

    .line 19
    iput-object p1, p0, Lcom/powervision/gcs/view/MyGridLayout;->TAG:Ljava/lang/String;

    const/4 p1, 0x2

    .line 21
    iput p1, p0, Lcom/powervision/gcs/view/MyGridLayout;->margin:I

    .line 22
    iput p1, p0, Lcom/powervision/gcs/view/MyGridLayout;->colums:I

    const/4 p3, 0x0

    .line 23
    iput p3, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildWidth:I

    .line 24
    iput p3, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildHeight:I

    .line 25
    iput p3, p0, Lcom/powervision/gcs/view/MyGridLayout;->count:I

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MyGridLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/powervision/gcs/R$styleable;->MyGridLayout:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 34
    sget p3, Lcom/powervision/gcs/R$styleable;->MyGridLayout_numColumns:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/powervision/gcs/view/MyGridLayout;->colums:I

    .line 35
    sget p3, Lcom/powervision/gcs/R$styleable;->MyGridLayout_itemMargin:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/MyGridLayout;->margin:I

    .line 36
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 91
    iget p1, p0, Lcom/powervision/gcs/view/MyGridLayout;->count:I

    iget p2, p0, Lcom/powervision/gcs/view/MyGridLayout;->colums:I

    rem-int p3, p1, p2

    div-int/2addr p1, p2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 92
    :goto_0
    iget p2, p0, Lcom/powervision/gcs/view/MyGridLayout;->count:I

    if-nez p2, :cond_1

    return-void

    .line 94
    :cond_1
    iget p2, p0, Lcom/powervision/gcs/view/MyGridLayout;->margin:I

    iget p3, p0, Lcom/powervision/gcs/view/MyGridLayout;->colums:I

    add-int/lit8 v0, p3, -0x1

    mul-int v0, v0, p2

    sub-int/2addr p4, v0

    div-int/2addr p4, p3

    mul-int p3, p2, p1

    sub-int/2addr p5, p3

    .line 95
    div-int/2addr p5, p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_6

    const/4 v1, 0x0

    .line 101
    :goto_2
    iget v2, p0, Lcom/powervision/gcs/view/MyGridLayout;->colums:I

    if-ge v1, v2, :cond_5

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    .line 102
    invoke-virtual {p0, v2}, Lcom/powervision/gcs/view/MyGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    mul-int v3, v1, p4

    .line 105
    iget v4, p0, Lcom/powervision/gcs/view/MyGridLayout;->margin:I

    mul-int v4, v4, v1

    add-int/2addr v3, v4

    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-ne p4, v4, :cond_3

    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eq p5, v4, :cond_4

    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    .line 109
    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 110
    invoke-static {p5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 109
    invoke-virtual {v2, v5, v4}, Landroid/view/View;->measure(II)V

    :cond_4
    add-int v4, v3, p4

    add-int v5, p2, p5

    .line 112
    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 117
    :cond_5
    iget v1, p0, Lcom/powervision/gcs/view/MyGridLayout;->margin:I

    add-int/2addr v1, p5

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildWidth:I

    .line 51
    iput v0, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildHeight:I

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 56
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 59
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 62
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 61
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 64
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MyGridLayout;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/powervision/gcs/view/MyGridLayout;->count:I

    if-nez v3, :cond_0

    .line 66
    invoke-super {p0, v1, v2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 69
    :cond_0
    :goto_0
    iget v3, p0, Lcom/powervision/gcs/view/MyGridLayout;->count:I

    if-ge v0, v3, :cond_2

    .line 70
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/MyGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    .line 77
    iget v4, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildWidth:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildWidth:I

    .line 78
    iget v4, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildHeight:I

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 78
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildHeight:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    iget v0, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildWidth:I

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/MyGridLayout;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lcom/powervision/gcs/view/MyGridLayout;->mMaxChildHeight:I

    .line 83
    invoke-static {v0, p2}, Lcom/powervision/gcs/view/MyGridLayout;->resolveSize(II)I

    move-result p2

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/MyGridLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGridAdapter(Lcom/powervision/gcs/view/MyGridLayout$GridAdatper;)V
    .locals 3

    .line 129
    iput-object p1, p0, Lcom/powervision/gcs/view/MyGridLayout;->adapter:Lcom/powervision/gcs/view/MyGridLayout$GridAdatper;

    .line 131
    invoke-interface {p1}, Lcom/powervision/gcs/view/MyGridLayout$GridAdatper;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    invoke-interface {p1, v1}, Lcom/powervision/gcs/view/MyGridLayout$GridAdatper;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/view/MyGridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
