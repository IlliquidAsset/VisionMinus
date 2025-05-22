.class Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;
.super Landroid/content/BroadcastReceiver;
.source "WifiSsidutil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/WifiSsidutil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiStateReceiver2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/WifiSsidutil;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/WifiSsidutil;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "WifiSsidutil"

    const-string v0, "onReceive: "

    .line 137
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 139
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string p1, "networkInfo"

    .line 140
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 142
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-static {p1}, Lcom/powervision/base/utils/WifiSsidutil;->access$000(Lcom/powervision/base/utils/WifiSsidutil;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-static {p1, v2}, Lcom/powervision/base/utils/WifiSsidutil;->access$002(Lcom/powervision/base/utils/WifiSsidutil;Z)Z

    .line 145
    iget-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/WifiSsidutil;->notifyWifiSsid()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-static {p1}, Lcom/powervision/base/utils/WifiSsidutil;->access$000(Lcom/powervision/base/utils/WifiSsidutil;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 150
    iget-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-static {p1, v1}, Lcom/powervision/base/utils/WifiSsidutil;->access$002(Lcom/powervision/base/utils/WifiSsidutil;Z)Z

    .line 151
    iget-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/WifiSsidutil;->notifyWifiDisconnect()V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "wifi_state"

    .line 175
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:wifistate "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v2, :cond_3

    .line 179
    iget-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-static {p1}, Lcom/powervision/base/utils/WifiSsidutil;->access$000(Lcom/powervision/base/utils/WifiSsidutil;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/WifiSsidutil;->notifyWifiDisconnect()V

    .line 182
    iget-object p1, p0, Lcom/powervision/base/utils/WifiSsidutil$WifiStateReceiver2;->this$0:Lcom/powervision/base/utils/WifiSsidutil;

    invoke-static {p1, v1}, Lcom/powervision/base/utils/WifiSsidutil;->access$002(Lcom/powervision/base/utils/WifiSsidutil;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
