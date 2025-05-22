.class public Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "AircraftBasicFlightGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteControlerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;)V
    .locals 0

    .line 521
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;Landroid/os/Message;)V
    .locals 0

    .line 526
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->access$000(Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 518
    check-cast p1, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;Landroid/os/Message;)V

    return-void
.end method
