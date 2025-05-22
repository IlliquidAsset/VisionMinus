.class public Lcom/mob/tools/MobLog;
.super Ljava/lang/Object;
.source "MobLog.java"


# static fields
.field private static logger:Lcom/mob/tools/log/NLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mob/tools/log/NLog;
    .locals 2

    const-class v0, Lcom/mob/tools/MobLog;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/mob/tools/MobLog;->logger:Lcom/mob/tools/log/NLog;

    if-nez v1, :cond_0

    const-string v1, "MOBSDK"

    .line 10
    invoke-static {v1}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object v1

    sput-object v1, Lcom/mob/tools/MobLog;->logger:Lcom/mob/tools/log/NLog;

    .line 12
    :cond_0
    sget-object v1, Lcom/mob/tools/MobLog;->logger:Lcom/mob/tools/log/NLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
