.class Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/wheelview/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WheelHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/view/wheelview/WheelScroller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/wheelview/WheelScroller;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/view/wheelview/WheelScroller;Landroid/os/Message;)V
    .locals 0

    .line 263
    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 255
    check-cast p1, Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;->referenceHandleMessage(Lcom/powervision/gcs/view/wheelview/WheelScroller;Landroid/os/Message;)V

    return-void
.end method
