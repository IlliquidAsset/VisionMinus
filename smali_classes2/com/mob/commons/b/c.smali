.class public Lcom/mob/commons/b/c;
.super Ljava/lang/Object;
.source "FidsLog.java"


# static fields
.field private static final a:Lcom/mob/commons/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/mob/commons/b/c;

    invoke-direct {v0}, Lcom/mob/commons/b/c;-><init>()V

    sput-object v0, Lcom/mob/commons/b/c;->a:Lcom/mob/commons/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/commons/b/c;
    .locals 1

    .line 12
    sget-object v0, Lcom/mob/commons/b/c;->a:Lcom/mob/commons/b/c;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    .line 33
    :try_start_0
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/mob/commons/b/c;->b(Ljava/lang/Object;)V

    return-void
.end method
