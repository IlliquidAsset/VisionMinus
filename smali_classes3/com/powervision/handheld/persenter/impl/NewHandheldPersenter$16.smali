.class Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;
.super Ljava/lang/Object;
.source "NewHandheldPersenter.java"

# interfaces
.implements Lcom/powervision/camera/camera/CameraListener;


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

    .line 860
    iput-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraConnect()V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$6500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$6600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->connected()V

    return-void
.end method

.method public onCameraConnectFaile()V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$6700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$6800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->connectFail()V

    return-void
.end method

.method public onCameraConnectHeartBeatTimeOut()V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$7100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$7200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->connectFail()V

    return-void
.end method

.method public onCameraConnectTimeOut()V
    .locals 0

    return-void
.end method

.method public onCameraDisconnect()V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$6900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$7000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->disConnect()V

    return-void
.end method
