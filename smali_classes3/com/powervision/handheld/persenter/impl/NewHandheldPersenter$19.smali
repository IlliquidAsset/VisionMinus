.class Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;
.super Ljava/lang/Object;
.source "NewHandheldPersenter.java"

# interfaces
.implements Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoResolutionChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVideoResolutionChange(Ljava/lang/String;)V
    .locals 2

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolution = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$1100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    invoke-static {v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2502(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;I)I

    const-string v0, "0"

    .line 915
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$7800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onSwitchRecordMode(Ljava/lang/String;)V

    goto :goto_1

    .line 917
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$7700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/view/INewHandheldView;

    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->setSlowMotionModeSuccess(I)V

    goto :goto_1

    .line 922
    :cond_2
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$7900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->setSlowMotionModeFail()V

    :goto_1
    return-void
.end method
