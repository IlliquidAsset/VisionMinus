.class public Lcom/umeng/analytics/pro/av;
.super Ljava/lang/Object;
.source "OppoDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/aq;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/av;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 25
    :try_start_0
    iget-boolean v2, p0, Lcom/umeng/analytics/pro/av;->a:Z

    if-nez v2, :cond_0

    .line 26
    invoke-static {p1}, Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;->a(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 27
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/av;->a:Z

    .line 29
    :cond_0
    invoke-static {}, Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;->a()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301\u83b7\u53d6OAID"

    .line 30
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    const-string p1, "\u672a\u68c0\u6d4b\u5230\u60a8\u96c6\u6210OAID SDK\u5305"

    .line 40
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
