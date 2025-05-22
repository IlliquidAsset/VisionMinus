.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;
.super Ljava/util/TimerTask;
.source "ShipMainActivity.java"


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

    .line 5220
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5224
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->count:I

    .line 5225
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->sendEmptyMessage(I)Z

    .line 5226
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->count:I

    if-nez v0, :cond_0

    .line 5227
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5228
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->setSailModeChangeListener(Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;)V

    const/4 v0, 0x2

    .line 5276
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    const-wide/16 v0, 0x3e8

    .line 5278
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 5279
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x6

    iput v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->count:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
