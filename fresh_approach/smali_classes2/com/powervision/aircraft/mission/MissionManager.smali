.class public Lcom/powervision/aircraft/mission/MissionManager;
.super Ljava/lang/Object;
.source "MissionManager.java"


# static fields
.field private static missionManager:Lcom/powervision/aircraft/mission/MissionManager;


# instance fields
.field private iView:Lcom/powervision/base/base/BaseView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/aircraft/mission/MissionManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/powervision/aircraft/mission/MissionManager;->missionManager:Lcom/powervision/aircraft/mission/MissionManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/powervision/aircraft/mission/MissionManager;

    invoke-direct {v0}, Lcom/powervision/aircraft/mission/MissionManager;-><init>()V

    sput-object v0, Lcom/powervision/aircraft/mission/MissionManager;->missionManager:Lcom/powervision/aircraft/mission/MissionManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/powervision/aircraft/mission/MissionManager;->missionManager:Lcom/powervision/aircraft/mission/MissionManager;

    return-object v0
.end method


# virtual methods
.method public closeOneMission(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setIview(Lcom/powervision/base/base/BaseView;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/powervision/aircraft/mission/MissionManager;->iView:Lcom/powervision/base/base/BaseView;

    return-void
.end method

.method public startOneMission(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
