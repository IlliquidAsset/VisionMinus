.class Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;
.super Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;
.source "GridGroupedsGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformHeaderClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V
    .locals 1

    .line 1017
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;)V
    .locals 0

    .line 1017
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1024
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-boolean v0, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-object v0, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-object v0, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->mClickMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-object v1, v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 1029
    invoke-virtual {v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-static {v1, v2}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->access$500(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->performHeaderClick(Landroid/view/View;J)Z

    :cond_1
    return-void
.end method
