.class public Lcom/umeng/analytics/pro/ab;
.super Ljava/lang/Object;
.source "UMPreferenceWrapper.java"


# static fields
.field public static final a:Ljava/lang/String; = "cconfig_sp_last_request_time"

.field public static final b:Ljava/lang/String; = "abtest_sp_last_request_data"

.field private static final c:Ljava/lang/String; = "umeng_general_config"

.field private static final d:Ljava/lang/String; = "cconfig_sharedpreference"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "cconfig_sharedpreference"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
