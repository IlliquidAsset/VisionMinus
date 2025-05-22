.class Lcom/powervision/camera/views/CameraSettingView$2;
.super Ljava/lang/Object;
.source "CameraSettingView.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/camera/views/CameraSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/views/CameraSettingView;


# direct methods
.method constructor <init>(Lcom/powervision/camera/views/CameraSettingView;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/powervision/camera/views/CameraSettingView$2;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelayPhoto(Ljava/lang/String;)V
    .locals 2

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraNotifyOnDelayPhoto result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const-string v0, "timer_snap_success"

    .line 705
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 706
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView$2;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {p1}, Lcom/powervision/camera/views/CameraSettingView;->access$200(Lcom/powervision/camera/views/CameraSettingView;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/powervision/camera/views/CameraSettingView;->access$300(Lcom/powervision/camera/views/CameraSettingView;ILjava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView$2;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {p1}, Lcom/powervision/camera/views/CameraSettingView;->access$400(Lcom/powervision/camera/views/CameraSettingView;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/powervision/camera/views/CameraSettingView;->access$300(Lcom/powervision/camera/views/CameraSettingView;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
