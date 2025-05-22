.class final Lcom/umeng/analytics/pro/ao$1;
.super Ljava/lang/Object;
.source "UMSysLocationCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/pro/ao;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/umeng/analytics/pro/ao$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ao$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/ao;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "UMSysLocationCache"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location status is ok, time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    new-instance v0, Lcom/umeng/analytics/pro/an;

    iget-object v1, p0, Lcom/umeng/analytics/pro/ao$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/an;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v1, Lcom/umeng/analytics/pro/ao$1$1;

    invoke-direct {v1, p0, v0}, Lcom/umeng/analytics/pro/ao$1$1;-><init>(Lcom/umeng/analytics/pro/ao$1;Lcom/umeng/analytics/pro/an;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/an;->a(Lcom/umeng/analytics/pro/ap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method
