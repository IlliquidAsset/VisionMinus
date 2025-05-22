.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$10;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setDelayTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 1637
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$10;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1640
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$10;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    .line 1641
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$10;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    return-void
.end method
