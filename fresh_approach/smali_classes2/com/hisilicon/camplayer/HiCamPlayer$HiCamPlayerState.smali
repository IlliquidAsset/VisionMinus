.class public final enum Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;
.super Ljava/lang/Enum;
.source "HiCamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/camplayer/HiCamPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HiCamPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

.field public static final enum HICAMPLAYER_STATE_ERROR:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

.field public static final enum HICAMPLAYER_STATE_IDLE:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

.field public static final enum HICAMPLAYER_STATE_PAUSE:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

.field public static final enum HICAMPLAYER_STATE_PLAY:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

.field public static final enum HICAMPLAYER_STATE_PREPARED:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

.field public static final enum HICAMPLAYER_STATE_STOP:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 101
    new-instance v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    const-string v1, "HICAMPLAYER_STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_IDLE:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    new-instance v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    const-string v1, "HICAMPLAYER_STATE_PREPARED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PREPARED:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    new-instance v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    const-string v1, "HICAMPLAYER_STATE_PLAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PLAY:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    new-instance v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    const-string v1, "HICAMPLAYER_STATE_PAUSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PAUSE:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    .line 102
    new-instance v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    const-string v1, "HICAMPLAYER_STATE_STOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_STOP:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    .line 103
    new-instance v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    const-string v1, "HICAMPLAYER_STATE_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_ERROR:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    .line 100
    sget-object v8, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_IDLE:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    aput-object v8, v1, v2

    sget-object v2, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PREPARED:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PLAY:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PAUSE:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_STOP:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->$VALUES:[Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;
    .locals 1

    .line 100
    const-class v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    return-object p0
.end method

.method public static values()[Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;
    .locals 1

    .line 100
    sget-object v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->$VALUES:[Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    invoke-virtual {v0}, [Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    return-object v0
.end method
