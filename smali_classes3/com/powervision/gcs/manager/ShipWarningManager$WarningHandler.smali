.class public Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "ShipWarningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/ShipWarningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/manager/ShipWarningManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/manager/ShipWarningManager;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/manager/ShipWarningManager;Landroid/os/Message;)V
    .locals 2

    .line 68
    iget v0, p2, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 69
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/gcs/model/ship/ShipAutoData;

    .line 70
    invoke-static {p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->access$000(Lcom/powervision/gcs/manager/ShipWarningManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipAutoData;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 71
    invoke-static {p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->access$100(Lcom/powervision/gcs/manager/ShipWarningManager;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipAutoData;->getWarning()Lcom/powervision/gcs/model/ship/ShipWarning;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipAutoData;->getWarning()Lcom/powervision/gcs/model/ship/ShipWarning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipWarning;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_181:I

    invoke-virtual {p2, v0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    invoke-static {}, Lcom/powervision/gcs/manager/ShipWarningManager;->notifyHide()V

    goto :goto_0

    .line 76
    :cond_0
    iget p1, p2, Landroid/os/Message;->what:I

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/powervision/gcs/manager/ShipWarningManager;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;->referenceHandleMessage(Lcom/powervision/gcs/manager/ShipWarningManager;Landroid/os/Message;)V

    return-void
.end method
