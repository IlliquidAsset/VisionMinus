.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;
.super Ljava/lang/Thread;
.source "PVW4FirmWareUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodyThread"
.end annotation


# instance fields
.field bodyCount:I

.field private listener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 985
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 986
    iput v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->bodyCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$1;)V
    .locals 0

    .line 985
    invoke-direct {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "0"

    const-string v1, "lzqW4_Firm_body"

    .line 998
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1000
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1004
    :goto_0
    iget v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->bodyCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5faa\u73af\u5916\u90e8 cameraVerison:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->CAMERAVERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5faa\u73af\u5916\u90e8 fcVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->FCVERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->FCVERSION:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->FCVERSION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->CAMERAVERSION:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->CAMERAVERSION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x64

    .line 1019
    iput v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->bodyCount:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v2, 0x190

    .line 1012
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1013
    iget v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->bodyCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->bodyCount:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1015
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1022
    iput v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->bodyCount:I

    .line 1024
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->listener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;

    if-eqz v0, :cond_3

    .line 1025
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->listener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->CAMERAVERSION:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->FCVERSION:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;->checkBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->listener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;

    if-eqz v0, :cond_5

    .line 1029
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->listener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;

    invoke-interface {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;->onDestory()V

    goto :goto_2

    .line 1001
    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    .line 1034
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->listener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;

    if-eqz v0, :cond_5

    .line 1035
    invoke-interface {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;->onDestory()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setListenr(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;)V
    .locals 0

    .line 991
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->listener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;

    const/4 p1, 0x0

    .line 992
    iput p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->bodyCount:I

    return-void
.end method
