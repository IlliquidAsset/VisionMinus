.class public Lcom/mob/guard/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mob/tools/log/NLog;

.field public static b:Ljava/lang/String;

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/guard/MobGuard;->getSdkTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/guard/impl/e;->b:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mob/guard/impl/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/mob/tools/log/NLog;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/guard/impl/e;->a:Lcom/mob/tools/log/NLog;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/mob/guard/impl/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/guard/impl/e;->a:Lcom/mob/tools/log/NLog;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/mob/guard/impl/e;->b()Lcom/mob/tools/log/NLog;

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
    sget-object v0, Lcom/mob/guard/impl/e;->a:Lcom/mob/tools/log/NLog;

    return-object v0
.end method

.method public static b()Lcom/mob/tools/log/NLog;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/guard/impl/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object v0

    sput-object v0, Lcom/mob/guard/impl/e;->a:Lcom/mob/tools/log/NLog;

    .line 2
    new-instance v1, Lcom/mob/guard/impl/e$a;

    invoke-direct {v1}, Lcom/mob/guard/impl/e$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->setCollector(Lcom/mob/tools/log/LogCollector;)Lcom/mob/tools/log/NLog;

    .line 9
    sget-object v0, Lcom/mob/guard/impl/e;->a:Lcom/mob/tools/log/NLog;

    return-object v0
.end method
