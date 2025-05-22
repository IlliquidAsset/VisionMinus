.class public final enum Lcom/powervision/powersdk/model/ConnectModel;
.super Ljava/lang/Enum;
.source "ConnectModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/powersdk/model/ConnectModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onConnectFailed:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onConnectSuccess:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onConnectTimeout:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onConnectedMotionsensingRemotecontrol:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onConnectedStandardRemotecontrol:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onConnecting:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onDisConnected:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onDroneConnectFailed:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onDroneConnectTimeout:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onDroneConnected:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onDroneConnectedReplay:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onDroneConnecting:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onDroneDisConnected:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onHeartbeatTimeout:Lcom/powervision/powersdk/model/ConnectModel;

.field public static final enum onRayConnected:Lcom/powervision/powersdk/model/ConnectModel;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 9
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onConnecting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onConnecting:Lcom/powervision/powersdk/model/ConnectModel;

    .line 10
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onConnectSuccess"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onConnectSuccess:Lcom/powervision/powersdk/model/ConnectModel;

    .line 11
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onDisConnected"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onDisConnected:Lcom/powervision/powersdk/model/ConnectModel;

    .line 12
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onConnectTimeout"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onConnectTimeout:Lcom/powervision/powersdk/model/ConnectModel;

    .line 13
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onHeartbeatTimeout"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onHeartbeatTimeout:Lcom/powervision/powersdk/model/ConnectModel;

    .line 14
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onConnectedStandardRemotecontrol"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onConnectedStandardRemotecontrol:Lcom/powervision/powersdk/model/ConnectModel;

    .line 15
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onConnectedMotionsensingRemotecontrol"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onConnectedMotionsensingRemotecontrol:Lcom/powervision/powersdk/model/ConnectModel;

    .line 16
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onConnectFailed"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onConnectFailed:Lcom/powervision/powersdk/model/ConnectModel;

    .line 17
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onDroneConnecting"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onDroneConnecting:Lcom/powervision/powersdk/model/ConnectModel;

    .line 18
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onDroneConnected"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onDroneConnected:Lcom/powervision/powersdk/model/ConnectModel;

    .line 19
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onDroneDisConnected"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onDroneDisConnected:Lcom/powervision/powersdk/model/ConnectModel;

    .line 20
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onDroneConnectTimeout"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onDroneConnectTimeout:Lcom/powervision/powersdk/model/ConnectModel;

    .line 21
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onDroneConnectFailed"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onDroneConnectFailed:Lcom/powervision/powersdk/model/ConnectModel;

    .line 22
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onRayConnected"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onRayConnected:Lcom/powervision/powersdk/model/ConnectModel;

    .line 23
    new-instance v0, Lcom/powervision/powersdk/model/ConnectModel;

    const-string v1, "onDroneConnectedReplay"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/powervision/powersdk/model/ConnectModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/powersdk/model/ConnectModel;->onDroneConnectedReplay:Lcom/powervision/powersdk/model/ConnectModel;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/powervision/powersdk/model/ConnectModel;

    .line 8
    sget-object v16, Lcom/powervision/powersdk/model/ConnectModel;->onConnecting:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v16, v1, v2

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onConnectSuccess:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onDisConnected:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v4

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onConnectTimeout:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v5

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onHeartbeatTimeout:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v6

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onConnectedStandardRemotecontrol:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v7

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onConnectedMotionsensingRemotecontrol:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v8

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onConnectFailed:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v9

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onDroneConnecting:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v10

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onDroneConnected:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v11

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onDroneDisConnected:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v12

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onDroneConnectTimeout:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v13

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onDroneConnectFailed:Lcom/powervision/powersdk/model/ConnectModel;

    aput-object v2, v1, v14

    sget-object v2, Lcom/powervision/powersdk/model/ConnectModel;->onRayConnected:Lcom/powervision/powersdk/model/ConnectModel;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/powervision/powersdk/model/ConnectModel;->$VALUES:[Lcom/powervision/powersdk/model/ConnectModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/powersdk/model/ConnectModel;
    .locals 1

    .line 8
    const-class v0, Lcom/powervision/powersdk/model/ConnectModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/powersdk/model/ConnectModel;

    return-object p0
.end method

.method public static values()[Lcom/powervision/powersdk/model/ConnectModel;
    .locals 1

    .line 8
    sget-object v0, Lcom/powervision/powersdk/model/ConnectModel;->$VALUES:[Lcom/powervision/powersdk/model/ConnectModel;

    invoke-virtual {v0}, [Lcom/powervision/powersdk/model/ConnectModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/powersdk/model/ConnectModel;

    return-object v0
.end method
