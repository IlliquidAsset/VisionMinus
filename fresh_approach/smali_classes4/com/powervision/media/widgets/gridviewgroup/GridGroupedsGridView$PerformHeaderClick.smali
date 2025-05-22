.class Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;
.super Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$WindowRunnable;
.source "GridGroupedsGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformHeaderClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;


# direct methods
.method private constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)V
    .locals 1

    .line 1029
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$WindowRunnable;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$1;)V
    .locals 0

    .line 1029
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1036
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-boolean v0, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-object v0, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-object v0, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->mClickMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-object v1, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 1041
    invoke-virtual {v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-static {v1, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->access$500(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->performHeaderClick(Landroid/view/View;J)Z

    :cond_1
    return-void
.end method
