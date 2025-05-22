.class Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "CloudPlatformFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloudHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;Landroid/os/Message;)V
    .locals 0

    .line 122
    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 114
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;Landroid/os/Message;)V

    return-void
.end method
