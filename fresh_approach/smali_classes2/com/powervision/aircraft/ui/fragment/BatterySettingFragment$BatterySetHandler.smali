.class Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "BatterySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatterySetHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 74
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$BatterySetHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;Landroid/os/Message;)V

    return-void
.end method
