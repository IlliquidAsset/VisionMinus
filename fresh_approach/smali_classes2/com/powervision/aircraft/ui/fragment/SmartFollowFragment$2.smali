.class Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;
.super Ljava/lang/Object;
.source "SmartFollowFragment.java"

# interfaces
.implements Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Z)V
    .locals 3

    .line 470
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    new-instance p1, Lcom/powervision/base/warning/HoverMessage;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_213:I

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/base/warning/HoverMessage;

    const-string v2, "avoid_follow_warning"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 474
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)I

    move-result p1

    xor-int/lit8 p1, p1, 0x4

    .line 475
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 478
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public modeSelect(I)V
    .locals 0

    return-void
.end method

.method public open(Z)V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)Lcom/powervision/base/dialog/AvoidanceDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setSelectEnable(Z)V

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)I

    move-result p1

    goto :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)I

    move-result p1

    xor-int/lit8 p1, p1, 0x4

    .line 460
    :goto_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    return-void
.end method
