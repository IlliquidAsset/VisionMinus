.class public Lcom/powervision/handheld/utils/BluetoothUtil;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;
    }
.end annotation


# static fields
.field private static final SCO_CONNECT_TIME:I = 0x5

.field private static mBluetoothUtil:Lcom/powervision/handheld/utils/BluetoothUtil;

.field static mContext:Landroid/content/Context;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothConnectListener:Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;

.field private mConnectIndex:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BluetoothUtil"

    .line 15
    iput-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mConnectIndex:I

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mAudioManager:Landroid/media/AudioManager;

    .line 25
    iput-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mBluetoothConnectListener:Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/powervision/handheld/utils/BluetoothUtil;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/utils/BluetoothUtil;)Landroid/media/AudioManager;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/handheld/utils/BluetoothUtil;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mConnectIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/handheld/utils/BluetoothUtil;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mConnectIndex:I

    return p1
.end method

.method static synthetic access$108(Lcom/powervision/handheld/utils/BluetoothUtil;)I
    .locals 2

    .line 13
    iget v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mConnectIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mConnectIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/powervision/handheld/utils/BluetoothUtil;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/handheld/utils/BluetoothUtil;)Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mBluetoothConnectListener:Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/powervision/handheld/utils/BluetoothUtil;
    .locals 0

    .line 34
    sput-object p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mContext:Landroid/content/Context;

    .line 35
    sget-object p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mBluetoothUtil:Lcom/powervision/handheld/utils/BluetoothUtil;

    if-nez p0, :cond_0

    .line 36
    new-instance p0, Lcom/powervision/handheld/utils/BluetoothUtil;

    invoke-direct {p0}, Lcom/powervision/handheld/utils/BluetoothUtil;-><init>()V

    sput-object p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mBluetoothUtil:Lcom/powervision/handheld/utils/BluetoothUtil;

    .line 38
    :cond_0
    sget-object p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mBluetoothUtil:Lcom/powervision/handheld/utils/BluetoothUtil;

    return-object p0
.end method


# virtual methods
.method public closeSco()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetoothScoOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 104
    iget-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_0
    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mBluetoothConnectListener:Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;

    return-void
.end method

.method public openSco(Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;)V
    .locals 1

    .line 42
    iput-object p1, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mBluetoothConnectListener:Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;

    .line 43
    iget-object p1, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result p1

    if-nez p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->TAG:Ljava/lang/String;

    const-string v0, "\u7cfb\u7edf\u4e0d\u652f\u6301\u84dd\u7259\u5f55\u97f3"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/powervision/handheld/utils/BluetoothUtil;->mBluetoothConnectListener:Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;

    if-eqz p1, :cond_0

    const-string v0, "Your device no support bluetooth record!"

    .line 46
    invoke-interface {p1, v0}, Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/powervision/handheld/utils/BluetoothUtil$1;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/utils/BluetoothUtil$1;-><init>(Lcom/powervision/handheld/utils/BluetoothUtil;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
