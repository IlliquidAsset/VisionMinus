.class public Lcom/umeng/analytics/pro/ai;
.super Ljava/lang/Object;
.source "HttpPostThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/String; = "https://ucc.umeng.com/v1/fetch"

.field public static final b:Ljava/lang/String; = "https://pslog.umeng.com/ablog"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/umeng/analytics/pro/ai;->c:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/umeng/analytics/pro/ai;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/umeng/analytics/pro/ai;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/ai;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/umeng/analytics/pro/ai;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/ai;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ai;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/analytics/pro/ai;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 48
    iget-object v2, p0, Lcom/umeng/analytics/pro/ai;->c:Ljava/lang/String;

    const-string v3, "https://ucc.umeng.com/v1/fetch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/ai;->c:Ljava/lang/String;

    const-string v4, "https://pslog.umeng.com/ablog"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 55
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {}, Lcom/umeng/cconfig/UMRemoteConfig;->getInstance()Lcom/umeng/cconfig/UMRemoteConfig;

    move-result-object v0

    iget-object v3, p0, Lcom/umeng/analytics/pro/ai;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/cconfig/UMRemoteConfig;->handlerMessage(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :cond_2
    invoke-static {}, Lcom/umeng/cconfig/UMRemoteConfig;->getInstance()Lcom/umeng/cconfig/UMRemoteConfig;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/cconfig/UMRemoteConfig;->handlerMessage(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 62
    throw v0

    :catch_0
    :goto_2
    return-void
.end method
