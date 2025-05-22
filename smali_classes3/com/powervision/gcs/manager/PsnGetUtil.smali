.class public Lcom/powervision/gcs/manager/PsnGetUtil;
.super Ljava/lang/Object;
.source "PsnGetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;
    }
.end annotation


# static fields
.field static psnGetUtil:Lcom/powervision/gcs/manager/PsnGetUtil;


# instance fields
.field checkThread:Ljava/lang/Thread;

.field codes:[Ljava/lang/String;

.field psnCode:Ljava/lang/String;

.field psnGetListener:Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;

.field resultListener:Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->psnCode:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->codes:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->checkThread:Ljava/lang/Thread;

    .line 48
    new-instance v0, Lcom/powervision/gcs/manager/PsnGetUtil$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PsnGetUtil$1;-><init>(Lcom/powervision/gcs/manager/PsnGetUtil;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->resultListener:Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;

    return-void
.end method

.method public static declared-synchronized get()Lcom/powervision/gcs/manager/PsnGetUtil;
    .locals 2

    const-class v0, Lcom/powervision/gcs/manager/PsnGetUtil;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/manager/PsnGetUtil;->psnGetUtil:Lcom/powervision/gcs/manager/PsnGetUtil;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/powervision/gcs/manager/PsnGetUtil;

    invoke-direct {v1}, Lcom/powervision/gcs/manager/PsnGetUtil;-><init>()V

    sput-object v1, Lcom/powervision/gcs/manager/PsnGetUtil;->psnGetUtil:Lcom/powervision/gcs/manager/PsnGetUtil;

    .line 35
    :cond_0
    sget-object v1, Lcom/powervision/gcs/manager/PsnGetUtil;->psnGetUtil:Lcom/powervision/gcs/manager/PsnGetUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public askPsnCode()V
    .locals 7

    .line 40
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->resultListener:Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->addParameterResultListener(Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 42
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object v2

    new-instance v3, Lcom/powervision/natives/connect/ParamMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PV_RO_PSN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4, v5}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPsnCode()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->psnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPsnGetListener()Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->psnGetListener:Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;

    return-object v0
.end method

.method public setPsnCode([Ljava/lang/String;)V
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 127
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 128
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->psnCode:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->psnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SPHelperUtils;->savePsn(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->psnGetListener:Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;

    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->psnCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;->PsnNotify(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setPsnGetListener(Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/powervision/gcs/manager/PsnGetUtil;->psnGetListener:Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;

    return-void
.end method
