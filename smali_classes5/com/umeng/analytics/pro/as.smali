.class public Lcom/umeng/analytics/pro/as;
.super Ljava/lang/Object;
.source "DeviceIdSupplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/aq;
    .locals 3

    .line 13
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Brand"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string v1, "Device"

    .line 14
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/az;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "huawei"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "honor"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "\u534e\u4e3a"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v0, "xiaomi"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "redmi"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "meitu"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "\u5c0f\u7c73"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "vivo"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    new-instance p0, Lcom/umeng/analytics/pro/ax;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ax;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "oppo"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "oneplus"

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "lenovo"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "zuk"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    .line 35
    :cond_5
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "SAMSUNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 36
    new-instance p0, Lcom/umeng/analytics/pro/aw;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/aw;-><init>()V

    return-object p0

    :cond_6
    return-object v1

    .line 34
    :cond_7
    :goto_0
    new-instance p0, Lcom/umeng/analytics/pro/au;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/au;-><init>()V

    return-object p0

    .line 31
    :cond_8
    :goto_1
    new-instance p0, Lcom/umeng/analytics/pro/av;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/av;-><init>()V

    return-object p0

    .line 26
    :cond_9
    :goto_2
    new-instance p0, Lcom/umeng/analytics/pro/ay;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ay;-><init>()V

    return-object p0

    .line 21
    :cond_a
    :goto_3
    new-instance p0, Lcom/umeng/analytics/pro/at;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/at;-><init>()V

    return-object p0
.end method
