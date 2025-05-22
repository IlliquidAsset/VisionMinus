.class Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "AirLapseFreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/AirLapseFreeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FreeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/views/AirLapseFreeView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;Landroid/os/Message;)V
    .locals 0

    .line 338
    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$1800(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 330
    check-cast p1, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;Landroid/os/Message;)V

    return-void
.end method
