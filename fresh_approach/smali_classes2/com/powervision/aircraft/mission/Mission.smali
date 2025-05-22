.class public Lcom/powervision/aircraft/mission/Mission;
.super Ljava/lang/Object;
.source "Mission.java"


# instance fields
.field public missionName:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/powervision/aircraft/mission/Mission;->missionName:I

    return-void
.end method


# virtual methods
.method public getMissionName()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/powervision/aircraft/mission/Mission;->missionName:I

    return v0
.end method

.method public setMissionName(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/powervision/aircraft/mission/Mission;->missionName:I

    return-void
.end method
