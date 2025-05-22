.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34$1;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;)V
    .locals 0

    .line 3670
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34$1;->this$1:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "nemo_record_info"

    const-string v1, "\u8d70\u5e7f\u64ad\uff0c\u4ece\u5916\u653e\u6536\u58f0\u53d8\u6210\u84dd\u7259\u6536\u58f0 \u84dd\u7259\u6536\u58f0\u5f00\u59cb\u4e86"

    .line 3677
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3678
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34$1;->this$1:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;

    iget-object v0, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    return-void
.end method
