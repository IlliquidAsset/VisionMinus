.class Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;
.super Ljava/lang/Object;
.source "GridGroupedsGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

.field final synthetic val$headerHolder:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Landroid/view/View;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iput-object p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;->val$headerHolder:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;->val$headerHolder:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;->val$headerHolder:Landroid/view/View;

    .line 212
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;->val$headerHolder:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    .line 211
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate(IIII)V

    return-void
.end method
