.class final Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;
.super Ljava/lang/Object;
.source "GridGroupedsGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForHeaderTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;


# direct methods
.method constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1072
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget v0, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-nez v0, :cond_3

    .line 1073
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 1074
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-virtual {v0, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1075
    iget-object v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-boolean v2, v2, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    if-nez v2, :cond_3

    .line 1076
    iget-object v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-boolean v2, v2, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 1077
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1078
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setPressed(Z)V

    .line 1079
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->refreshDrawableState()V

    .line 1081
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 1082
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-object v1, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    if-nez v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    new-instance v2, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$1;)V

    iput-object v2, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    .line 1088
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-object v1, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    invoke-virtual {v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->rememberWindowAttachCount()V

    .line 1089
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-object v2, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iput v3, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    goto :goto_0

    .line 1094
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iput v3, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    :cond_3
    :goto_0
    return-void
.end method
