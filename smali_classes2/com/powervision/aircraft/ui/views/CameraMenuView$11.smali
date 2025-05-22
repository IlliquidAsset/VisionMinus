.class Lcom/powervision/aircraft/ui/views/CameraMenuView$11;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 1172
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$11;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

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

    const-string v0, "nemo_record_info-air"

    const-string v1, "\u70b9\u51fb\u6309\u94ae \u6b63\u5e38\u5f00\u59cb\u5f55\u50cf \u8d70\u84dd\u7259"

    .line 1179
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$11;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1500(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    return-void
.end method
