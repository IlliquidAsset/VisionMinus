.class Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "SmartClipsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartClipsrHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;Landroid/os/Message;)V
    .locals 0

    .line 126
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 118
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;Landroid/os/Message;)V

    return-void
.end method
