.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;
.super Landroid/os/Handler;
.source "ShipCommonBatteryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryHandler"
.end annotation


# instance fields
.field private final mBatteryReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;->mBatteryReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;->mBatteryReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    .line 77
    :cond_1
    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_2

    .line 78
    iget-object p1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textCycleTimesNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object v2

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_2
    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_4

    .line 84
    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object p1

    const/4 v1, 0x3

    aget p1, p1, v1

    const-string v2, "V"

    const/16 v3, 0x3e8

    if-le p1, v3, :cond_3

    .line 85
    iget-object p1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textVoltageNumber:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object v5

    aget v1, v5, v1

    div-int/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object p1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textVoltageNumber:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object v4

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_4
    :goto_0
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/utils/SPHelperUtils;->getUnitMode()I

    move-result p1

    if-nez p1, :cond_5

    .line 101
    iget-object p1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textTemperatureNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 103
    :cond_5
    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)I

    move-result p1

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/UnitConversionUtils;->celsiusToFahrenheit(D)D

    move-result-wide v1

    .line 104
    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/FormatUtils;->getLastOneNum(D)Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textTemperatureNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2109"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)I

    move-result p1

    if-lez p1, :cond_6

    .line 113
    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)I

    move-result p1

    const/16 v1, 0x64

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 114
    iget-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textCurrentElectricityNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_6
    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object p1

    array-length p1, p1

    const/16 v1, 0x9

    if-le p1, v1, :cond_8

    .line 118
    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object p1

    aget p1, p1, v1

    const/16 v2, 0xbb8

    const-string v3, "mAh"

    if-le p1, v2, :cond_7

    .line 119
    iget-object p1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textBatteryCapacityNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 121
    :cond_7
    iget-object p1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->textBatteryCapacityNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)[I

    move-result-object v0

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    return-void
.end method
