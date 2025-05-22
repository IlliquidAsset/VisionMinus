.class Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;
.super Ljava/lang/Object;
.source "ShipCameraMenuPresenter.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: signal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCameraMenuPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->handleRemoteSignal(I)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 193
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
