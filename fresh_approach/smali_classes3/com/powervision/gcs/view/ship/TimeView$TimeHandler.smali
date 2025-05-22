.class Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/TimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/view/ship/TimeView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/TimeView;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/view/ship/TimeView;Landroid/os/Message;)V
    .locals 0

    .line 58
    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/TimeView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/powervision/gcs/view/ship/TimeView;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/ship/TimeView$TimeHandler;->referenceHandleMessage(Lcom/powervision/gcs/view/ship/TimeView;Landroid/os/Message;)V

    return-void
.end method
