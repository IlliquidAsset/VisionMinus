.class public Lcom/umeng/commonsdk/framework/UMWorkDispatch;
.super Ljava/lang/Object;
.source "UMWorkDispatch.java"


# static fields
.field public static final GENERAL_CONTENT:Ljava/lang/String; = "content"

.field public static final GENERAL_HEADER:Ljava/lang/String; = "header"

.field public static final KEY_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final MSG_AUTO_PROCESS:I = 0x301

.field private static final MSG_CHECKER_TIMER:I = 0x303

.field private static final MSG_DELAY_PROCESS:I = 0x302

.field private static final MSG_QUIT:I = 0x310

.field private static final MSG_SEND_EVENT:I = 0x300

.field private static mNetTask:Landroid/os/HandlerThread;

.field private static mSender:Lcom/umeng/commonsdk/framework/a;

.field private static mSenderInitLock:Ljava/lang/Object;

.field private static mTaskHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSenderInitLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Quit()V
    .locals 2

    .line 306
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x310

    .line 308
    iput v1, v0, Landroid/os/Message;->what:I

    .line 309
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->handleEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 21
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->delayProcess()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 21
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->handleQuit()V

    return-void
.end method

.method private static delayProcess()V
    .locals 7

    const-string v0, "exception"

    const-string v1, "--->>> delayProcess Enter..."

    .line 124
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    const-string v2, "MobclickRT"

    .line 125
    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 129
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v3

    const-string v5, "analytics"

    .line 134
    invoke-static {v5}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 143
    :try_start_0
    invoke-interface {v5, v3, v4}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->setupReportData(J)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "--->>> analyticsCB.setupReportData() return null"

    .line 146
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_3

    .line 151
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "header"

    .line 152
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "content"

    .line 153
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 157
    invoke-static {v1, v3, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 160
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> autoProcess: Build envelope error code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    :try_start_2
    const-string v0, "--->>> autoProcess: removeCacheData ... "

    .line 168
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-interface {v5, v3}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->removeCacheData(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 176
    :goto_0
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static declared-synchronized eventHasExist()Z
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    .line 257
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 258
    monitor-exit v0

    return v1

    .line 260
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    const/16 v2, 0x303

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized eventHasExist(I)Z
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    .line 250
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 251
    monitor-exit v0

    return p0

    .line 253
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static handleEvent(Landroid/os/Message;)V
    .locals 4

    .line 272
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 273
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->eventType2ModuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 278
    invoke-interface {v1, p0, v0}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->workEvent(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method private static handleQuit()V
    .locals 1

    .line 297
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->c()V

    const-string v0, "--->>> handleQuit: Quit dispatch thread."

    .line 299
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 301
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->teardown()V

    :cond_0
    return-void
.end method

.method private static declared-synchronized init()V
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    :try_start_0
    const-string v1, "--->>> Dispatch: init Enter..."

    .line 197
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "work_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 201
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 202
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch$1;

    sget-object v2, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 236
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v1, "--->>> Dispatch: init Exit..."

    .line 238
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static registerConnStateObserver(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/a;->a(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized removeEvent()V
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    .line 264
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 265
    monitor-exit v0

    return-void

    .line 267
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    const/16 v2, 0x303

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static sendDelayProcessMsg(J)V
    .locals 3

    .line 182
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x302

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v2, "MobclickRT"

    if-eqz v0, :cond_0

    const-string p0, "--->>> MSG_DELAY_PROCESS has exist. do nothing."

    .line 185
    invoke-static {v2, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "--->>> MSG_DELAY_PROCESS not exist. send it."

    .line 188
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 190
    iput v1, v0, Landroid/os/Message;->what:I

    .line 191
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    .locals 7

    const/16 v1, 0x300

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 102
    invoke-static/range {v0 .. v6}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    .locals 7

    const/16 v1, 0x300

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 106
    invoke-static/range {v0 .. v6}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    return-void
.end method

.method public static sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    .locals 7

    const/16 v1, 0x303

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 110
    invoke-static/range {v0 .. v6}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    return-void
.end method

.method public static sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    .locals 2

    if-eqz p0, :cond_7

    if-nez p3, :cond_0

    goto :goto_2

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->registerAppContext(Landroid/content/Context;)V

    .line 63
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->registerCallback(ILcom/umeng/commonsdk/framework/UMLogDataProtocol;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 66
    :cond_1
    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    if-eqz p3, :cond_2

    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    if-nez p3, :cond_3

    .line 67
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->init()V

    .line 71
    :cond_3
    :try_start_0
    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    if-eqz p3, :cond_6

    .line 72
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 73
    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSenderInitLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    if-nez v0, :cond_4

    .line 75
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->syncLegacyEnvelopeIfNeeded(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/umeng/commonsdk/framework/a;

    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/umeng/commonsdk/framework/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    .line 78
    :cond_4
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 81
    :cond_5
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 82
    iput p1, p0, Landroid/os/Message;->what:I

    .line 83
    iput p2, p0, Landroid/os/Message;->arg1:I

    .line 85
    iput-object p4, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    sget-object p1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 89
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    const-string p0, "--->>> Context or UMLogDataProtocol parameter cannot be null!"

    .line 59
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static teardown()V
    .locals 2

    .line 283
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 286
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 287
    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 290
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    if-eqz v0, :cond_2

    .line 291
    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    :cond_2
    return-void
.end method
