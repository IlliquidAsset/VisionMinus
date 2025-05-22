.class Lcn/powervision/upgrade/manager/NewFirmWareManager$14;
.super Landroid/os/Handler;
.source "NewFirmWareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDeviceFirmwareVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;Landroid/os/Looper;)V
    .locals 0

    .line 2269
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$14;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2272
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2273
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$14;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget v0, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->VERSION:I

    if-ne p1, v0, :cond_1

    .line 2274
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->intergrationUpgradeGetVersion()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2276
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$14;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDeviceFirmwareVersion()V

    goto :goto_0

    .line 2279
    :cond_0
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$14;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v0, 0x5

    iput v0, p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->tryCount:I

    :cond_1
    :goto_0
    return-void
.end method
