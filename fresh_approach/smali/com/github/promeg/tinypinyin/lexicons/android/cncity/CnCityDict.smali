.class public final Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;
.super Lcom/github/promeg/tinypinyin/android/asset/lexicons/AndroidAssetDict;
.source "CnCityDict.java"


# static fields
.field static volatile singleton:Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/github/promeg/tinypinyin/android/asset/lexicons/AndroidAssetDict;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;
    .locals 2

    if-eqz p0, :cond_2

    .line 27
    sget-object v0, Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;->singleton:Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;->singleton:Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;

    invoke-direct {v1, p0}, Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;->singleton:Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;->singleton:Lcom/github/promeg/tinypinyin/lexicons/android/cncity/CnCityDict;

    return-object p0

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected assetFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "cncity.txt"

    return-object v0
.end method
