.class public Lcom/powervision/localhttp/AP03CameraHttpUtils;
.super Ljava/lang/Object;
.source "AP03CameraHttpUtils.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mAP03CameraHttpUtils:Lcom/powervision/localhttp/AP03CameraHttpUtils;


# instance fields
.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/powervision/localhttp/AP03CameraHttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/localhttp/AP03CameraHttpUtils;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/powervision/localhttp/AP03CameraHttpUtils;

    invoke-direct {v0}, Lcom/powervision/localhttp/AP03CameraHttpUtils;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/AP03CameraHttpUtils;->mAP03CameraHttpUtils:Lcom/powervision/localhttp/AP03CameraHttpUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 36
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 37
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 38
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 40
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/AP03CameraHttpUtils;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static get()Lcom/powervision/localhttp/AP03CameraHttpUtils;
    .locals 1

    .line 44
    sget-object v0, Lcom/powervision/localhttp/AP03CameraHttpUtils;->mAP03CameraHttpUtils:Lcom/powervision/localhttp/AP03CameraHttpUtils;

    return-object v0
.end method


# virtual methods
.method public postRequest(Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/config/PVW4CameraConfig;->get()Lcom/powervision/base/config/PVW4CameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/config/PVW4CameraConfig;->getHttpServerIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media--- postRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/powervision/localhttp/AP03CameraHttpUtils;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/powervision/localhttp/AP03CameraHttpUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/localhttp/AP03CameraHttpUtils$1;-><init>(Lcom/powervision/localhttp/AP03CameraHttpUtils;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
