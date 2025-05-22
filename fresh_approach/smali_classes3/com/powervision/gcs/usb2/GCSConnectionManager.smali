.class public Lcom/powervision/gcs/usb2/GCSConnectionManager;
.super Ljava/lang/Object;
.source "GCSConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;,
        Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;,
        Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;
    }
.end annotation


# static fields
.field public static BODY_CONNECT_STATUS:I = -0x1

.field public static CAMERA_COMMMAND_CONNECT_STATUS:I = -0x1

.field public static CAMERA_STATUS_CONNECT_STATUS:I = -0x1

.field public static DL01_AIR_CONNECT_STATIUS:I = -0x1

.field public static DL01_GROUND_CONNECT_STATUS:I = -0x1

.field public static REMOTE_CONNECT_STATUS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "lzqUsb"

.field private static gcsConnectionManager:Lcom/powervision/gcs/usb2/GCSConnectionManager;


# instance fields
.field connectStuffListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;",
            ">;"
        }
    .end annotation
.end field

.field private connectTypeSelectMechine:Lcom/powervision/gcs/usb2/MsgTask;

.field coun:I

.field private final isW4:Z

.field private mCameraNotifyConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyStatusConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectRemoteListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDl01AirConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDl01GrondConnectListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbStateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

.field private msgListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

.field msh:Lcom/powervision/gcs/usb2/MsgHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgHandle<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public needShowAskForDialog:Z

.field oldConnCallback:Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;

.field private oldConnManager:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

.field private onMsgListener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

.field private sdk_lock:Ljava/lang/Object;

.field private usb2initLock:Ljava/lang/Object;

.field private usbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->sdk_lock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->usb2initLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isW4:Z

    .line 211
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->usbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;

    .line 246
    new-instance v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;-><init>(Lcom/powervision/gcs/usb2/GCSConnectionManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->msh:Lcom/powervision/gcs/usb2/MsgHandle;

    .line 357
    new-instance v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;-><init>(Lcom/powervision/gcs/usb2/GCSConnectionManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mUsbStateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    .line 526
    new-instance v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$3;-><init>(Lcom/powervision/gcs/usb2/GCSConnectionManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->oldConnCallback:Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;

    .line 564
    new-instance v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$4;-><init>(Lcom/powervision/gcs/usb2/GCSConnectionManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->onMsgListener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 810
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->needShowAskForDialog:Z

    .line 828
    iput v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->coun:I

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01AirConnectionListeners:Ljava/util/ArrayList;

    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01GrondConnectListeners:Ljava/util/ArrayList;

    .line 1117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectRemoteListeners:Ljava/util/ArrayList;

    .line 1228
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyConnectionListeners:Ljava/util/ArrayList;

    .line 1329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyStatusConnectionListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/MsgTask;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectTypeSelectMechine:Lcom/powervision/gcs/usb2/MsgTask;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->usb2initLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->sdk_lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->msgListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    return-object p0
.end method

.method public static get()Lcom/powervision/gcs/usb2/GCSConnectionManager;
    .locals 1

    .line 516
    sget-object v0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->gcsConnectionManager:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->gcsConnectionManager:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    .line 520
    :cond_0
    sget-object v0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->gcsConnectionManager:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    return-object v0
.end method


# virtual methods
.method public addCameraNotifyConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;)V
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyStatusConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyStatusConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyStatusConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V
    .locals 2

    const-string v0, "lzqAp03"

    const-string v1, "addConnectListener "

    .line 1232
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addConnectedStuffListeners(Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;)V
    .locals 3

    const-string v0, "lzqCheckError"

    const-string v1, "addConnectedStuffListeners 1"

    .line 597
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqCheckError"

    const-string v2, "addConnectedStuffListeners 2"

    .line 599
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "lzqCheckError"

    const-string v0, "addConnectedStuffListeners 3"

    .line 604
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 603
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addDl01AirConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01AirConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01AirConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01GrondConnectListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01GrondConnectListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addMcuConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectRemoteListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1122
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectRemoteListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectRemoteListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public closePowerSdkOld()V
    .locals 0

    return-void
.end method

.method public goToUsb1()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "gotoUSB1????"

    .line 985
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->msh:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    return-void
.end method

.method public goToUsb2()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "goToUsb2"

    .line 980
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->msh:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    return-void
.end method

.method public goToWifi()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "goToWifi"

    .line 973
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->msh:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    return-void
.end method

.method public initAllManager()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->oldConnManager:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->usbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->onMsgListener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->setListener(Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;)V

    .line 218
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->usbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mUsbStateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->addUsbStateListener(Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;)V

    .line 219
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->usbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->init(Landroid/content/Context;)V

    .line 220
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->oldConnManager:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    .line 221
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->oldConnCallback:Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setListener(Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;)V

    .line 226
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    .line 227
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    .line 228
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    .line 229
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    .line 232
    new-instance v0, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectTypeSelectMechine:Lcom/powervision/gcs/usb2/MsgTask;

    .line 235
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->msh:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 236
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectTypeSelectMechine:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->start()V

    .line 237
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->usbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->onStart()V

    .line 239
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addBootConectionCallBack()V

    .line 240
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->register()V

    return-void
.end method

.method public isAp03Connected()Z
    .locals 1

    .line 996
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isAp03Connected()Z

    move-result v0

    return v0
.end method

.method public isShipConnected()Z
    .locals 1

    .line 992
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isShipConnected()Z

    move-result v0

    return v0
.end method

.method public notifyBodyConnectListeners(II)V
    .locals 3

    .line 1250
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1252
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1253
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 1314
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onW4HeartbeatTimeout()V

    goto :goto_0

    .line 1316
    :cond_0
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onAp03HeartbeatTimeout()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_1

    .line 1304
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onW4HeartbeatRecovery()V

    goto :goto_0

    .line 1306
    :cond_1
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onAp03HeartbeatRecovery()V

    goto :goto_0

    :pswitch_2
    if-ne p2, v2, :cond_2

    .line 1297
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onW4DeviceConnectTimeout()V

    goto :goto_0

    .line 1299
    :cond_2
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onAp03DeviceConnectTimeout()V

    goto :goto_0

    :pswitch_3
    if-ne p2, v2, :cond_3

    .line 1290
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onW4DeviceDisConnect()V

    goto :goto_0

    .line 1292
    :cond_3
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onAp03DeviceDisConnect()V

    goto :goto_0

    :pswitch_4
    if-ne p2, v2, :cond_4

    .line 1281
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onW4DeviceConnectFailed()V

    goto :goto_0

    .line 1283
    :cond_4
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onAp03DeviceConnectFailed()V

    goto :goto_0

    :pswitch_5
    if-ne p2, v2, :cond_5

    .line 1270
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onW4DeviceConnected()V

    goto :goto_0

    .line 1273
    :cond_5
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onAp03DeviceConnected()V

    goto :goto_0

    .line 1265
    :pswitch_6
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onChainConnectTimeout()V

    goto :goto_0

    .line 1262
    :pswitch_7
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onChainDisconnected()V

    goto :goto_0

    .line 1259
    :pswitch_8
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onChainConnectFailed()V

    goto :goto_0

    .line 1256
    :pswitch_9
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;->onChainConnected()V

    goto :goto_0

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyCameraCommandConnect(I)V
    .locals 2

    .line 1351
    sput p1, Lcom/powervision/gcs/usb2/GCSConnectionManager;->CAMERA_COMMMAND_CONNECT_STATUS:I

    .line 1353
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1354
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyConnectionListeners:Ljava/util/ArrayList;

    .line 1355
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1356
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

    .line 1358
    invoke-interface {v1, p1}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;->connection(I)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1356
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyCameraStatusConnect(I)V
    .locals 2

    .line 1363
    sput p1, Lcom/powervision/gcs/usb2/GCSConnectionManager;->CAMERA_STATUS_CONNECT_STATUS:I

    .line 1365
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1366
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyStatusConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1367
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

    .line 1369
    invoke-interface {v1, p1}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;->getStatusConnect(I)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1367
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyDl01AirConnection(I)V
    .locals 3

    const-string v0, "lzqW4_dl01_air"

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDl01AirConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sput p1, Lcom/powervision/gcs/usb2/GCSConnectionManager;->DL01_AIR_CONNECT_STATIUS:I

    .line 1024
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01AirConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1025
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01AirConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1026
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onAirCheckOk()V

    goto :goto_0

    .line 1042
    :cond_1
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onAirCheckError()V

    goto :goto_0

    .line 1036
    :cond_2
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onConnectAirFailed()V

    goto :goto_0

    .line 1039
    :cond_3
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onConnectAirTimeOut()V

    goto :goto_0

    .line 1033
    :cond_4
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onAirDisconnect()V

    goto :goto_0

    .line 1030
    :cond_5
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onConnectAirSuccess()V

    goto :goto_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 1026
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyDl01GroundConnection(I)V
    .locals 3

    .line 1077
    sput p1, Lcom/powervision/gcs/usb2/GCSConnectionManager;->DL01_GROUND_CONNECT_STATUS:I

    .line 1079
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01GrondConnectListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1080
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01GrondConnectListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1081
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onCheckOk()V

    goto :goto_0

    .line 1097
    :cond_1
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onCheckError()V

    goto :goto_0

    .line 1091
    :cond_2
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onConnectLinkFailed()V

    goto :goto_0

    .line 1094
    :cond_3
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onConnectLinkTimeOut()V

    goto :goto_0

    .line 1088
    :cond_4
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onLinkDisconnect()V

    goto :goto_0

    .line 1085
    :cond_5
    invoke-interface {v1}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onConnectLinkSuccess()V

    goto :goto_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 1081
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyMcuConnectState(I)V
    .locals 2

    .line 1137
    sput p1, Lcom/powervision/gcs/usb2/GCSConnectionManager;->REMOTE_CONNECT_STATUS:I

    .line 1139
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectRemoteListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1140
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectRemoteListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1212
    :pswitch_0
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03HeartbeatTimeout()V

    goto :goto_0

    .line 1209
    :pswitch_1
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03HeartbeatRecovery()V

    goto :goto_0

    .line 1202
    :pswitch_2
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03RemoteConnectTimeout()V

    goto :goto_0

    .line 1206
    :pswitch_3
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03RemoteConnectTimeout()V

    goto :goto_0

    .line 1196
    :pswitch_4
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03RemoteConnectFailed()V

    goto :goto_0

    .line 1191
    :pswitch_5
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03RemoteConnected()V

    goto :goto_0

    .line 1186
    :pswitch_6
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4HeartbeatTimeout()V

    goto :goto_0

    .line 1183
    :pswitch_7
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4HeartbeatRecovery()V

    goto :goto_0

    .line 1176
    :pswitch_8
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4RemoteConnectTimeout()V

    goto :goto_0

    .line 1180
    :pswitch_9
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4RemoteConnectTimeout()V

    goto :goto_0

    .line 1170
    :pswitch_a
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4RemoteConnectFailed()V

    goto :goto_0

    .line 1165
    :pswitch_b
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4RemoteConnected()V

    goto :goto_0

    .line 1156
    :pswitch_c
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onRemoteChainConnectTimeout()V

    goto :goto_0

    .line 1160
    :pswitch_d
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onRemoteChainDisconnected()V

    goto :goto_0

    .line 1152
    :pswitch_e
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onRemoteChainConnectFailed()V

    goto :goto_0

    .line 1146
    :pswitch_f
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onRemoteChainConnected()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1141
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notify_askForTethering()V
    .locals 3

    const-string v0, "lzqDia"

    const-string v1, "GcsUsbManager askForTethering"

    .line 678
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 680
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;->askForTethering()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_getTheTethering()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 672
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 673
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;->getTheTethering()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 675
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_modechange()V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 639
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;->connectModeChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_onUsbIn()V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 623
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;->onUsbIn()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_onUsbOut()V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 647
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;->onUsbOut()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "lzqUsbout"

    const-string v2, "manager  notify over"

    .line 650
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_toRestartActivity()V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 631
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_updateConnectUI()V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 664
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;->updateConnectUI()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_updateDisconnectUI()V
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 656
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;->updateDisconnectUI()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfirmUsbTething()V
    .locals 1

    const/4 v0, 0x0

    .line 966
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->needShowAskForDialog:Z

    .line 967
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->goToUsb1()V

    return-void
.end method

.method public onNagetiveOfUsb1()V
    .locals 1

    const/4 v0, 0x0

    .line 960
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->needShowAskForDialog:Z

    .line 961
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->goToWifi()V

    return-void
.end method

.method public openUsb1()V
    .locals 4

    const-string v0, "lzqUsb"

    const-string v1, "=======openUsb1====="

    .line 751
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {}, Lcom/powervision/base/utils/USBUtils;->isTetheringActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 753
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->releaseAll()V

    .line 754
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_modechange()V

    .line 755
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_getTheTethering()V

    .line 760
    invoke-static {}, Lcom/powervision/base/config/GlobalConfig;->switchAndroidUSBConnect()V

    .line 761
    invoke-static {v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setCurrectType(I)V

    .line 762
    invoke-static {}, Lcom/powervision/natives/PV_REMOTE_API;->getInstance()Lcom/powervision/natives/PV_REMOTE_API;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/powervision/natives/PV_REMOTE_API;->setConnectType(I)V

    .line 763
    invoke-static {}, Lcom/powervision/natives/JniSdkEngine;->getCurrentSDKType()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 765
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->initUbb1Sdk()V

    .line 766
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->startSDKConnect(I)V

    .line 767
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->disConnect()V

    goto :goto_0

    :cond_0
    const-string v1, "\u8239\u4f53\u65ad\u8fde"

    .line 776
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    const-string v1, "\u9065\u63a7\u5668\u65ad\u8fde"

    .line 783
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    .line 789
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/powervision/natives/connect/W49342ConnectSdk;->postStatus(II)V

    .line 793
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    const-string v1, "\u5207\u6362\u6210\u4e86usb1\u7684\u7aef\u53e3"

    .line 795
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->disConnect()V

    .line 798
    invoke-static {}, Lcom/powervision/base/config/GlobalConfig;->switchAndroidUSBConnect()V

    goto :goto_0

    :cond_1
    const-string v1, "\u5f39\u7a97\u554a\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f"

    .line 805
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iput-boolean v2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->needShowAskForDialog:Z

    .line 807
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_askForTethering()V

    :goto_0
    return-void
.end method

.method public openWifi()V
    .locals 5

    const-string v0, "lzqUsb"

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============openWifi==========  JniSdkEngine.getCurrentSDKType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/natives/JniSdkEngine;->getCurrentSDKType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {}, Lcom/powervision/natives/JniSdkEngine;->getCurrentSDKType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "lzqUsb"

    const-string v1, "wifi\u7b2c\u4e00\u6b21\u521d\u59cb\u5316"

    .line 834
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_modechange()V

    .line 838
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->releaseAll()V

    .line 839
    invoke-static {}, Lcom/powervision/base/config/GlobalConfig;->switchWIFIConnect()V

    .line 840
    invoke-static {}, Lcom/powervision/natives/PV_REMOTE_API;->getInstance()Lcom/powervision/natives/PV_REMOTE_API;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/natives/PV_REMOTE_API;->setConnectType(I)V

    const-string v0, "lzqUsb"

    const-string v1, "openWifi uninit before1"

    .line 841
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->sdk_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->uninitSdk()V

    .line 846
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->initSdkCallBack()V

    .line 847
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->initWifiSdk()V

    const-string v1, "lzqUsb"

    const-string v2, "openWifi uninit after1"

    .line 848
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->startSDKConnect(I)V

    .line 852
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 855
    :cond_0
    invoke-static {}, Lcom/powervision/natives/JniSdkEngine;->getCurrentSDKType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const-string v0, "lzqUsb"

    const-string v4, "usb2\u5207WIFI"

    .line 856
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_modechange()V

    .line 858
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->releaseAll()V

    .line 859
    invoke-static {}, Lcom/powervision/base/config/GlobalConfig;->switchWIFIConnect()V

    .line 860
    invoke-static {}, Lcom/powervision/natives/PV_REMOTE_API;->getInstance()Lcom/powervision/natives/PV_REMOTE_API;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/natives/PV_REMOTE_API;->setConnectType(I)V

    .line 861
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->sdk_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    :try_start_1
    sget v2, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    if-eq v2, v1, :cond_1

    const-string v1, "lzqUsb"

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninitSdkOfW4 and init wifi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->coun:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "lzqUsb"

    const-string v2, "openWifi uninit before2"

    .line 868
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "lzqUsb"

    const-string v2, "onUsb2Confirm uninit before1"

    .line 869
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    .line 876
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v3}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    .line 877
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    .line 879
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Lcom/powervision/natives/connect/W49342ConnectSdk;->postStatus(II)V

    .line 881
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    .line 882
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/CameraConnectSDK;->postCommandTask(II)V

    .line 883
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/CameraConnectSDK;->postStatusTask(II)V

    .line 884
    invoke-static {}, Lcom/powervision/natives/connect/ConnectActivationSDK;->getInstance()Lcom/powervision/natives/connect/ConnectActivationSDK;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/ConnectActivationSDK;->postCommandTask(II)V

    .line 885
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/AudioConnectSDK;->postTask(II)V

    .line 886
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->disConnect()V

    .line 887
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_updateDisconnectUI()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v1, 0x258

    .line 889
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 891
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 894
    :goto_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->uninitSdk()V

    const-string v1, "lzqUsb"

    const-string v2, "openWifi uninit after2"

    .line 895
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->initWifiSdk()V

    const-string v1, "lzqUsb"

    const-string v2, "openWifi init over2"

    .line 898
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->startSDKConnect(I)V

    .line 904
    monitor-exit v0

    goto/16 :goto_1

    .line 863
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "\u6253\u5f00wifi\u4e4b\u524dusb2 \u8fde\u63a5\u72b6\u6001\u4e0d\u5bf9"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 904
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 905
    :cond_2
    invoke-static {}, Lcom/powervision/natives/JniSdkEngine;->getCurrentSDKType()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 908
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUsbMounted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 909
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_modechange()V

    .line 910
    :cond_3
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->releaseAll()V

    .line 911
    invoke-static {}, Lcom/powervision/base/config/GlobalConfig;->switchWIFIConnect()V

    .line 914
    invoke-static {}, Lcom/powervision/natives/PV_REMOTE_API;->getInstance()Lcom/powervision/natives/PV_REMOTE_API;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/natives/PV_REMOTE_API;->setConnectType(I)V

    const-string v0, "lzqUsb"

    const-string v1, " usb1  \u5207\u6210 wifi "

    .line 915
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->sdk_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->uninitSdk()V

    .line 920
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->initSdkCallBack()V

    .line 921
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->initWifiSdk()V

    const-string v1, "lzqUsb"

    const-string v2, " init\u6210\u529f "

    .line 922
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->startSDKConnect(I)V

    .line 926
    monitor-exit v0

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :cond_4
    const-string v0, "lzqUsb"

    const-string v1, "wifi \u5207 wifi"

    .line 930
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_modechange()V

    .line 933
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->releaseAll()V

    .line 934
    invoke-static {}, Lcom/powervision/base/config/GlobalConfig;->switchWIFIConnect()V

    .line 935
    invoke-static {}, Lcom/powervision/natives/PV_REMOTE_API;->getInstance()Lcom/powervision/natives/PV_REMOTE_API;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/natives/PV_REMOTE_API;->setConnectType(I)V

    const-string v0, "lzqUsb"

    const-string v1, "openWifi uninit before1"

    .line 936
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->sdk_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->uninitSdk()V

    .line 941
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->initSdkCallBack()V

    .line 942
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->initWifiSdk()V

    const-string v1, "lzqUsb"

    const-string v2, "openWifi uninit after1"

    .line 943
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->startSDKConnect(I)V

    .line 947
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    const-string v0, "lzqUsb"

    const-string v1, "openWifi!!!"

    .line 949
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 950
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setCurrectType(I)V

    return-void

    :catchall_3
    move-exception v1

    .line 947
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method public removeCameraNotifyConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;)V
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mCameraNotifyConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeConnectedStuffListener(Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;)V
    .locals 3

    const-string v0, "lzqCheckError"

    const-string v1, "removeConnectedStuffListener 1"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqCheckError"

    const-string v2, "removeConnectedStuffListener 2"

    .line 610
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->connectStuffListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 614
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "lzqCheckError"

    const-string v0, "removeConnectedStuffListener 3"

    .line 615
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 614
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeDl01AirConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01AirConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1013
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01AirConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01AirConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1016
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01GrondConnectListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1069
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01GrondConnectListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mDl01GrondConnectListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1072
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeMcuConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V
    .locals 2

    .line 1129
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectRemoteListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectRemoteListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->mConnectRemoteListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1133
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMsgListener(Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->msgListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    return-void
.end method

.method public switchUsb1ToUsb2()V
    .locals 0

    .line 715
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->closePowerSdkOld()V

    return-void
.end method

.method public switchUsb1ToWifi()V
    .locals 0

    return-void
.end method

.method public switchUsb2ToUsb1()V
    .locals 0

    return-void
.end method

.method public switchWifiToUsb2()V
    .locals 0

    return-void
.end method

.method public swtichUsb2ToWifi()V
    .locals 0

    return-void
.end method

.method public swtichWifiToUsb1()V
    .locals 0

    return-void
.end method

.method public tryopenUsb2()V
    .locals 3

    const-string v0, "lzqUsb"

    const-string v1, "tryopenUsb2 11111111"

    .line 816
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->usb2initLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqUsb"

    const-string v2, "tryopenUsb2 tryConnected"

    .line 818
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->tryConnected()V

    .line 820
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
