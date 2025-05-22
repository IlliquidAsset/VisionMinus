.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ShipCommonBatteryFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;Landroid/view/View;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    .line 21
    sget v0, Lcom/powervision/gcs/R$id;->text_voltage_number:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textVoltageNumber\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textVoltageNumber:Landroid/widget/TextView;

    .line 22
    sget v0, Lcom/powervision/gcs/R$id;->text_temperature_number:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textTemperatureNumber\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textTemperatureNumber:Landroid/widget/TextView;

    .line 23
    sget v0, Lcom/powervision/gcs/R$id;->text_current_electricity_number:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textCurrentElectricityNumber\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textCurrentElectricityNumber:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/powervision/gcs/R$id;->text_battery_capacity_number:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textBatteryCapacityNumber\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textBatteryCapacityNumber:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/powervision/gcs/R$id;->text_cycle_times_number:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textCycleTimesNumber\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textCycleTimesNumber:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    .line 35
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textVoltageNumber:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textTemperatureNumber:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textCurrentElectricityNumber:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textBatteryCapacityNumber:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textCycleTimesNumber:Landroid/widget/TextView;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
