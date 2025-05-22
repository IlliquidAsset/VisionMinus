.class Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;
.super Ljava/lang/Object;
.source "PerceptionSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 269
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1000(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    sget v1, Lcom/powervision/aircraft/R$string;->FC_FOLLOW:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBiggerOrSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1600(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 271
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_62_24:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1500(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "TRIPLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecording()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1600(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 276
    new-instance p1, Lcom/powervision/base/warning/HoverMessage;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_214:I

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/base/warning/HoverMessage;

    const-string v2, "avoid_follow_warning"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1600(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    const/16 v0, 0x67

    if-eqz p1, :cond_2

    .line 280
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1700(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;I)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;I)V

    :goto_0
    return-void
.end method
