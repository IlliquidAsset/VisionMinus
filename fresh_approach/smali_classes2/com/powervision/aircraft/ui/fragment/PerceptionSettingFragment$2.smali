.class Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;
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

    .line 186
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 189
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    const/16 v0, 0x3e8

    .line 190
    invoke-static {v0}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v2

    const-string v3, "WATER_MODE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$602(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;I)I

    .line 195
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)I

    move-result v0

    const-string v2, "MPC_AVOI_ON"

    if-ne v0, v1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    .line 197
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 198
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_waterproof_7:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    goto/16 :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$900(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/base/model/RxParamerModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/model/RxParamerModel;->setOnBarrier(Z)V

    .line 201
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v3, 0x10

    iget-object v5, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v5}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$900(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/base/model/RxParamerModel;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    const/16 v0, 0x64

    if-eqz p1, :cond_5

    .line 203
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1000(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    sget v5, Lcom/powervision/aircraft/R$string;->FC_FOLLOW:I

    invoke-virtual {v3, v5}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBiggerOrSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 204
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Z

    move-result p1

    const-string v1, "avoid_follow_warning"

    const/4 v3, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1200(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1300(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 205
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    .line 206
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1, v4}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1400(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Z)V

    .line 207
    new-instance p1, Lcom/powervision/base/warning/HoverMessage;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_211:I

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v2, Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1500(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "TRIPLE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecording()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 211
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1600(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 212
    new-instance p1, Lcom/powervision/base/warning/HoverMessage;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_214:I

    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v3, Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {v0, v1, v3}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 214
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const/4 v0, 0x2

    const-string v1, "0111"

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 216
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$1700(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;I)V

    goto :goto_0

    .line 220
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 223
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;I)V

    :goto_0
    return-void
.end method
