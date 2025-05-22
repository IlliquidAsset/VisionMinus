.class public Lcom/powervision/base/utils/FirmWareDownLoadManager;
.super Ljava/lang/Object;
.source "FirmWareDownLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/FirmWareDownLoadManager$DownLoadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field CONNECT_TIMEOUT:I

.field READ_TIMEOUT:I

.field RETRYRANGE:I

.field TRYCOUNT:I

.field WRITE_TIMEOUT:I

.field allInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field baseModelPath:Ljava/lang/String;

.field mCurrentSize:J

.field mDownloadCall:Lokhttp3/Call;

.field okHttpClient:Lokhttp3/OkHttpClient;

.field totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 16
    iput v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->READ_TIMEOUT:I

    .line 17
    iput v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->WRITE_TIMEOUT:I

    .line 18
    iput v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->CONNECT_TIMEOUT:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->mDownloadCall:Lokhttp3/Call;

    const/16 v0, 0xa

    .line 20
    iput v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->RETRYRANGE:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->TRYCOUNT:I

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->baseModelPath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->totalSize:J

    .line 24
    iput-wide v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->mCurrentSize:J

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->allInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;JLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 28
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->READ_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->WRITE_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->CONNECT_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 35
    iput-object p1, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->baseModelPath:Ljava/lang/String;

    .line 36
    iput-wide p2, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->totalSize:J

    .line 37
    invoke-virtual {p4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/powervision/base/utils/FirmWareDownLoadManager;->allInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public startDownLoad()V
    .locals 0

    return-void
.end method
