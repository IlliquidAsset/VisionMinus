.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "ShipCommonBatteryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;
    }
.end annotation


# static fields
.field private static final FAILED:I = 0x11

.field public static final MODE_BRITISH:I = 0x1

.field public static final MODE_METRIC:I = 0x0

.field private static final SUCCUSS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ShipCommonBatteryFragment"

.field private static voltagesNumber:Ljava/lang/String;


# instance fields
.field private final MODE_UNIT:I

.field private batteryHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;

.field private batteryStatusListener:Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

.field private battery_remaining:I

.field private temperature:I

.field textBatteryCapacityNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10d2
    .end annotation
.end field

.field textCurrentElectricityNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10db
    .end annotation
.end field

.field textCycleTimesNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10dd
    .end annotation
.end field

.field textTemperatureNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1108
    .end annotation
.end field

.field textVoltageNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1113
    .end annotation
.end field

.field total_voltage:I

.field private voltages:[I

.field private w4_api:Lcom/powervision/natives/PVSDK_W4_API;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->voltages:[I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->temperature:I

    .line 46
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->battery_remaining:I

    const/16 v1, 0x1900

    .line 47
    iput v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->total_voltage:I

    .line 54
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->MODE_UNIT:I

    .line 58
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->batteryHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;

    .line 151
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->batteryStatusListener:Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->voltages:[I

    return-object p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;[I)[I
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->voltages:[I

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->temperature:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->temperature:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->battery_remaining:I

    return p0
.end method

.method static synthetic access$202(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->battery_remaining:I

    return p1
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    sput-object p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->voltagesNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->batteryHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;

    return-object p0
.end method

.method private initPowerSDK()V
    .locals 2

    .line 146
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    .line 147
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->batteryStatusListener:Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setBatteryStatusListener(Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;)V

    return-void
.end method


# virtual methods
.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 135
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_common_batery_item:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 168
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->batteryHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->initPowerSDK()V

    return-void
.end method
