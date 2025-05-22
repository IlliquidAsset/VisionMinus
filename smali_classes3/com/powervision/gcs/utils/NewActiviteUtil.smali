.class public Lcom/powervision/gcs/utils/NewActiviteUtil;
.super Ljava/lang/Object;
.source "NewActiviteUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/NewActiviteUtil$LoggingInterceptor;,
        Lcom/powervision/gcs/utils/NewActiviteUtil$OnPostNetListener;,
        Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;,
        Lcom/powervision/gcs/utils/NewActiviteUtil$Activite;,
        Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;,
        Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "lzqAc"

.field private static newActiviteUtil:Lcom/powervision/gcs/utils/NewActiviteUtil;


# instance fields
.field acLock:Ljava/lang/Object;

.field acStatus:I

.field activiteCode:Ljava/lang/String;

.field activiteStatusListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field activiteThread:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;

.field checkThread:Ljava/lang/Thread;

.field codes:[Ljava/lang/String;

.field onActiviteListener:Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;

.field onPostNetListener:Lcom/powervision/gcs/utils/NewActiviteUtil$OnPostNetListener;

.field res:I

.field resultListener:Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 84
    iput-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteCode:Ljava/lang/String;

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->res:I

    .line 86
    iput v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->acStatus:I

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteThread:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->acLock:Ljava/lang/Object;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteStatusListeners:Ljava/util/ArrayList;

    .line 262
    new-instance v1, Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/NewActiviteUtil$1;-><init>(Lcom/powervision/gcs/utils/NewActiviteUtil;)V

    iput-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->resultListener:Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    .line 372
    iput-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->codes:[Ljava/lang/String;

    .line 401
    iput-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->checkThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/utils/NewActiviteUtil;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->askActiviteCodeFailed()V

    return-void
.end method

.method private askActiviteCodeFailed()V
    .locals 0

    return-void
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 1

    .line 412
    invoke-static {}, Lcom/powervision/localhttp/utils/TimeUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;
    .locals 1

    .line 78
    sget-object v0, Lcom/powervision/gcs/utils/NewActiviteUtil;->newActiviteUtil:Lcom/powervision/gcs/utils/NewActiviteUtil;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/powervision/gcs/utils/NewActiviteUtil;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/NewActiviteUtil;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/NewActiviteUtil;->newActiviteUtil:Lcom/powervision/gcs/utils/NewActiviteUtil;

    .line 81
    :cond_0
    sget-object v0, Lcom/powervision/gcs/utils/NewActiviteUtil;->newActiviteUtil:Lcom/powervision/gcs/utils/NewActiviteUtil;

    return-object v0
.end method


# virtual methods
.method public activiteTheMechine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteThread:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->interrupt()V

    .line 175
    :cond_0
    new-instance v0, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;-><init>(Lcom/powervision/gcs/utils/NewActiviteUtil;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteThread:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;

    .line 176
    invoke-virtual {v0}, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->start()V

    const-string v0, "lzqActivite"

    const-string v1, "\u6fc0\u6d3b"

    .line 178
    invoke-static {v0, v1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addActiviteListener(Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public askActiviteCodeSuccess([Ljava/lang/String;)V
    .locals 3

    const-string v0, "lzqAc"

    const-string v1, "askActiviteCodeSuccess: "

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 387
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 388
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteCode:Ljava/lang/String;

    .line 392
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->notifyGetAcSuccess()V

    return-void
.end method

.method public askActivityCode()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u6c42\u6fc0\u6d3b\u7801 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lzqAc"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object v2

    new-instance v3, Lcom/powervision/natives/connect/ParamMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PV_RO_KEY_"

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

.method public askTheAcitiviteStatus(I)V
    .locals 4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6c42\u6fc0\u6d3b\u72b6\u6001  askTheAcitiviteStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqAc"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->resultListener:Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->addParameterResultListener(Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;)V

    .line 257
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object p1

    new-instance v0, Lcom/powervision/natives/connect/ParamMsg;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "PV_V_KEY_FLAG"

    invoke-direct {v0, v2, v3, v1}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    return-void
.end method

.method public askTheCode()V
    .locals 5

    .line 241
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object v0

    new-instance v1, Lcom/powervision/natives/connect/ParamMsg;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "PV_V_KEY_FLAG"

    invoke-direct {v1, v3, v4, v2}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    return-void
.end method

.method public checkNeedReLogin()Z
    .locals 8

    .line 507
    invoke-static {}, Lcom/powervision/base/utils/ACDbHelper;->getInstance()Lcom/powervision/base/utils/ACDbHelper;

    move-result-object v0

    const-class v1, Lcom/powervision/base/model/ActiviteModel;

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/ACDbHelper;->search(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 511
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 512
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 513
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/ActiviteModel;

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/powervision/base/model/ActiviteModel;->getActivationTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/ActiviteModel;

    .line 522
    invoke-virtual {p0, v2}, Lcom/powervision/gcs/utils/NewActiviteUtil;->doPost(Lcom/powervision/base/model/ActiviteModel;)V

    goto :goto_2

    :cond_2
    return v1
.end method

.method public doPost(Lcom/powervision/base/model/ActiviteModel;)V
    .locals 6

    .line 417
    invoke-virtual {p1}, Lcom/powervision/base/model/ActiviteModel;->getActiviteCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/powervision/base/model/ActiviteModel;->getActiviteCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "fake activiteCode"

    .line 418
    invoke-virtual {p1, v0}, Lcom/powervision/base/model/ActiviteModel;->setActiviteCode(Ljava/lang/String;)V

    .line 422
    :cond_1
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getPsn()Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "psn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqAc"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p1}, Lcom/powervision/base/model/ActiviteModel;->getActiviteCode()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/powervision/base/model/ActiviteModel;->setActivationTime(J)V

    .line 428
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getuserId()Ljava/lang/String;

    move-result-object v3

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Lcom/powervision/base/utils/ACDbHelper;->getInstance()Lcom/powervision/base/utils/ACDbHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/powervision/base/utils/ACDbHelper;->update(Ljava/lang/Object;)Z

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dopost "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lzqOk"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "application/json; charset=utf-8"

    .line 452
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 453
    new-instance v2, Lokhttp3/FormBody$Builder;

    invoke-direct {v2}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 454
    invoke-static {}, Lcom/powervision/localhttp/utils/StringUtils;->getDate_()Ljava/lang/String;

    move-result-object v4

    const-string v5, "activationTime"

    invoke-virtual {v2, v5, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 455
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "encryptStr"

    invoke-virtual {v2, v4, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 456
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "psn"

    invoke-virtual {v2, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    const-string v0, "userId"

    .line 457
    invoke-virtual {v2, v0, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 458
    invoke-virtual {v2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    .line 460
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 467
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 468
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f40

    .line 469
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 470
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 471
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 472
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 473
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "proActivation?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 475
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 478
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 479
    new-instance v1, Lcom/powervision/gcs/utils/NewActiviteUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/utils/NewActiviteUtil$2;-><init>(Lcom/powervision/gcs/utils/NewActiviteUtil;Lcom/powervision/base/model/ActiviteModel;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public getStatus()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->acStatus:I

    return v0
.end method

.method public getTheACode()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteCode:Ljava/lang/String;

    return-object v0
.end method

.method public getuserId()Ljava/lang/String;
    .locals 1

    .line 405
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyActivityStatus(I)V
    .locals 3

    .line 212
    iput p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->acStatus:I

    .line 213
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 215
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    invoke-interface {v2, p1}, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;->setActiviteStatus(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyGetAcSuccess()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 222
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    invoke-interface {v2}, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;->getActiviteCodeSuccess()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSysdoSetvalitekeyStatusError()V
    .locals 2

    const/4 v0, 0x1

    .line 109
    iput v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->res:I

    .line 110
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->acLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->acLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->onActiviteListener:Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;->onFailed()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 112
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSysdoSetvalitekeyStatusSuccess()V
    .locals 2

    const-string v0, "lzqAc"

    const-string v1, "\u6fc0\u6d3b\u6210\u529f"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->res:I

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->acLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->acLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 97
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->storeActiviteCode()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->onActiviteListener:Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0}, Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;->onSucess()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 94
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeActiviteListener(Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public searchTheDbToPostActivite()V
    .locals 3

    .line 497
    invoke-static {}, Lcom/powervision/base/utils/ACDbHelper;->getInstance()Lcom/powervision/base/utils/ACDbHelper;

    move-result-object v0

    const-class v1, Lcom/powervision/base/model/ActiviteModel;

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/ACDbHelper;->search(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " search : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqAc"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 499
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/ActiviteModel;

    .line 501
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->doPost(Lcom/powervision/base/model/ActiviteModel;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOnPostNetListener(Lcom/powervision/gcs/utils/NewActiviteUtil$OnPostNetListener;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->onPostNetListener:Lcom/powervision/gcs/utils/NewActiviteUtil$OnPostNetListener;

    return-void
.end method

.method public setonActiviteListener(Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->onActiviteListener:Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;

    return-void
.end method

.method public storeActiviteCode()V
    .locals 4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storeActiviteCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqAc"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/powervision/base/model/ActiviteModel;

    invoke-direct {v0}, Lcom/powervision/base/model/ActiviteModel;-><init>()V

    .line 232
    iget-object v2, p0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/powervision/base/model/ActiviteModel;->setActiviteCode(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/powervision/base/model/ActiviteModel;->setActivationTime(J)V

    .line 234
    invoke-static {}, Lcom/powervision/base/utils/ACDbHelper;->getInstance()Lcom/powervision/base/utils/ACDbHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/base/utils/ACDbHelper;->save(Ljava/lang/Object;)Z

    .line 235
    invoke-static {}, Lcom/powervision/base/utils/ACDbHelper;->getInstance()Lcom/powervision/base/utils/ACDbHelper;

    move-result-object v0

    const-class v2, Lcom/powervision/base/model/ActiviteModel;

    invoke-virtual {v0, v2}, Lcom/powervision/base/utils/ACDbHelper;->search(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unActiviteTheMechine()V
    .locals 5

    const-string v0, "lzqActivite"

    const-string v1, "\u53cd\u6fc0\u6d3b"

    .line 184
    invoke-static {v0, v1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object v0

    new-instance v1, Lcom/powervision/natives/connect/ParamMsg;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "PV_V_KEY_FLAG"

    invoke-direct {v1, v3, v4, v2}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    return-void
.end method
