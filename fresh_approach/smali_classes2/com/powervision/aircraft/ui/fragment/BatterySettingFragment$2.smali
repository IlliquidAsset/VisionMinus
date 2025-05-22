.class Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$2;
.super Ljava/lang/Object;
.source "BatterySettingFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field progress:I

.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 154
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$2;->progress:I

    .line 155
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)Landroid/widget/TextView;

    move-result-object p1

    add-int/lit8 p2, p2, 0x12

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment$2;->progress:I

    add-int/lit8 v0, v0, 0x12

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const-string v1, "BAT_CRIT_THR"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    return-void
.end method
