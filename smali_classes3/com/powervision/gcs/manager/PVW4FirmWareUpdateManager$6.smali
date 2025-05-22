.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$6;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;


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

    .line 783
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$6;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteControlGetSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "PV_RC_VER_STD"

    .line 801
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "lzqW4_Firm_MCU"

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  \u62ff\u5230  \u9065\u63a7\u5668mcu\u7248\u672c\u53f7  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 805
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 811
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 813
    :goto_0
    sput-object p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    .line 815
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$6;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$300(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 816
    :try_start_0
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$6;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object p2, p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 817
    :goto_1
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$6;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$6;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getRemoteMCUVersionSucceed(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 822
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_3
    :goto_2
    return-void
.end method

.method public onRemoteControlGetTimeout(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onRemoteControlSetSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const-string p2, "PV_RC_VER_STD"

    .line 787
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "lzqW4_Firm_MCU"

    const-string p2, "    \u9065\u63a7\u5668mcu\u7248\u672c\u53f7 onRemoteControlSetSuccess"

    .line 788
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRemoteControlSetTimeout(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const-string p2, "PV_RC_VER_STD"

    .line 794
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "lzqW4_Firm_MCU"

    const-string p2, "    \u9065\u63a7\u5668mcu\u7248\u672c\u53f7 onRemoteControlSetTimeout"

    .line 795
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
