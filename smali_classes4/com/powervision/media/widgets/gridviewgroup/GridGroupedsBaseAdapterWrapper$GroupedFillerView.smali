.class public Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;
.super Landroid/widget/FrameLayout;
.source "GridGroupedsBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupedFillerView"
.end annotation


# instance fields
.field private mGroupedId:I

.field final synthetic this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 326
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 330
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 334
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 347
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getGroupedId()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->mGroupedId:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 352
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 353
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 356
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 359
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v1, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->getChildMeasureSpec(III)I

    move-result v2

    .line 360
    iget-object v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-static {v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->access$100(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->getChildMeasureSpec(III)I

    move-result v0

    .line 361
    invoke-virtual {p2, v0, v2}, Landroid/view/View;->measure(II)V

    .line 363
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGroupedId(I)V
    .locals 0

    .line 342
    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->mGroupedId:I

    return-void
.end method
