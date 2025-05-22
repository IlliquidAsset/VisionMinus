.class Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$7;
.super Ljava/lang/Object;
.source "NewHandheldPersenter.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;


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

    .line 597
    iput-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$7;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLapsePhotoNumber(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$7;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$1700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$7;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$1800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->updatePhotoNum(I)V

    return-void
.end method
