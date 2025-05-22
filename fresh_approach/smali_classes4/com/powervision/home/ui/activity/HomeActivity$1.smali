.class Lcom/powervision/home/ui/activity/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$1;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAp03DeviceConnectFailed()V
    .locals 0

    return-void
.end method

.method public onAp03DeviceConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03DeviceConnected()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$1;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/HomeActivity;->access$000(Lcom/powervision/home/ui/activity/HomeActivity;)V

    return-void
.end method

.method public onAp03DeviceDisConnect()V
    .locals 0

    return-void
.end method

.method public onAp03HeartbeatRecovery()V
    .locals 0

    return-void
.end method

.method public onAp03HeartbeatTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03SelfDisconnect()V
    .locals 0

    return-void
.end method

.method public onChainConnectFailed()V
    .locals 0

    return-void
.end method

.method public onChainConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onChainConnected()V
    .locals 0

    return-void
.end method

.method public onChainDisconnected()V
    .locals 0

    return-void
.end method

.method public onW4DeviceConnectFailed()V
    .locals 0

    return-void
.end method

.method public onW4DeviceConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onW4DeviceConnected()V
    .locals 0

    return-void
.end method

.method public onW4DeviceDisConnect()V
    .locals 0

    return-void
.end method

.method public onW4HeartbeatRecovery()V
    .locals 0

    return-void
.end method

.method public onW4HeartbeatTimeout()V
    .locals 0

    return-void
.end method

.method public onW4SelfDisconnect()V
    .locals 0

    return-void
.end method
