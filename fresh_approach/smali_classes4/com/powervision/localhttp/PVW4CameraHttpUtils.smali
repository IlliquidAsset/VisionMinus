.class public Lcom/powervision/localhttp/PVW4CameraHttpUtils;
.super Ljava/lang/Object;
.source "PVW4CameraHttpUtils.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mPVW4CameraHttpUtilsInstance:Lcom/powervision/localhttp/PVW4CameraHttpUtils;


# instance fields
.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/powervision/localhttp/PVW4CameraHttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/localhttp/PVW4CameraHttpUtils;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/powervision/localhttp/PVW4CameraHttpUtils;

    invoke-direct {v0}, Lcom/powervision/localhttp/PVW4CameraHttpUtils;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/PVW4CameraHttpUtils;->mPVW4CameraHttpUtilsInstance:Lcom/powervision/localhttp/PVW4CameraHttpUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 35
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 36
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 38
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4CameraHttpUtils;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static get()Lcom/powervision/localhttp/PVW4CameraHttpUtils;
    .locals 1

    .line 42
    sget-object v0, Lcom/powervision/localhttp/PVW4CameraHttpUtils;->mPVW4CameraHttpUtilsInstance:Lcom/powervision/localhttp/PVW4CameraHttpUtils;

    return-object v0
.end method


# virtual methods
.method public postRequest(Ljava/lang/String;)V
    .locals 3

    const-string v0, "http"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
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

    .line 49
    :cond_0
    sget-object v0, Lcom/powervision/localhttp/PVW4CameraHttpUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4CameraHttpUtils;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 53
    new-instance v0, Lcom/powervision/localhttp/PVW4CameraHttpUtils$1;

    invoke-direct {v0, p0}, Lcom/powervision/localhttp/PVW4CameraHttpUtils$1;-><init>(Lcom/powervision/localhttp/PVW4CameraHttpUtils;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
