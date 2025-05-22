.class Lcom/powervision/gcs/view/RockerCalibrateFragment$1;
.super Ljava/lang/Object;
.source "RockerCalibrateFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/RockerCalibrateFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/RockerCalibrateFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$1;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$1;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->confirmView:Lcom/powervision/gcs/view/ship/ConfirmView;

    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$1;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-static {v0}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->access$100(Lcom/powervision/gcs/view/RockerCalibrateFragment;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$1;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-static {v1}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->access$000(Lcom/powervision/gcs/view/RockerCalibrateFragment;)F

    move-result v1

    sub-float/2addr p2, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float p2, p2, v1

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ConfirmView;->setYPosition(F)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$1;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->access$002(Lcom/powervision/gcs/view/RockerCalibrateFragment;F)F

    .line 99
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$1;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-object p2, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->confirmView:Lcom/powervision/gcs/view/ship/ConfirmView;

    invoke-virtual {p2}, Lcom/powervision/gcs/view/ship/ConfirmView;->startDistance()F

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->access$102(Lcom/powervision/gcs/view/RockerCalibrateFragment;F)F

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$1;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-boolean p1, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->isTouchEnable:Z

    return p1
.end method
