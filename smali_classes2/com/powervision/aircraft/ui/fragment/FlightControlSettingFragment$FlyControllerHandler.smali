.class Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "FlightControlSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlyControllerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 122
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 114
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;Landroid/os/Message;)V

    return-void
.end method
