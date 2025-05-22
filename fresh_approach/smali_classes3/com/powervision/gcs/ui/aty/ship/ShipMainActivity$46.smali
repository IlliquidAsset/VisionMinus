.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/SlideReturnView$SlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showAutoReturn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Ljava/util/Timer;)V
    .locals 0

    .line 5285
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelReturnSlide()V
    .locals 2

    .line 5288
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x6

    iput v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->count:I

    .line 5289
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5290
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/SlideReturnView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    return-void
.end method

.method public returnSlide()V
    .locals 2

    .line 5295
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x6

    iput v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->count:I

    .line 5296
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5297
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/SlideReturnView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    .line 5298
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->setSailModeChangeListener(Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;)V

    const/4 v0, 0x2

    .line 5334
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    return-void
.end method
