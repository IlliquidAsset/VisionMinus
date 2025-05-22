.class Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;
.super Ljava/lang/Object;
.source "GridGroupedsGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

.field final synthetic val$header:Landroid/view/View;

.field final synthetic val$performHeaderClick:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Landroid/view/View;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iput-object p2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->val$header:Landroid/view/View;

    iput-object p3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->val$performHeaderClick:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    .line 313
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->access$202(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 314
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iput v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 315
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->val$header:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 316
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->setPressed(Z)V

    .line 317
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 318
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-object v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->val$header:Landroid/view/View;

    .line 319
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 318
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->invalidate(IIII)V

    .line 320
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    iget-boolean v0, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;->val$performHeaderClick:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->run()V

    :cond_0
    return-void
.end method
