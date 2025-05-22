.class Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "PerceptionSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerceptionHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 133
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 125
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Landroid/os/Message;)V

    return-void
.end method
