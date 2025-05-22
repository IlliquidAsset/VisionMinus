.class Lcom/powervision/aircraft/ui/views/CameraMenuView$13;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;
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

    .line 1426
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$13;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stopDelayTimePhoto(Ljava/lang/String;)V
    .locals 2

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDelayTimePhoto = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const-string v0, "0"

    .line 1431
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1432
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/utils/RxCountDown;->cancelCount()V

    .line 1433
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$13;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1900(Lcom/powervision/aircraft/ui/views/CameraMenuView;)I

    move-result v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1700(Lcom/powervision/aircraft/ui/views/CameraMenuView;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
