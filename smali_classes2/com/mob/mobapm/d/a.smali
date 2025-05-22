.class public Lcom/mob/mobapm/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mob/tools/log/NLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/tools/log/NLog;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mobapm/d/a;->a:Lcom/mob/tools/log/NLog;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/mobapm/d/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/d/a;->a:Lcom/mob/tools/log/NLog;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/mob/mobapm/d/a;->b()Lcom/mob/tools/log/NLog;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mobapm/d/a;->a:Lcom/mob/tools/log/NLog;

    return-object v0
.end method

.method public static b()Lcom/mob/tools/log/NLog;
    .locals 3

    .line 1
    invoke-static {}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->get()Lcom/mob/commons/logcollector/DefaultLogsCollector;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/mob/commons/MOBAPM;->sdkTag:Ljava/lang/String;

    sget v2, Lcom/mob/commons/MOBAPM;->SDK_VERSION_CODE:I

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->addSDK(Ljava/lang/String;I)V

    .line 3
    sget-object v0, Lcom/mob/commons/MOBAPM;->sdkTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object v0

    sput-object v0, Lcom/mob/mobapm/d/a;->a:Lcom/mob/tools/log/NLog;

    return-object v0
.end method
