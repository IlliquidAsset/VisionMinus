.class Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$2;
.super Ljava/lang/Object;
.source "ShipCameraMenuPresenter.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$2;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public key_b_result(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$2;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onRemoteKeyBResult(I)V

    return-void
.end method
