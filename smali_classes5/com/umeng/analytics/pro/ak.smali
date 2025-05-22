.class public Lcom/umeng/analytics/pro/ak;
.super Ljava/lang/Object;
.source "ActiveFetchConfigTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/umeng/analytics/pro/ak;->a:Landroid/content/Context;

    return-void
.end method

.method private a()Z
    .locals 3

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/aa;->f()Lcom/umeng/analytics/pro/af;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/af;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/af;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/umeng/analytics/pro/ak;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/pro/aa;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v2, p0, Lcom/umeng/analytics/pro/ak;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/aa;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/pro/aa;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 27
    :try_start_0
    invoke-static {}, Lcom/umeng/cconfig/UMRemoteConfig;->getInstance()Lcom/umeng/cconfig/UMRemoteConfig;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ak;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/cconfig/UMRemoteConfig;->handlerMessage(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
