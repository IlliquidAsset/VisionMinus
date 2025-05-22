.class final Lcom/umeng/commonsdk/UMInnerImpl$2;
.super Ljava/lang/Object;
.source "UMInnerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/UMInnerImpl;->initAndSendInternal(Landroid/content/Context;)V
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

    .line 79
    iput-object p1, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "e is "

    const-string v1, "internal"

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    const-string v4, "inner_lbs"

    .line 90
    invoke-static {v4}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/pro/ao;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    new-array v5, v3, [Ljava/lang/Object;

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 100
    :cond_0
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/c;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/commonsdk/internal/utils/c;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/c;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/commonsdk/internal/utils/c;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    new-array v5, v3, [Ljava/lang/Object;

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 111
    :cond_1
    :goto_1
    :try_start_5
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/k;->b(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_6
    new-array v5, v3, [Ljava/lang/Object;

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 119
    :goto_2
    :try_start_7
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/a;->d(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v4

    :try_start_8
    new-array v5, v3, [Ljava/lang/Object;

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_3
    :try_start_9
    const-string v4, "inner_sr"

    .line 127
    invoke-static {v4}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const-string v5, "MobclickRT"

    if-eqz v4, :cond_2

    :try_start_a
    const-string v4, "--->>> \u91c7\u96c6sensor\u6570\u636e, \u5df2\u4f7f\u80fd"

    .line 128
    invoke-static {v5, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/i;->b(Landroid/content/Context;)V

    goto :goto_4

    :cond_2
    const-string v4, "--->>> \u91c7\u96c6sensor\u6570\u636e, \u672a\u4f7f\u80fd"

    .line 131
    invoke-static {v5, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v4

    :try_start_b
    new-array v5, v3, [Ljava/lang/Object;

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 139
    :goto_4
    :try_start_c
    iget-object v0, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/utils/b;->b()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_5

    :catchall_5
    :try_start_d
    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "get station is null "

    aput-object v3, v0, v2

    .line 143
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    .line 147
    iget-object v1, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    return-void
.end method
