.class Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "ShipCameraMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;Landroid/os/Message;)V
    .locals 0

    .line 146
    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 138
    check-cast p1, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->referenceHandleMessage(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;Landroid/os/Message;)V

    return-void
.end method
