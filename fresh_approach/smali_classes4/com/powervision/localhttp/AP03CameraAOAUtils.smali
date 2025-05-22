.class public Lcom/powervision/localhttp/AP03CameraAOAUtils;
.super Lcom/powervision/BaseHttpCameraAoaUtil;
.source "AP03CameraAOAUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;
    }
.end annotation


# static fields
.field protected static final MAX_RETRY_REQUEST_TIMES:I = 0x3

.field private static final REQUEST_TIMEOUT_TIME:J = 0x7530L

.field public static TAG:Ljava/lang/String; = "lzqHttp"

.field private static mAP03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;


# instance fields
.field private mRequestTimeoutHandler:Landroid/os/Handler;

.field private mRequestTimeoutRunnable:Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;

.field private mRequestUrl:Ljava/lang/String;

.field private mRetryRequestTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/powervision/localhttp/AP03CameraAOAUtils;

    invoke-direct {v0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mAP03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/powervision/BaseHttpCameraAoaUtil;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRetryRequestTimes:I

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestUrl:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;

    invoke-direct {v0, p0}, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;-><init>(Lcom/powervision/localhttp/AP03CameraAOAUtils;)V

    iput-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutRunnable:Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/localhttp/AP03CameraAOAUtils;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRetryRequestTimes:I

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/localhttp/AP03CameraAOAUtils;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRetryRequestTimes:I

    return p1
.end method

.method static synthetic access$004(Lcom/powervision/localhttp/AP03CameraAOAUtils;)I
    .locals 1

    .line 20
    iget v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRetryRequestTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRetryRequestTimes:I

    return v0
.end method

.method static synthetic access$100(Lcom/powervision/localhttp/AP03CameraAOAUtils;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static get()Lcom/powervision/localhttp/AP03CameraAOAUtils;
    .locals 1

    .line 42
    sget-object v0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mAP03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addRequestTimeout()V
    .locals 4

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutRunnable:Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutRunnable:Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutRunnable:Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownloadPath(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 5

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " HTTP/1.1\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Host: "

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "bytes="

    const-string v1, "Range: "

    const-wide/16 v2, -0x1

    cmp-long v4, p5, v2

    if-nez v4, :cond_0

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, "Connection: Keep-Alive"

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized postRequestHttp(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 98
    :try_start_0
    iput-object p1, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestUrl:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, p1}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->postRequest(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->addRequestTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized receiveMessage(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 111
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media---usb json= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    invoke-virtual {p0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->removeRequestTimeout()V

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object v2

    const-string v3, "CmdId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->updateSuccessMessage(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media--- usb JSONException= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRequestTimeout()V
    .locals 2

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutRunnable:Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils;->mRequestTimeoutRunnable:Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
