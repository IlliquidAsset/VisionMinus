.class public Lcom/powervision/gcs/camera/w4/W4CameraConnect;
.super Ljava/lang/Object;
.source "W4CameraConnect.java"

# interfaces
.implements Lcom/powervision/gcs/camera/w4/IChannelListener;


# static fields
.field public static final ALTERWIFI:I = 0xb

.field public static final CONNECTED:I = 0x6

.field public static final DIS:I = 0xc

.field public static final FAILED:I = 0x4

.field private static w4CameraConnect:Lcom/powervision/gcs/camera/w4/W4CameraConnect;


# instance fields
.field private final DISCONNECT:I

.field private final IDEAL:I

.field private final TIMEOUT:I

.field public connectStatus:I

.field connectTask:Lcom/powervision/natives/connect/ConnectTask;

.field private connectTool:Lcom/powervision/natives/connect/ConnectTool;

.field helper:Lcom/powervision/gcs/camera/w4/CameraHelper;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->IDEAL:I

    const/4 v1, 0x3

    .line 16
    iput v1, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->TIMEOUT:I

    const/4 v1, 0x5

    .line 20
    iput v1, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->DISCONNECT:I

    .line 28
    iput v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectStatus:I

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    .line 42
    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 62
    new-instance v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;-><init>(Lcom/powervision/gcs/camera/w4/W4CameraConnect;)V

    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/camera/w4/W4CameraConnect;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->reConnectLink()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/camera/w4/W4CameraConnect;)Lcom/powervision/natives/connect/ConnectTool;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    return-object p0
.end method

.method private reConnectLink()V
    .locals 2

    .line 117
    iget v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public get()Lcom/powervision/gcs/camera/w4/W4CameraConnect;
    .locals 1

    .line 35
    sget-object v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->w4CameraConnect:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    invoke-direct {v0}, Lcom/powervision/gcs/camera/w4/W4CameraConnect;-><init>()V

    sput-object v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->w4CameraConnect:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    .line 38
    :cond_0
    sget-object v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->w4CameraConnect:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    return-object v0
.end method

.method public iniConnect()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v2, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v2, v1, v1}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 48
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "W4CameraConnect"

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 49
    iget-object v1, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 52
    invoke-virtual {p0, v1, v0}, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->postTask(II)V

    :goto_0
    return-void
.end method

.method public onChannelEvent(I)V
    .locals 0

    return-void
.end method

.method public postTask(II)V
    .locals 2

    .line 57
    iput p2, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectStatus:I

    .line 58
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 59
    iget-object p1, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    return-void
.end method
