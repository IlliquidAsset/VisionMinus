.class public Lcom/powervision/gcs/manager/Dl01BsOperHelper;
.super Ljava/lang/Object;
.source "Dl01BsOperHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dl01BsOperHelper"

.field private static mInstance:Lcom/powervision/gcs/manager/Dl01BsOperHelper;


# instance fields
.field private airListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;",
            ">;"
        }
    .end annotation
.end field

.field airlistener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

.field private listener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->airListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    new-instance v0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper$1;-><init>(Lcom/powervision/gcs/manager/Dl01BsOperHelper;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->airlistener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    .line 148
    new-instance v0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2;-><init>(Lcom/powervision/gcs/manager/Dl01BsOperHelper;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->listener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    return-void
.end method

.method public static get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;
    .locals 1

    .line 30
    sget-object v0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->mInstance:Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    invoke-direct {v0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;-><init>()V

    sput-object v0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->mInstance:Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    .line 32
    invoke-direct {v0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->initCallback()V

    .line 34
    :cond_0
    sget-object v0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->mInstance:Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    return-object v0
.end method

.method private initCallback()V
    .locals 2

    const-string v0, "lzqW4_dl01_a"

    const-string v1, "initCallBack operate "

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->listener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setDl01BSOperListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    .line 76
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->airlistener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setNotifyOnAirSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;)V

    return-void
.end method


# virtual methods
.method public addAirOpListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->airListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lzqW4_dl01_a"

    const-string v1, "add notify  "

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->airListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 118
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setDl01BSOperListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    return-void
.end method

.method public getDl01Version()V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "20"

    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v1, v2}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public notifyAir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->airListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    .line 94
    invoke-interface {v1, p1, p2, p3}, Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;->getAirDl01OperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyListeners(IILjava/lang/String;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    .line 143
    invoke-interface {v1, p1, p2, p3}, Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;->dl01BSOper(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reStartAirWifi()V
    .locals 3

    const-string v0, "lzqw4_dl01_air"

    const-string v1, "\u91cd\u542fSonarWifi"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    const-string v1, ""

    const/4 v2, 0x1

    .line 68
    invoke-static {v0, v1, v2}, Lcom/powervision/natives/JniDl01Native;->airSetGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public reStartWifi()V
    .locals 3

    const-string v0, "lzqPair"

    const-string v1, "reStart"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    const-string v1, ""

    const/4 v2, 0x1

    .line 44
    invoke-static {v0, v1, v2}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public removeAirListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->airListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setRemotePair(Ljava/lang/String;)V
    .locals 2

    const-string v0, "lzqPair"

    const-string v1, "reStart"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 53
    invoke-static {v0, p1, v1}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public setSonarPair(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 63
    invoke-static {v0, p1, v1}, Lcom/powervision/natives/JniDl01Native;->airSetGetOperation(ILjava/lang/String;I)I

    return-void
.end method
