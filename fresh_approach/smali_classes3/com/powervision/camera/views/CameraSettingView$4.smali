.class Lcom/powervision/camera/views/CameraSettingView$4;
.super Ljava/lang/Object;
.source "CameraSettingView.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;


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

    .line 732
    iput-object p1, p0, Lcom/powervision/camera/views/CameraSettingView$4;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiplePhoto(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 736
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView$4;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {p1}, Lcom/powervision/camera/views/CameraSettingView;->access$600(Lcom/powervision/camera/views/CameraSettingView;)I

    move-result v0

    const-string v1, "\u62cd\u7167\u5931\u8d25"

    invoke-static {p1, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->access$300(Lcom/powervision/camera/views/CameraSettingView;ILjava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView$4;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {p1}, Lcom/powervision/camera/views/CameraSettingView;->access$700(Lcom/powervision/camera/views/CameraSettingView;)I

    move-result v0

    const-string v1, "\u62cd\u7167\u6210\u529f"

    invoke-static {p1, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->access$300(Lcom/powervision/camera/views/CameraSettingView;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
