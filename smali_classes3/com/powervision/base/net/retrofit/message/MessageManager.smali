.class public Lcom/powervision/base/net/retrofit/message/MessageManager;
.super Ljava/lang/Object;
.source "MessageManager.java"


# static fields
.field private static volatile messageManager:Lcom/powervision/base/net/retrofit/message/MessageManager;


# instance fields
.field private messageApi:Lcom/powervision/base/net/retrofit/message/MessageApi;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getMessageUrl()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-static {}, Lcom/powervision/base/net/RetrofitUtil;->getInstance()Lcom/powervision/base/net/RetrofitUtil;

    move-result-object v1

    const-class v2, Lcom/powervision/base/net/retrofit/message/MessageApi;

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/net/RetrofitUtil;->getGsonService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/net/retrofit/message/MessageApi;

    iput-object v0, p0, Lcom/powervision/base/net/retrofit/message/MessageManager;->messageApi:Lcom/powervision/base/net/retrofit/message/MessageApi;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/base/net/retrofit/message/MessageManager;
    .locals 2

    .line 25
    sget-object v0, Lcom/powervision/base/net/retrofit/message/MessageManager;->messageManager:Lcom/powervision/base/net/retrofit/message/MessageManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/powervision/base/net/retrofit/message/MessageManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/powervision/base/net/retrofit/message/MessageManager;->messageManager:Lcom/powervision/base/net/retrofit/message/MessageManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/powervision/base/net/retrofit/message/MessageManager;

    invoke-direct {v1}, Lcom/powervision/base/net/retrofit/message/MessageManager;-><init>()V

    sput-object v1, Lcom/powervision/base/net/retrofit/message/MessageManager;->messageManager:Lcom/powervision/base/net/retrofit/message/MessageManager;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/net/retrofit/message/MessageManager;->messageManager:Lcom/powervision/base/net/retrofit/message/MessageManager;

    return-object v0
.end method


# virtual methods
.method public getMessageApi()Lcom/powervision/base/net/retrofit/message/MessageApi;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/message/MessageManager;->messageApi:Lcom/powervision/base/net/retrofit/message/MessageApi;

    return-object v0
.end method
