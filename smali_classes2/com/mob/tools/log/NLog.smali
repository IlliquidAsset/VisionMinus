.class public abstract Lcom/mob/tools/log/NLog;
.super Ljava/lang/Object;
.source "NLog.java"


# static fields
.field private static defaultCollector:Lcom/mob/tools/log/LogCollector;

.field private static disable:Z

.field private static loggers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/log/NLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private collector:Lcom/mob/tools/log/LogCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    .line 23
    invoke-static {}, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->register()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 1

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;
    .locals 3

    .line 55
    sget-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/log/NLog;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/mob/tools/log/NLog$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/log/NLog$1;-><init>(Ljava/lang/String;)V

    .line 63
    sget-object v2, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected static getInstanceForSDK(Ljava/lang/String;Z)Lcom/mob/tools/log/NLog;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object p0

    return-object p0
.end method

.method private getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    .line 269
    :try_start_0
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    return-object v0

    .line 272
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 275
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 276
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 277
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 278
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 279
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 283
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_3

    const-string p1, "getStackTraceString oom"

    return-object p1

    .line 286
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private println(IILjava/lang/String;)I
    .locals 6

    .line 295
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-object v5, p3

    .line 297
    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    .line 298
    iget-object p3, p0, Lcom/mob/tools/log/NLog;->collector:Lcom/mob/tools/log/LogCollector;

    if-nez p3, :cond_0

    sget-object p3, Lcom/mob/tools/log/NLog;->defaultCollector:Lcom/mob/tools/log/LogCollector;

    :cond_0
    move-object v0, p3

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    .line 300
    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/log/LogCollector;->log(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object p0

    .line 42
    invoke-virtual {p0, p1}, Lcom/mob/tools/log/NLog;->setCollector(Lcom/mob/tools/log/LogCollector;)Lcom/mob/tools/log/NLog;

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static setDefaultCollector(Lcom/mob/tools/log/LogCollector;)Lcom/mob/tools/log/LogCollector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Collector::",
            "Lcom/mob/tools/log/LogCollector;",
            ">(TCollector;)TCollector;"
        }
    .end annotation

    .line 70
    sput-object p0, Lcom/mob/tools/log/NLog;->defaultCollector:Lcom/mob/tools/log/LogCollector;

    return-object p0
.end method


# virtual methods
.method public final crash(Ljava/lang/Throwable;)I
    .locals 2

    .line 227
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 230
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 116
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 p2, 0x3

    .line 121
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Throwable;)I
    .locals 2

    .line 109
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    .line 112
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    .line 125
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 128
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p3

    if-lez v2, :cond_1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 131
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 201
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 p2, 0x6

    .line 206
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Throwable;)I
    .locals 2

    .line 194
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x6

    .line 197
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    .line 210
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 213
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p3

    if-lez v2, :cond_1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    .line 216
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected abstract getSDKTag()Ljava/lang/String;
.end method

.method public final varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 142
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 p2, 0x4

    .line 147
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/Throwable;)I
    .locals 2

    .line 135
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    .line 138
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    .line 151
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 154
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p3

    if-lez v2, :cond_1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    .line 157
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs sdkErr(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 241
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 p2, 0x6

    const/4 v0, 0x3

    .line 246
    invoke-direct {p0, p2, v0, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final sdkErr(Ljava/lang/Throwable;)I
    .locals 2

    .line 234
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x3

    .line 237
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs sdkErr(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 250
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 253
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p3

    if-lez v1, :cond_1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const/4 p3, 0x3

    .line 256
    invoke-direct {p0, p2, p3, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCollector(Lcom/mob/tools/log/LogCollector;)Lcom/mob/tools/log/NLog;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mob/tools/log/NLog;->collector:Lcom/mob/tools/log/LogCollector;

    return-object p0
.end method

.method public final varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 90
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 p2, 0x2

    .line 95
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final v(Ljava/lang/Throwable;)I
    .locals 2

    .line 83
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 86
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    .line 99
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p3

    if-lez v2, :cond_1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    .line 105
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 168
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 p2, 0x5

    .line 173
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final w(Ljava/lang/String;)I
    .locals 2

    .line 187
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 190
    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final w(Ljava/lang/Throwable;)I
    .locals 2

    .line 161
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 164
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    .line 177
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 180
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p3

    if-lez v2, :cond_1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    .line 183
    invoke-direct {p0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public wtf(Ljava/lang/Throwable;)I
    .locals 2

    .line 220
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x6

    .line 223
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->println(IILjava/lang/String;)I

    move-result p1

    return p1
.end method
