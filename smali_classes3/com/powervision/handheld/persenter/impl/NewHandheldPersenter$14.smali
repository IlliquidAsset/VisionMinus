.class Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$14;
.super Ljava/lang/Object;
.source "NewHandheldPersenter.java"

# interfaces
.implements Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;


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

    .line 836
    iput-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$14;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAEBMultiplePhotoState(I)V
    .locals 3

    .line 839
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$14;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$5900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 841
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$14;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$6000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->setAEBMultipleShotsFail()V

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$14;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$6100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$14;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v1

    const-string v2, ""

    invoke-interface {v0, v2, p1, v1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->setAEBMultipleShotsSuccess(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method
