.class Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;
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
    name = "CheckForHeaderLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V
    .locals 1

    .line 995
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;)V
    .locals 0

    .line 995
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 998
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget v2, v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-static {v1, v2}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->access$500(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;I)J

    move-result-wide v1

    .line 1003
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->sameWindow()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-boolean v3, v3, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 1004
    iget-object v3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v3, v0, v1, v2}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->performHeaderLongPress(Landroid/view/View;J)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1007
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    const/4 v2, -0x2

    iput v2, v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 1008
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1, v4}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->setPressed(Z)V

    .line 1009
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    :cond_2
    :goto_1
    return-void
.end method
