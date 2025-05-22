.class Lcn/powervision/upgrade/manager/NewFirmWareManager$4;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$4;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckError()V
    .locals 0

    return-void
.end method

.method public onCheckOk()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$4;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$300(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 0

    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 0

    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 0

    return-void
.end method

.method public onLinkDisconnect()V
    .locals 0

    return-void
.end method
