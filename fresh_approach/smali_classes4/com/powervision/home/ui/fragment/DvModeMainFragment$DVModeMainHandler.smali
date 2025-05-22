.class Lcom/powervision/home/ui/fragment/DvModeMainFragment$DVModeMainHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "DvModeMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/fragment/DvModeMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DVModeMainHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/home/ui/fragment/DvModeMainFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Landroid/os/Message;)V
    .locals 0

    .line 65
    invoke-static {p1, p2}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$000(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/home/ui/fragment/DvModeMainFragment$DVModeMainHandler;->referenceHandleMessage(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Landroid/os/Message;)V

    return-void
.end method
