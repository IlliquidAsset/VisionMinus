.class public Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "ReturnPointSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReturnSetHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 216
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 208
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;Landroid/os/Message;)V

    return-void
.end method
