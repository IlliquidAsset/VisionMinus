.class public Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "CameraMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraMenuViewHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/views/CameraMenuView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 1130
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/views/CameraMenuView;Landroid/os/Message;)V
    .locals 0

    .line 1135
    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 1127
    check-cast p1, Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/views/CameraMenuView;Landroid/os/Message;)V

    return-void
.end method
