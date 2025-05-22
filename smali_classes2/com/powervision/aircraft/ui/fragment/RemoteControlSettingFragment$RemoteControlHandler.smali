.class Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "RemoteControlSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteControlHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 83
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/os/Message;)V

    return-void
.end method
