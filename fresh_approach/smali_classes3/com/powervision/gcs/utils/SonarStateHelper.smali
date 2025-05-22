.class public Lcom/powervision/gcs/utils/SonarStateHelper;
.super Ljava/lang/Object;
.source "SonarStateHelper.java"


# static fields
.field public static ArmTheFish:Z = true

.field public static Auto:Z = true

.field public static DrawFish:Z = true

.field public static DrawFishDeep:Z = true

.field public static GongToBrith:F = 3.28f

.field public static MCU_VERSION:Ljava/lang/String; = ""

.field public static MaxDepthAlert:Z = true

.field public static MinDepthAlert:Z = true

.field public static final SONAR_COLOR_AREA_STEP:I = 0xa

.field public static final SonarAreaRadiiRatio:F = 0.267949f

.field public static SonarWorkingModel:I = 0x1

.field public static Sonar_Demo_Data_Show:Z = false

.field public static VerticalFlasher:Z = true

.field public static WIFI_VERSION:Ljava/lang/String; = ""

.field public static final bigLimate:F = 0.85f

.field public static final biggest:F = 50.0f

.field public static color_Style:I = 0x0

.field public static deepColorMin:I = 0x5

.field public static deepToDataAbsolute:I = 0xa

.field public static deepToDataLen:I = 0x64

.field public static down:F = 5.0f

.field public static downDeep:F = 50.0f

.field public static final hmaxToRule:F = 1.07f

.field public static isGong:Z = true

.field public static isPVConnectSonar:Z = false

.field public static light_up:Z = true

.field public static mIsMute:Z = false

.field public static sensivity:I = 0x53

.field public static final smallLmate:F = 0.2f

.field public static final smallest:F = 5.0f

.field public static up:F = 0.0f

.field public static upDeep:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static britishToMetric(F)I
    .locals 1

    .line 67
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->GongToBrith:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getPassNumber(I)I
    .locals 1

    .line 126
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    invoke-static {p0}, Lcom/powervision/gcs/utils/SonarStateHelper;->britishToMetric(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getShowNumber(F)I
    .locals 1

    .line 79
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    if-eqz v0, :cond_0

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/powervision/gcs/utils/SonarStateHelper;->metricToBritish(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getSonarDepthArmSeekNumber(I)I
    .locals 1

    .line 114
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0x3

    :goto_0
    return p0
.end method

.method public static getSonarSeekNumber(I)I
    .locals 1

    .line 91
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    const v0, 0x4051f948

    mul-float p0, p0, v0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static getUnit()Ljava/lang/String;
    .locals 1

    .line 102
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    if-eqz v0, :cond_0

    const-string v0, "m"

    goto :goto_0

    :cond_0
    const-string v0, "ft"

    :goto_0
    return-object v0
.end method

.method private static metricToBritish(F)I
    .locals 1

    .line 57
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->GongToBrith:F

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method
