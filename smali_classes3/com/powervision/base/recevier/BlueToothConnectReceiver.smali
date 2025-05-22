.class public Lcom/powervision/base/recevier/BlueToothConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BlueToothConnectReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private onBleConnectListener:Lcom/powervision/base/listener/OnBleConnectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/powervision/base/recevier/BlueToothConnectReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/recevier/BlueToothConnectReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_5

    .line 24
    sget-object v0, Lcom/powervision/base/recevier/BlueToothConnectReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==========BlueToothConnectReceiver onReceive action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x11f77b4b

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x6c9330ef

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/powervision/base/recevier/BlueToothConnectReceiver;->onBleConnectListener:Lcom/powervision/base/listener/OnBleConnectListener;

    if-eqz p1, :cond_5

    .line 33
    invoke-interface {p1, p2}, Lcom/powervision/base/listener/OnBleConnectListener;->onDisConnect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/powervision/base/recevier/BlueToothConnectReceiver;->onBleConnectListener:Lcom/powervision/base/listener/OnBleConnectListener;

    if-eqz p1, :cond_5

    .line 28
    invoke-interface {p1, p2}, Lcom/powervision/base/listener/OnBleConnectListener;->onConnect(Landroid/bluetooth/BluetoothDevice;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setOnBleConnectListener(Lcom/powervision/base/listener/OnBleConnectListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/base/recevier/BlueToothConnectReceiver;->onBleConnectListener:Lcom/powervision/base/listener/OnBleConnectListener;

    return-void
.end method
