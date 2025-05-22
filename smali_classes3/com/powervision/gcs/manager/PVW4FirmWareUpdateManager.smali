.class public Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Remote_FirmWare;,
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Body_FirmWare;,
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;,
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Msg;,
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;,
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;,
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;,
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;,
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;,
        Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;
    }
.end annotation


# static fields
.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final SCREEN_ORIENTATION_VERTICAL:I = 0x0

.field public static final TYPE_ALARM_ERROR:I = 0x68

.field public static final TYPE_BATTARY_ERROR:I = 0x67

.field public static final TYPE_CONNECT_ERROR:I = 0x1

.field public static final TYPE_CONNECT_NOTYET:I = 0xf

.field public static final TYPE_DL01_UPGRADE_ERROR:I = 0x6

.field public static final TYPE_DOWNLOAD_ERROR:I = 0x66

.field public static final TYPE_INSTALL_ERROR:I = 0x9

.field public static final TYPE_MCU_UPGRADE_ERROR:I = 0x4

.field public static final TYPE_NEED_TETHER_ON_ERROR:I = 0xd

.field public static final TYPE_NO_SD_CARD:I = 0x191

.field public static final TYPE_RECODE_ERROR:I = 0x69

.field public static final TYPE_RENDER_NEED_TETHER_ON_ERROR:I = 0xe

.field public static final TYPE_UPGRADE_ERROR:I = 0x3

.field public static final TYPE_UPLOAD_ERROR:I = 0x8

.field public static final TYPE_USB_CHANGE_ERROR:I = 0x7

.field public static final TYPE_VALIDATE_ERROR:I = 0x2

.field public static final TYPE_WIFI_AND_TETHER_ON_ERROR:I = 0xb

.field public static final TYPE_WIFI_AND_USB_INSERT_ERROR:I = 0xa

.field public static final TYPE_WIFI_UPGRADE_ERROR:I = 0x5

.field public static dophine_current_time:J = 0x0L

.field static firmWareUpdateManager:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager; = null

.field public static volatile lastBootloaderStatus:I = 0x2


# instance fields
.field BodyCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ISDEVICEMONTED:Z

.field RemoteCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ViewLock:Ljava/lang/Object;

.field public bodyListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;

.field private bodyReleaseNote:Ljava/lang/String;

.field private bodyThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

.field connectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

.field dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

.field groundConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mculistener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

.field msg:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Msg;

.field onBootloaderListener:Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;

.field pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field private rePotLock:Ljava/lang/Object;

.field public redPointNotifies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;",
            ">;"
        }
    .end annotation
.end field

.field remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

.field public remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;

.field private remoteReleaseNote:Ljava/lang/String;

.field private remoteThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

.field showRedPoint:Z

.field simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field w49342LinkCallBack:Lcom/powervision/natives/callback/W49342LinkCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->bodyThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    .line 124
    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    const-string v0, ""

    .line 126
    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->bodyReleaseNote:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteReleaseNote:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->rePotLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ISDEVICEMONTED:Z

    .line 135
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->BodyCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->RemoteCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    iput-boolean v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedPoint:Z

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$1;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->onBootloaderListener:Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;

    .line 223
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    .line 352
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->groundConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    .line 403
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$4;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mculistener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->redPointNotifies:Ljava/util/ArrayList;

    .line 714
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$5;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->w49342LinkCallBack:Lcom/powervision/natives/callback/W49342LinkCallBack;

    .line 783
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$6;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$6;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    .line 874
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$8;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$8;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    .line 902
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$9;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$9;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 1058
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->bodyListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;

    .line 1180
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;

    .line 2245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    .line 189
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->addRemoteControlParamListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;)V

    .line 194
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->groundConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 198
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    .line 200
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mculistener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addMcuConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V

    .line 202
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V

    .line 204
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->w49342LinkCallBack:Lcom/powervision/natives/callback/W49342LinkCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->addLinkCallBack(Lcom/powervision/natives/callback/W49342LinkCallBack;)V

    .line 206
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->onBootloaderListener:Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setOnBootloaderListener(Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Z)Z
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ISDEVICEMONTED:Z

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getCameraInfo()V

    return-void
.end method

.method static synthetic access$1000(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkBodyOver()V

    return-void
.end method

.method static synthetic access$1200(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteReleaseNote:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteReleaseNote:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getDolphinBodyVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/Object;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->bodyThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    return-object p0
.end method

.method static synthetic access$602(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->bodyThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getOnLineBodyVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->compareLocalWithRemote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Ljava/lang/String;Z)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getOnLineRemoteVersion(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkBodyOver()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->BodyCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private checkRemoteOver()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->RemoteCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private compareLocalWithRemote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11

    const-string v0, "lzqRu"

    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    new-instance v0, Ljava/io/File;

    invoke-static {p4}, Lcom/powervision/base/utils/W4FirmWareFileUtils;->getRemoteDownloadPath(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "lzqRu"

    .line 1947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dirPath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1950
    array-length v1, v1

    if-lez v1, :cond_0

    .line 1951
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->findRemoteUpdateFile([Ljava/io/File;)V

    :cond_0
    const/4 v0, 0x0

    .line 1954
    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1955
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1957
    :cond_1
    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string v1, "lzqRu"

    .line 1958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State.REMOTEBASEPATH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 1959
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v0, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1963
    :try_start_0
    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getRemoteFirmWareForTxt(Ljava/lang/String;)Lcom/powervision/gcs/manager/FirmWare;

    move-result-object v4

    if-nez v4, :cond_2

    return v1

    .line 1967
    :cond_2
    invoke-virtual {v4}, Lcom/powervision/gcs/manager/FirmWare;->getDL01()Ljava/util/List;

    move-result-object v5

    .line 1968
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v6}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getFILE()Ljava/lang/String;

    move-result-object v6

    .line 1969
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1971
    sget-object v8, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    :try_start_1
    sget-object v9, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1973
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 1975
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1976
    invoke-static {v7}, Lcom/powervision/base/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 1977
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v9}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getMD5()Ljava/lang/String;

    move-result-object v9

    .line 1981
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1983
    new-instance v9, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {v9}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    const-string v10, "DL01"

    .line 1984
    iput-object v10, v9, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 1985
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v10}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    .line 1986
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 1987
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    .line 1988
    iget-object v7, v9, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    sput-object v7, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01_FILE_NAME:Ljava/lang/String;

    .line 1989
    sget-object v7, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "lzqUpdate"

    .line 1991
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remote dl01version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "   catlog dlversion "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v10}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v5}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x4

    .line 1996
    invoke-virtual {p0, p3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedNotify(I)V

    .line 1997
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1998
    :try_start_3
    iget-object v5, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    .line 1999
    :goto_0
    iget-object v7, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 2000
    iget-object v7, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v7}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showDl01Update()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2003
    :cond_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2007
    :try_start_4
    sput-boolean v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showDl01Update:Z

    .line 2008
    sput-object v8, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remoteDl01Md5:Ljava/lang/String;

    .line 2009
    sput-object v6, Lcom/powervision/base/constant/Constant$Firmware$Ship;->SHIP_DL01_REMOTE_FIRMWARE:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2003
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    .line 2011
    :cond_4
    sput-boolean v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showDl01Update:Z

    const-string p3, ""

    .line 2012
    sput-object p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remoteDl01Md5:Ljava/lang/String;

    goto :goto_2

    .line 2018
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2019
    :try_start_7
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    const/4 p2, 0x0

    .line 2020
    :goto_1
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    .line 2021
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {p3, v2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showErrorDialog(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2024
    :cond_6
    monitor-exit p1

    return v1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p2

    .line 2030
    :cond_7
    :goto_2
    invoke-virtual {v4}, Lcom/powervision/gcs/manager/FirmWare;->getMCU()Ljava/util/List;

    move-result-object p3

    .line 2031
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v5}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getFILE()Ljava/lang/String;

    move-result-object v5

    .line 2032
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2033
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2034
    invoke-static {v6}, Lcom/powervision/base/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 2035
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v8}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getMD5()Ljava/lang/String;

    move-result-object v8

    .line 2040
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2041
    new-instance v7, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {v7}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    const-string v8, "MCU"

    .line 2042
    iput-object v8, v7, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 2043
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v8}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    .line 2044
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 2045
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    .line 2046
    sget-object v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "lzwMcu"

    .line 2048
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remote mcu.get(0).getVERSION()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v8}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lzwMcu"

    .line 2049
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mcuVersion"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lzwMcu"

    .line 2050
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastBootloaderStatus"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->lastBootloaderStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lzwMcu"

    .line 2051
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dev_mcuVersion"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {p3}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "lzwMcu"

    const-string p3, "remote mcu \u663e\u793a\u66f4\u65b0"

    .line 2055
    invoke-static {p1, p3}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 2058
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedNotify(I)V

    .line 2059
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2060
    :try_start_9
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_8

    const/4 p3, 0x0

    .line 2061
    :goto_3
    iget-object v6, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p3, v6, :cond_8

    .line 2062
    iget-object v6, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v6}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showMcuUpdate()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 2065
    :cond_8
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2067
    :try_start_a
    sput-boolean v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showMcuUpdate:Z

    .line 2069
    sput-object v5, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCU_FILE_NAME:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_5

    :catchall_2
    move-exception p2

    .line 2065
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p2

    .line 2073
    :cond_9
    sput-boolean v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showMcuUpdate:Z

    goto :goto_5

    .line 2076
    :cond_a
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 2077
    :try_start_d
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_b

    const/4 p2, 0x0

    .line 2078
    :goto_4
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_b

    .line 2079
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {p3, v2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showErrorDialog(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 2082
    :cond_b
    monitor-exit p1

    return v1

    :catchall_3
    move-exception p2

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p2

    :cond_c
    :goto_5
    if-eqz p4, :cond_16

    .line 2091
    invoke-virtual {v4}, Lcom/powervision/gcs/manager/FirmWare;->getWIFI_1()Ljava/util/List;

    move-result-object p1

    .line 2092
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {p3}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getFILE()Ljava/lang/String;

    move-result-object p3

    .line 2093
    new-instance p4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2095
    invoke-static {p4}, Lcom/powervision/base/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lzq9342"

    .line 2096
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifi1File:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lzq9342"

    .line 2097
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifi1File:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v6}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getMD5()Ljava/lang/String;

    move-result-object v6

    .line 2101
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2102
    new-instance v5, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {v5}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    const-string v6, "WIFI_1"

    .line 2103
    iput-object v6, v5, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 2104
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v6}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    .line 2105
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 2106
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v5, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    .line 2107
    sget-object p4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p4, "lzqRu"

    .line 2108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifi_1.get(0).getVERSION():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v6}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p4, v5}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "lzqRu"

    .line 2109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifiVersion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p4, v5}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {p4}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p2}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_e

    const/4 p4, 0x6

    .line 2115
    invoke-virtual {p0, p4}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedNotify(I)V

    .line 2116
    iget-object p4, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p4
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 2117
    :try_start_f
    iget-object v5, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    const/4 v5, 0x0

    .line 2118
    :goto_6
    iget-object v6, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 2119
    iget-object v6, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v6}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showWifiUpdate()V

    const-string v6, "lzqRu"

    const-string v7, "showWifiUpdate:"

    .line 2120
    invoke-static {v6, v7}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2123
    :cond_d
    monitor-exit p4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 2125
    :try_start_10
    sput-boolean v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showWifiUpdate:Z

    .line 2126
    sput-object p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->SHIP_WIFI_REMOTE_FIRMWARE_1:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_8

    :catchall_4
    move-exception p1

    .line 2123
    :try_start_11
    monitor-exit p4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw p1

    .line 2129
    :cond_e
    sput-boolean v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showWifiUpdate:Z

    goto :goto_8

    .line 2133
    :cond_f
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    .line 2134
    :try_start_13
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_10

    const/4 p2, 0x0

    .line 2135
    :goto_7
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_10

    .line 2136
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {p3, v2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showErrorDialog(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 2139
    :cond_10
    monitor-exit p1

    return v1

    :catchall_5
    move-exception p2

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw p2

    .line 2147
    :cond_11
    :goto_8
    invoke-virtual {v4}, Lcom/powervision/gcs/manager/FirmWare;->getWIFI_2()Ljava/util/List;

    move-result-object p3

    .line 2148
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {p4}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getFILE()Ljava/lang/String;

    move-result-object p4

    .line 2149
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2151
    invoke-static {v4}, Lcom/powervision/base/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 2152
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v6}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getMD5()Ljava/lang/String;

    move-result-object v6

    .line 2154
    new-instance v7, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {v7}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    const-string v8, "WIFI_2"

    .line 2155
    iput-object v8, v7, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 2156
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    .line 2157
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 2158
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    .line 2159
    sget-object p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2160
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2161
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x7

    .line 2164
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedNotify(I)V

    .line 2165
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    .line 2166
    :try_start_15
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12

    const/4 p2, 0x0

    .line 2167
    :goto_9
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_12

    .line 2168
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {p3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showWifiUpdate()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 2171
    :cond_12
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 2173
    :try_start_16
    sput-boolean v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showWifiUpdate:Z

    .line 2175
    sput-object p4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->SHIP_WIFI_REMOTE_FIRMWARE_2:Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_b

    :catchall_6
    move-exception p2

    .line 2171
    :try_start_17
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    throw p2

    .line 2178
    :cond_13
    sput-boolean v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showWifiUpdate:Z

    goto :goto_b

    .line 2181
    :cond_14
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    .line 2182
    :try_start_19
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_15

    const/4 p2, 0x0

    .line 2183
    :goto_a
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_15

    .line 2184
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {p3, v2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showErrorDialog(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 2187
    :cond_15
    monitor-exit p1

    return v1

    :catchall_7
    move-exception p2

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    throw p2
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    :cond_16
    :goto_b
    return v3

    :catchall_8
    move-exception p1

    .line 1973
    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    :try_start_1c
    throw p1
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0

    .line 2207
    :catch_0
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2208
    :try_start_1d
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_17

    .line 2209
    :goto_c
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v3, p2, :cond_17

    .line 2210
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {p2, v2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showErrorDialog(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2213
    :cond_17
    monitor-exit p1

    return v1

    :catchall_9
    move-exception p2

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    throw p2

    :catch_1
    move-exception p1

    .line 2196
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2197
    :try_start_1e
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_18

    .line 2198
    :goto_d
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v3, p3, :cond_18

    .line 2199
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {p3, v2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showErrorDialog(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2202
    :cond_18
    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 2203
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v1

    :catchall_a
    move-exception p1

    .line 2202
    :try_start_1f
    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    throw p1

    :cond_19
    return v1
.end method

.method private compareLocalWithServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x1

    .line 1728
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getRemoteFirmWareForTxt(Ljava/lang/String;)Lcom/powervision/gcs/manager/FirmWare;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1731
    invoke-virtual {v1}, Lcom/powervision/gcs/manager/FirmWare;->getDL01()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 1732
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v2}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object v2

    .line 1733
    invoke-virtual {v1}, Lcom/powervision/gcs/manager/FirmWare;->getMCU()Ljava/util/List;

    move-result-object v4

    .line 1734
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {v4}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_0

    .line 1737
    invoke-virtual {v1}, Lcom/powervision/gcs/manager/FirmWare;->getWIFI_1()Ljava/util/List;

    move-result-object p4

    .line 1738
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {p4}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    .line 1739
    invoke-virtual {v1}, Lcom/powervision/gcs/manager/FirmWare;->getWIFI_2()Ljava/util/List;

    move-result-object p4

    .line 1740
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/powervision/gcs/manager/FirmWare$FirmBean;

    invoke-virtual {p4}, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->getVERSION()Ljava/lang/String;

    move-result-object p4

    .line 1742
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 1746
    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :catch_0
    :cond_2
    :goto_1
    return v0
.end method

.method private findItemNewestVersion(Ljava/io/File;)Lcom/powervision/gcs/manager/W4Firmware;
    .locals 7

    .line 1423
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1425
    array-length v1, v0

    if-lez v1, :cond_1

    .line 1427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1429
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 1430
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    .line 1431
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1432
    array-length v5, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 1435
    :cond_0
    new-instance v5, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {v5}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    .line 1436
    aget-object v4, v4, v2

    iput-object v4, v5, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    .line 1438
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 1439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " file abs:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "lzqW4Firm"

    invoke-static {v6, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_3

    .line 1444
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1445
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1446
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/W4Firmware;

    return-object p1

    .line 1449
    :cond_3
    new-instance v0, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {v0}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    .line 1450
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "config"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "0.0.0"

    .line 1453
    iput-object p1, v0, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "00000"

    .line 1451
    iput-object p1, v0, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    :goto_3
    return-object v0
.end method

.method private getCameraInfo()V
    .locals 3

    .line 921
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 925
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6 \u76f8\u673a\u7248\u672c\u53f7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_Firm_body"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 927
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    if-nez v0, :cond_1

    .line 928
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    .line 931
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    .line 932
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->CAMERAVERSION:Ljava/lang/String;

    .line 933
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getBodyVersion()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    .line 934
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    goto :goto_0

    .line 940
    :cond_2
    invoke-static {}, Lcom/powervision/gcs/manager/ShipCameraGetParamsHttputils;->getInstance()Lcom/powervision/gcs/manager/ShipCameraGetParamsHttputils;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/manager/ShipCameraGetParamsHttputils;->SHIP_CAMERA_SETTING_DEVICE_INFO_URL:Ljava/lang/String;

    new-instance v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$10;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$10;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/manager/ShipCameraGetParamsHttputils;->postRequest(Ljava/lang/String;Lcom/powervision/gcs/manager/ShipCameraGetParamsHttputils$CameraGetParamsListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getDolphinBodyVersion()V
    .locals 5

    .line 836
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 838
    :goto_0
    iget-object v3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 839
    iget-object v3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideBodyDownLoad()V

    .line 840
    iget-object v3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideBodyUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$7;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$7;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->addParameterResultListener(Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;)V

    .line 862
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 863
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->FCVERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 864
    :goto_1
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 865
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    const-string v3, ""

    invoke-interface {v1, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getMainBodyVersionSucceed(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 867
    :cond_1
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object v0

    new-instance v1, Lcom/powervision/natives/connect/ParamMsg;

    const-string v3, "PV_V_VER"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 843
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
    .locals 2

    const-class v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    monitor-enter v0

    .line 507
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->firmWareUpdateManager:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    if-nez v1, :cond_0

    .line 508
    new-instance v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;-><init>()V

    sput-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->firmWareUpdateManager:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    .line 511
    :cond_0
    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->firmWareUpdateManager:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getOnLineBodyVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1574
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->BodyCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->BodyShowVersion:Ljava/lang/String;

    const-string p2, "lzqW4Firm"

    .line 1576
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getMainBodyVersionSucceed:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->BodyShowVersion:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1578
    :try_start_0
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 1579
    :goto_0
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_0

    .line 1580
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    sget-object p4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->BodyShowVersion:Ljava/lang/String;

    invoke-interface {p3, p4}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getMainBodyVersionSucceed(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1583
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    invoke-static {}, Lcom/powervision/base/net/RetrofitHelper;->getRetrofitHelper()Lcom/powervision/base/net/RetrofitHelper;

    move-result-object p2

    const-class p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Body_FirmWare;

    invoke-virtual {p2, p3}, Lcom/powervision/base/net/RetrofitHelper;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Body_FirmWare;

    invoke-interface {p2, p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Body_FirmWare;->body_query(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1587
    invoke-static {p1}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1583
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getOnLineRemoteVersion(Ljava/lang/String;Z)V
    .locals 3

    .line 1765
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->RemoteCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p2, :cond_0

    const-string v0, "remote_7b"

    goto :goto_0

    :cond_0
    const-string v0, "remote_7"

    .line 1770
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqRu"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    invoke-static {}, Lcom/powervision/base/net/RetrofitHelper;->getRetrofitHelper()Lcom/powervision/base/net/RetrofitHelper;

    move-result-object v1

    const-class v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Remote_FirmWare;

    invoke-virtual {v1, v2}, Lcom/powervision/base/net/RetrofitHelper;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Remote_FirmWare;

    const-string v2, "PVW4RC"

    invoke-interface {v1, v2, v0, v0, p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Remote_FirmWare;->remote_query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1776
    invoke-static {p1}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private startCheckingBody()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->BodyCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private startCheckingRemote()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->RemoteCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addRedPointNotify(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 669
    monitor-exit p0

    return-void

    .line 671
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->redPointNotifies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->redPointNotifies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addmView(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;)V
    .locals 2

    .line 2248
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2249
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2250
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
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

.method public checkBodyForDetail()V
    .locals 2

    const-string v0, "lzqW4_Firm_body"

    const-string v1, "checkBodyForDetail"

    .line 964
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->bodyThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    if-nez v0, :cond_0

    .line 967
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->bodyThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    .line 968
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->bodyListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->setListenr(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;)V

    .line 969
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->bodyThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->start()V

    :cond_0
    return-void
.end method

.method public checkRemoteForDetail()V
    .locals 2

    const-string v0, "lzqW4_Firm_remote"

    const-string v1, "checkRemoteForDetail"

    .line 974
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    if-nez v0, :cond_0

    .line 978
    new-instance v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    .line 979
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->setLisetener(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;)V

    .line 980
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->remoteThread:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->start()V

    :cond_0
    return-void
.end method

.method public compareBodyLocalWithServer(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/BodyFirmWareModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1678
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1684
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1686
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1687
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;

    const/4 v4, 0x0

    .line 1688
    :goto_1
    sget-object v5, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1689
    iget-object v5, v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;->hardware_type:Ljava/lang/String;

    sget-object v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v6, v6, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1690
    iget-object v5, v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_latest_version_code:Ljava/lang/String;

    sget-object v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v6, v6, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1692
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u53bb\u6389\u4e0b\u8f7d\u7684\u662f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "lzqW4Firm"

    invoke-static {v7, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_latest_version_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   localversion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v6, v6, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public compareLocalWithBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "lzqW4Firm"

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareLocalWithBody State.body_local_firmwares.size() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1489
    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1494
    :goto_0
    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_d

    .line 1495
    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/gcs/manager/W4Firmware;

    .line 1496
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    const-string v7, "MC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1497
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/powervision/gcs/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1498
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    const-string v7, "0.0.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    .line 1501
    :cond_1
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 1505
    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v4, v4, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1510
    :cond_3
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    const-string v7, "DL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1511
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    const-string v7, "0.0.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 1514
    :cond_4
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    if-nez v6, :cond_5

    goto/16 :goto_2

    .line 1517
    :cond_5
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-static {v6, p3}, Lcom/powervision/gcs/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1518
    new-instance v3, Ljava/io/File;

    iget-object v4, v4, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1522
    :cond_6
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    const-string v7, "FC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1523
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    const-string v7, "00000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 1526
    :cond_7
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    if-nez v6, :cond_8

    goto :goto_2

    .line 1529
    :cond_8
    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/powervision/gcs/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1530
    new-instance v3, Ljava/io/File;

    iget-object v4, v4, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1533
    :cond_9
    iget-object v5, v4, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    const-string v6, "config"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "lzqW4Firm"

    .line 1534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6dfb\u52a0Config\u6587\u4ef6"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v5, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    const-string v6, "0.0.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    .line 1538
    :cond_a
    iget-object v5, v4, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    if-nez v5, :cond_b

    goto :goto_2

    .line 1541
    :cond_b
    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1545
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v5, :cond_e

    .line 1546
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1549
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v5, :cond_10

    .line 1551
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    if-eqz p1, :cond_10

    .line 1552
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1553
    :try_start_0
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 1554
    :goto_3
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_f

    .line 1555
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {p2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->storeTheFiles(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1558
    :cond_f
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_10
    :goto_4
    return v3
.end method

.method public compareRemoteLocalAndServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    const-string v0, "MCU"

    .line 1895
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getLoaclRemoteItem(Ljava/lang/String;)Lcom/powervision/gcs/manager/W4Firmware;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lzqRu"

    if-eqz v0, :cond_7

    .line 1896
    iget-object v3, v0, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p2, "DL01"

    .line 1905
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getLoaclRemoteItem(Ljava/lang/String;)Lcom/powervision/gcs/manager/W4Firmware;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1906
    iget-object v0, p2, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_4

    const-string p1, "WIFI_1"

    .line 1915
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getLoaclRemoteItem(Ljava/lang/String;)Lcom/powervision/gcs/manager/W4Firmware;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1916
    iget-object p2, p1, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1917
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ser_wifiVersion:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 1919
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LOCAL_wifi_1.version:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1

    :cond_4
    const/4 p1, 0x0

    return p1

    .line 1907
    :cond_5
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ser_dl01Version:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 1909
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LOCAL_dl01Version:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v1

    .line 1897
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ser_mcuVersion:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 1899
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "localMcu:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v1
.end method

.method public deviceDisConnectAndCheckToDownload()V
    .locals 6

    .line 582
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getLastConnectionType()Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4e00\u6b21\u7684\u8fde\u63a5\u72b6\u6001 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqRc"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 587
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x9

    const/16 v4, 0x64

    const-string v5, "lzqW4FW_r"

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->RemoteCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 607
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getRemote_B_MergeVersion()Ljava/lang/String;

    move-result-object v0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B \u53d6 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 610
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getRemote_B_Mcu()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    .line 611
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getRemote_B_Dl01()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    .line 612
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkRemoteForDetail()V

    goto/16 :goto_1

    .line 588
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->RemoteCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 591
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getRemote_A_MergeVersion()Ljava/lang/String;

    move-result-object v0

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A \u53d6 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 594
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getRemote_A_Mcu()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    .line 595
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getRemoteWifi()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->WIFIVERSION:Ljava/lang/String;

    .line 596
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getRemote_A_Dl01()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A  \u53d6 dl01 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkRemoteForDetail()V

    .line 619
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->BodyCheckedOver:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 622
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getBodyMergeVersion()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getBodyDl01()Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getBodyFC()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getBodyMc()Ljava/lang/String;

    move-result-object v3

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u53d6\u51fa\u6765 bodyMergeVerison = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lzqW4Firm"

    invoke-static {v5, v4}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PVW4_MC-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_DL-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_FC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->CAMERAVERSION:Ljava/lang/String;

    .line 629
    sput-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->FCVERSION:Ljava/lang/String;

    .line 630
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkBodyForDetail()V

    :cond_4
    return-void
.end method

.method public findRemoteUpdateFile([Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x0

    .line 1351
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1352
    aget-object v1, p1, v0

    .line 1353
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1354
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->findRemoteUpdateFile([Ljava/io/File;)V

    goto :goto_1

    .line 1356
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".bin"

    .line 1357
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "._"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1358
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1360
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public getBodyDownLoadinfos()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;"
        }
    .end annotation

    .line 2224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2225
    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_download_infos:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x0

    .line 2226
    :goto_0
    :try_start_0
    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_download_infos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2227
    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_download_infos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;

    .line 2229
    new-instance v4, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {v4}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    .line 2230
    iget-object v5, v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;->hardware_type:Ljava/lang/String;

    iput-object v5, v4, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 2231
    iget-object v5, v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_download_addr:Ljava/lang/String;

    iput-object v5, v4, Lcom/powervision/gcs/manager/W4Firmware;->download_address:Ljava/lang/String;

    .line 2232
    iget-object v5, v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_latest_version_code:Ljava/lang/String;

    iput-object v5, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    .line 2233
    iget-object v5, v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_download_addr:Ljava/lang/String;

    iget-object v6, v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_download_addr:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    .line 2234
    iget-object v3, v3, Lcom/powervision/gcs/manager/BodyFirmWareModel;->row_id:Ljava/lang/String;

    iput-object v3, v4, Lcom/powervision/gcs/manager/W4Firmware;->md5:Ljava/lang/String;

    .line 2235
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2239
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoaclRemoteItem(Ljava/lang/String;)Lcom/powervision/gcs/manager/W4Firmware;
    .locals 3

    .line 1930
    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1931
    :goto_0
    :try_start_0
    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1932
    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v2, v2, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1933
    sget-object p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/W4Firmware;

    monitor-exit v0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1936
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLoclBodyVersion()V
    .locals 7

    const-string v0, "lzqW4Firm"

    const-string v1, "  getLoclBodyVersion "

    .line 1373
    invoke-static {v0, v1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/powervision/base/utils/W4FirmWareFileUtils;->getFirmWareBodyPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1378
    :cond_0
    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1380
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1382
    array-length v2, v1

    if-lez v2, :cond_5

    const/4 v2, 0x0

    .line 1383
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 1384
    aget-object v3, v1, v2

    .line 1385
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1387
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->findItemNewestVersion(Ljava/io/File;)Lcom/powervision/gcs/manager/W4Firmware;

    move-result-object v3

    .line 1388
    iput-object v5, v3, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 1389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  body_step  \u672c\u5730MC\u7248\u672c\u53f7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1393
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1394
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->findItemNewestVersion(Ljava/io/File;)Lcom/powervision/gcs/manager/W4Firmware;

    move-result-object v3

    .line 1395
    iput-object v5, v3, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 1396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " body_step  \u672c\u5730FC\u7248\u672c\u53f7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1400
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1401
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->findItemNewestVersion(Ljava/io/File;)Lcom/powervision/gcs/manager/W4Firmware;

    move-result-object v3

    .line 1402
    iput-object v5, v3, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 1403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " body_step  \u672c\u5730DL\u7248\u672c\u53f7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1408
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1409
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->findItemNewestVersion(Ljava/io/File;)Lcom/powervision/gcs/manager/W4Firmware;

    move-result-object v3

    .line 1410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " body_step  \u672c\u5730Config\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    iput-object v4, v3, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 1412
    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public getRemoteDL01Version()V
    .locals 3

    const-string v0, "lzqW4FW_r"

    const-string v1, "\u83b7\u53d6 dl01version"

    .line 687
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const-string v1, "\u83b7\u53d6 State.DL01VERSION"

    .line 692
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->getDl01Version()V

    :cond_0
    return-void
.end method

.method public getRemoteFirmWareForTxt(Ljava/lang/String;)Lcom/powervision/gcs/manager/FirmWare;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1709
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Catalog.txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1711
    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1712
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1713
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1714
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V

    .line 1715
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1716
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/powervision/gcs/manager/FirmWare;

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/FirmWare;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRemoteMCUVersion()V
    .locals 5

    .line 775
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "lzqW4_Firm_MCU"

    const-string v1, "\u83b7\u53d6\u9065\u63a7\u5668mcu\u7248\u672c\u53f7"

    .line 776
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    move-result-object v0

    new-instance v1, Lcom/powervision/natives/connect/ParamMsg;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PV_RC_VER_STD"

    invoke-direct {v1, v2, v4, v3}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;I)V

    :cond_1
    return-void
.end method

.method public getRemoteWifiVersion()V
    .locals 2

    .line 701
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 702
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v0

    iget v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectStatus:I

    if-nez v0, :cond_0

    const-string v0, "lzq9342"

    const-string v1, "\u83b7\u53d6 9342version"

    .line 707
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->get9342Version()I

    :cond_0
    return-void
.end method

.method public hideRedNotify()V
    .locals 3

    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->setShowRedPoint(Z)V

    .line 657
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->rePotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->redPointNotifies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;

    .line 659
    invoke-interface {v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;->hideRedPoint()V

    goto :goto_0

    .line 661
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

.method public initBody()V
    .locals 2

    const-string v0, "lzqW4Firm"

    const-string v1, "initBody \u8bf7\u6c42\u7248\u672c\u53f7 BODY \u7248\u672c\u53f7"

    .line 519
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkBodyForDetail()V

    .line 522
    invoke-direct {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getDolphinBodyVersion()V

    .line 524
    invoke-direct {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getCameraInfo()V

    return-void
.end method

.method public initRemote(I)V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 535
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideRemoteDownLoad()V

    .line 537
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideDl01Update()V

    .line 538
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideMcuUpdate(I)V

    .line 539
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideWifiUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 544
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getRemoteDL01Version()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 546
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getRemoteMCUVersion()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 548
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getRemoteWifiVersion()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 550
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getRemoteDL01Version()V

    .line 551
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getRemoteMCUVersion()V

    .line 552
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getRemoteWifiVersion()V

    .line 554
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkRemoteForDetail()V

    return-void

    :catchall_0
    move-exception p1

    .line 542
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isShowRedPoint()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedPoint:Z

    return v0
.end method

.method public listen(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Msg;)V
    .locals 0

    .line 2332
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->msg:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Msg;

    return-void
.end method

.method public notify_hideLoadingDl01()V
    .locals 2

    const/4 v0, 0x0

    .line 2415
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2416
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideDl01Loading()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_hideLoadingMain()V
    .locals 2

    const/4 v0, 0x0

    .line 2442
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2443
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideMainLoading()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_hideLoadingMcu()V
    .locals 2

    const/4 v0, 0x0

    .line 2429
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2430
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideMcuLoading()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_hideLoadingWifi()V
    .locals 2

    const/4 v0, 0x0

    .line 2455
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2456
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideWifiLoading()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_showLoadingDl01()V
    .locals 2

    const/4 v0, 0x0

    .line 2407
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2408
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showDl01Loading()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_showLoadingMain()V
    .locals 2

    const/4 v0, 0x0

    .line 2436
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2437
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showMainLoading()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_showLoadingMcu()V
    .locals 2

    const/4 v0, 0x0

    .line 2422
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2423
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showMcuLoading()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_showLoadingWifi()V
    .locals 2

    const/4 v0, 0x0

    .line 2449
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2450
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showWifiLoading()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized removeRedPointNotify(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 678
    monitor-exit p0

    return-void

    .line 680
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->redPointNotifies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->redPointNotifies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removemView(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;)V
    .locals 2

    .line 2257
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2258
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2259
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2261
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

.method public setShowRedPoint(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedPoint:Z

    return-void
.end method

.method showRedNotify(I)V
    .locals 3

    const-string v0, "lzqW4Firm"

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRedNotify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 646
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->setShowRedPoint(Z)V

    .line 647
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->rePotLock:Ljava/lang/Object;

    monitor-enter p1

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->redPointNotifies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;

    .line 649
    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;->showRedPoint()V

    goto :goto_0

    .line 651
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;"
        }
    .end annotation

    .line 1461
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1465
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 1466
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 1469
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v3, v3, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v5, v5, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/powervision/gcs/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v5, v5, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    if-ne v3, v5, :cond_1

    .line 1470
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/manager/W4Firmware;

    .line 1471
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1472
    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public testNet()V
    .locals 0

    return-void
.end method

.method public updateBodyOver()V
    .locals 4

    const-string v0, ""

    .line 2497
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->CAMERAVERSION:Ljava/lang/String;

    const-string v0, ""

    .line 2498
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->FCVERSION:Ljava/lang/String;

    const-string v0, ""

    .line 2499
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->BodyShowVersion:Ljava/lang/String;

    .line 2500
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->ViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2501
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2502
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2503
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->BodyShowVersion:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getMainBodyVersionSucceed(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2506
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

.method public updateDl01Over()V
    .locals 3

    const-string v0, ""

    .line 2483
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2484
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2485
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getRemoteDL01VersionSucceed(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateMcuOver()V
    .locals 3

    const-string v0, ""

    .line 2476
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2477
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2478
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getRemoteMCUVersionSucceed(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateWifiOver()V
    .locals 3

    const-string v0, ""

    .line 2490
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->WIFIVERSION:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2491
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2492
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v2, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getRemoteWifiVersionSucceed(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
