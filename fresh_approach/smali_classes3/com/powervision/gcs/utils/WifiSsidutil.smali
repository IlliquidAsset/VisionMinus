.class public Lcom/powervision/gcs/utils/WifiSsidutil;
.super Ljava/lang/Object;
.source "WifiSsidutil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/WifiSsidutil$WifiSsidCallBack;,
        Lcom/powervision/gcs/utils/WifiSsidutil$WifiStateReceiver2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiSsidutil"

.field private static instance:Lcom/powervision/gcs/utils/WifiSsidutil;


# instance fields
.field private isConnected:Z

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/utils/WifiSsidutil$WifiSsidCallBack;",
            ">;"
        }
    .end annotation
.end field

.field public wifiReceiver:Lcom/powervision/gcs/utils/WifiSsidutil$WifiStateReceiver2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->mCallbackList:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->isConnected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/utils/WifiSsidutil;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->isConnected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/utils/WifiSsidutil;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->isConnected:Z

    return p1
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/WifiSsidutil;
    .locals 1

    .line 39
    sget-object v0, Lcom/powervision/gcs/utils/WifiSsidutil;->instance:Lcom/powervision/gcs/utils/WifiSsidutil;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/powervision/gcs/utils/WifiSsidutil;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/WifiSsidutil;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/WifiSsidutil;->instance:Lcom/powervision/gcs/utils/WifiSsidutil;

    .line 41
    invoke-direct {v0}, Lcom/powervision/gcs/utils/WifiSsidutil;->initReceiver()V

    .line 43
    :cond_0
    sget-object v0, Lcom/powervision/gcs/utils/WifiSsidutil;->instance:Lcom/powervision/gcs/utils/WifiSsidutil;

    return-object v0
.end method

.method private static getSSID()Ljava/lang/String;
    .locals 3

    .line 254
    invoke-static {}, Lcom/powervision/gcs/utils/WifiSsidutil;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 249
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 250
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method private initReceiver()V
    .locals 3

    const-string v0, "WifiSsidutil"

    const-string v1, "-----------------initReceiver: "

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/powervision/gcs/utils/WifiSsidutil$WifiStateReceiver2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/WifiSsidutil$WifiStateReceiver2;-><init>(Lcom/powervision/gcs/utils/WifiSsidutil;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->wifiReceiver:Lcom/powervision/gcs/utils/WifiSsidutil$WifiStateReceiver2;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->wifiReceiver:Lcom/powervision/gcs/utils/WifiSsidutil$WifiStateReceiver2;

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/base/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static isW4BodySSID(Ljava/lang/String;)Z
    .locals 8

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isW4BodySSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "haha"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/powervision/base/config/GlobalConfig;->W4_BODY_SSID_PREFIX:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isW4BodySSID:ids "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p0, "startsWith: "

    .line 301
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static isW4BodyWifiConnect()Z
    .locals 1

    .line 287
    invoke-static {}, Lcom/powervision/gcs/utils/WifiSsidutil;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Lcom/powervision/gcs/utils/WifiSsidutil;->isW4BodySSID(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isW4RemoteSSID(Ljava/lang/String;)Z
    .locals 5

    .line 325
    sget-object v0, Lcom/powervision/base/config/GlobalConfig;->W4_REMOTE_SSID_PREFIX:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 326
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isW4RemoteWifiConnect()Z
    .locals 1

    .line 315
    invoke-static {}, Lcom/powervision/gcs/utils/WifiSsidutil;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Lcom/powervision/gcs/utils/WifiSsidutil;->isW4RemoteSSID(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ssid80()Ljava/lang/String;
    .locals 1

    .line 334
    invoke-static {}, Lcom/powervision/gcs/utils/WifiUtils;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ssid81()Ljava/lang/String;
    .locals 3

    .line 348
    invoke-static {}, Lcom/powervision/gcs/utils/WifiUtils;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "81 ssid1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqBody"

    invoke-static {v2, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ssid90()Ljava/lang/String;
    .locals 1

    .line 354
    invoke-static {}, Lcom/powervision/gcs/utils/WifiUtils;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addRegister(Lcom/powervision/gcs/utils/WifiSsidutil$WifiSsidCallBack;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getWIFISSID()Ljava/lang/String;
    .locals 3

    .line 230
    invoke-static {}, Lcom/powervision/gcs/utils/WifiSsidutil;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public notifyWifiDisconnect()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/utils/WifiSsidutil$WifiSsidCallBack;

    .line 201
    invoke-interface {v1}, Lcom/powervision/gcs/utils/WifiSsidutil$WifiSsidCallBack;->onWifiDisconnect()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyWifiSsid()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/utils/WifiSsidutil$WifiSsidCallBack;

    .line 225
    invoke-interface {v1}, Lcom/powervision/gcs/utils/WifiSsidutil$WifiSsidCallBack;->onSsidCallBack()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeRegister(Lcom/powervision/gcs/utils/WifiSsidutil$WifiSsidCallBack;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unRegister()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->wifiReceiver:Lcom/powervision/gcs/utils/WifiSsidutil$WifiStateReceiver2;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/utils/WifiSsidutil;->wifiReceiver:Lcom/powervision/gcs/utils/WifiSsidutil$WifiStateReceiver2;

    invoke-virtual {v0, v1}, Lcom/powervision/base/base/BaseApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/powervision/gcs/utils/WifiSsidutil;->instance:Lcom/powervision/gcs/utils/WifiSsidutil;

    return-void
.end method
