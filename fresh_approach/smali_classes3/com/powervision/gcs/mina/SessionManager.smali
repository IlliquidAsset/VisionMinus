.class public Lcom/powervision/gcs/mina/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static mInstance:Lcom/powervision/gcs/mina/SessionManager;


# instance fields
.field private mSession:Lorg/apache/mina/core/session/IoSession;

.field private sendDataSuccessFailBack:Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/mina/SessionManager;
    .locals 2

    .line 18
    sget-object v0, Lcom/powervision/gcs/mina/SessionManager;->mInstance:Lcom/powervision/gcs/mina/SessionManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/powervision/gcs/mina/SessionManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/mina/SessionManager;->mInstance:Lcom/powervision/gcs/mina/SessionManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/powervision/gcs/mina/SessionManager;

    invoke-direct {v1}, Lcom/powervision/gcs/mina/SessionManager;-><init>()V

    sput-object v1, Lcom/powervision/gcs/mina/SessionManager;->mInstance:Lcom/powervision/gcs/mina/SessionManager;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/gcs/mina/SessionManager;->mInstance:Lcom/powervision/gcs/mina/SessionManager;

    return-object v0
.end method


# virtual methods
.method public closeSession()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/mina/SessionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->closeOnFlush()Lorg/apache/mina/core/future/CloseFuture;

    :cond_0
    return-void
.end method

.method public removeSession()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/powervision/gcs/mina/SessionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method public setSession(Lorg/apache/mina/core/session/IoSession;Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;)V
    .locals 0

    .line 32
    iput-object p2, p0, Lcom/powervision/gcs/mina/SessionManager;->sendDataSuccessFailBack:Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/mina/SessionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method public writeToServer(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/gcs/mina/SessionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 39
    iget-object v0, p0, Lcom/powervision/gcs/mina/SessionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    :cond_0
    return-void
.end method

.method public writeToServer([B)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/mina/SessionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    const/4 v1, 0x1

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sonarsenddataresult"

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/powervision/gcs/mina/SessionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    .line 53
    invoke-interface {p1}, Lorg/apache/mina/core/future/WriteFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/powervision/gcs/mina/SessionManager;->sendDataSuccessFailBack:Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, v1}, Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;->onFailBack(Ljava/lang/Object;)V

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/mina/core/future/WriteFuture;->isWritten()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/mina/SessionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/powervision/gcs/mina/SessionManager;->sendDataSuccessFailBack:Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;

    if-eqz p1, :cond_2

    .line 63
    invoke-interface {p1, v1}, Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;->onFailBack(Ljava/lang/Object;)V

    :cond_2
    const-string p1, "fail"

    .line 67
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
