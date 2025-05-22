.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/W49342LinkCallBack;


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

    .line 714
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onFailed()V
    .locals 0

    return-void
.end method

.method public onGetVersion(Ljava/lang/String;)V
    .locals 3

    const-string v0, "lzqW4_Firm_9342"

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_"

    .line 718
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "_"

    .line 719
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 720
    aget-object p1, p1, v1

    .line 723
    :cond_0
    sput-object p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->WIFIVERSION:Ljava/lang/String;

    .line 724
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$300(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 726
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->WIFIVERSION:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getRemoteWifiVersionSucceed(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLinkFailed()V
    .locals 0

    return-void
.end method

.method public onLinkSuccess()V
    .locals 4

    const-string v0, "lzqW4_Firm_9342"

    const-string v1, " 9342 \u8fde\u63a5\u6210\u529f\u83b7\u53d6\u7248\u672c\u53f7"

    .line 737
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 740
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v2, v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "2222"

    .line 741
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v2, v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getRemoteWifiVersionSucceed(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->initRemote(I)V

    return-void
.end method

.method public onTimeOut()V
    .locals 0

    return-void
.end method
