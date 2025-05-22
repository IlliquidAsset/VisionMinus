.class final Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;
.super Ljava/lang/Object;
.source "GridGroupedsGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForHeaderTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1060
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget v0, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-nez v0, :cond_3

    .line 1061
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 1062
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1063
    iget-object v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-boolean v2, v2, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    if-nez v2, :cond_3

    .line 1064
    iget-object v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-boolean v2, v2, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 1065
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1066
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->setPressed(Z)V

    .line 1067
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->refreshDrawableState()V

    .line 1069
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 1070
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-object v1, v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    if-nez v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    new-instance v2, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;)V

    iput-object v2, v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-object v1, v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;->rememberWindowAttachCount()V

    .line 1077
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-object v2, v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iput v3, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    goto :goto_0

    .line 1082
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iput v3, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    :cond_3
    :goto_0
    return-void
.end method
