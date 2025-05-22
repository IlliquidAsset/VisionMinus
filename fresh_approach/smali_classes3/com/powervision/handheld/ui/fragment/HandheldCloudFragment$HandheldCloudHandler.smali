.class Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "HandheldCloudFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandheldCloudHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;Landroid/os/Message;)V
    .locals 0

    .line 76
    invoke-static {p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->access$000(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 68
    check-cast p1, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->referenceHandleMessage(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;Landroid/os/Message;)V

    return-void
.end method
