.class Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "RemoteModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteModeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;Landroid/os/Message;)V
    .locals 0

    .line 64
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;Landroid/os/Message;)V

    return-void
.end method
