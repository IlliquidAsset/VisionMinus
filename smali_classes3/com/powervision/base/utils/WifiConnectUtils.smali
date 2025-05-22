.class public Lcom/powervision/base/utils/WifiConnectUtils;
.super Ljava/lang/Object;
.source "WifiConnectUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectUtils"

.field public static final WIFI_CIPHER_NPW:I = 0x0

.field public static final WIFI_CIPHER_WEP:I = 0x1

.field public static final WIFI_CIPHER_WPA:I = 0x2


# instance fields
.field private context:Landroid/content/Context;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private wifiConfigurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private wifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/powervision/base/utils/WifiConnectUtils;->context:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public acquireWifiLock()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method public addNetWork(Ljava/lang/String;)V
    .locals 2

    .line 125
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 127
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :cond_0
    return-void
.end method

.method public addNetWork(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 138
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->removeWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/base/utils/WifiConnectUtils;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/base/utils/WifiConnectUtils;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 147
    :goto_0
    iget-object p2, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    return-void
.end method

.method public addNetWorkQ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 152
    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;-><init>()V

    new-instance v1, Landroid/os/PatternMatcher;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSsidPattern(Landroid/os/PatternMatcher;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->build()Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p1

    .line 158
    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 160
    invoke-virtual {p2, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    .line 164
    invoke-virtual {p2, p1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/powervision/base/utils/WifiConnectUtils;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 168
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 170
    new-instance v0, Lcom/powervision/base/utils/WifiConnectUtils$1;

    invoke-direct {v0, p0, p2}, Lcom/powervision/base/utils/WifiConnectUtils$1;-><init>(Lcom/powervision/base/utils/WifiConnectUtils;Landroid/net/ConnectivityManager;)V

    .line 186
    invoke-virtual {p2, p1, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public closeWifi()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 232
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 233
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 234
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 235
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 236
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 237
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 240
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 243
    iget-object p1, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_0
    const/4 p1, 0x0

    if-nez p3, :cond_1

    .line 249
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p3, v4, :cond_2

    .line 254
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 255
    iget-object p3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p1

    .line 256
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 257
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->set(I)V

    .line 258
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 259
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 260
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 261
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 262
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    :cond_2
    if-ne p3, v3, :cond_3

    .line 266
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 267
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 268
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 269
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 270
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 271
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 273
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 274
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 275
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    :cond_3
    :goto_0
    return-object v0
.end method

.method public createWifiLock()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "test_Lock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-void
.end method

.method public disconnectWifi(I)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 221
    iget-object p1, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    return-void
.end method

.method public disconnectWifi(Ljava/lang/String;)V
    .locals 1

    .line 225
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->disconnectWifi(I)V

    :cond_0
    return-void
.end method

.method public getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->wifiConfigurationList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 199
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWifiConfigurationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->wifiConfigurationList:Ljava/util/List;

    return-object v0
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->wifiList:Ljava/util/List;

    return-object v0
.end method

.method public isWifiOpened()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public openWifi()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 48
    invoke-virtual {p0}, Lcom/powervision/base/utils/WifiConnectUtils;->scanWifi()V

    :cond_0
    return-void
.end method

.method public releaseWifilock()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_0
    return-void
.end method

.method public removeWifi(I)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result p1

    return p1
.end method

.method public removeWifi(Ljava/lang/String;)Z
    .locals 1

    .line 212
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->getExitsWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/WifiConnectUtils;->removeWifi(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public scanWifi()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 78
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->wifiList:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils;->wifiConfigurationList:Ljava/util/List;

    return-void
.end method
