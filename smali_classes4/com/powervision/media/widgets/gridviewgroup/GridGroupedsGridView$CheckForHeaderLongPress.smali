.class Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;
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
    name = "CheckForHeaderLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;


# direct methods
.method private constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)V
    .locals 1

    .line 1007
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$WindowRunnable;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$1;)V
    .locals 0

    .line 1007
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1010
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1012
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget v2, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-static {v1, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->access$500(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;I)J

    move-result-wide v1

    .line 1015
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->sameWindow()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-boolean v3, v3, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 1016
    iget-object v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v3, v0, v1, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->performHeaderLongPress(Landroid/view/View;J)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1019
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    const/4 v2, -0x2

    iput v2, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 1020
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1, v4}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setPressed(Z)V

    .line 1021
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    :cond_2
    :goto_1
    return-void
.end method
