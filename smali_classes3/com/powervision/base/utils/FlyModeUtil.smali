.class public Lcom/powervision/base/utils/FlyModeUtil;
.super Ljava/lang/Object;
.source "FlyModeUtil.java"


# static fields
.field private static final modeArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v0, "MANUAL"

    const-string v1, "ALTCTL"

    const-string v2, "POSCTL"

    const-string v3, "AUTO"

    const-string v4, "ACRO"

    const-string v5, "OFFBOARD"

    const-string v6, "STABILIZED"

    const-string v7, "RATTITUDE"

    const-string v8, "SUPERSIMPLE"

    const-string v9, "MISSION"

    const-string v10, "FOLLOW"

    const-string v11, "CIRCLE"

    const-string v12, "TAKEOFF"

    const-string v13, "LAND"

    const-string v14, "RTL"

    const-string v15, "TRIPLE"

    const-string v16, "PHOTOGRAPHY"

    const-string v17, "DELAY_SHOOT"

    const-string v18, "INTEL_SHOOT"

    const-string v19, "FAST"

    const-string v20, "FOLLOW_1"

    const-string v21, "FOLLOW_2"

    const-string v22, "FOLLOW_3"

    const-string v23, "WATER"

    const-string v24, "RAIN"

    const-string v25, "WATER_FOLLOW"

    .line 14
    filled-new-array/range {v0 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/utils/FlyModeUtil;->modeArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlyModeIndex(Ljava/lang/String;)I
    .locals 1

    .line 30
    sget-object v0, Lcom/powervision/base/utils/FlyModeUtil;->modeArray:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 33
    :cond_0
    sget-object v0, Lcom/powervision/base/utils/FlyModeUtil;->modeArray:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
