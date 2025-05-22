.class Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "RockerEXPSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RockerEXPHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;Landroid/os/Message;)V

    return-void
.end method
