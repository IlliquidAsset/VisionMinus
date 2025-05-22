.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckError()V
    .locals 0

    return-void
.end method

.method public onCheckOk()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$002(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Z)Z

    .line 385
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3$1;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 397
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

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
