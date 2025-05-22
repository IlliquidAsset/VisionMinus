.class Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$1;
.super Ljava/util/TimerTask;
.source "BatterySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "BAT_RTL_BUTTON"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    return-void
.end method
