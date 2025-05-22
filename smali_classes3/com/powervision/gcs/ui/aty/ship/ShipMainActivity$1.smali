.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;)V
    .locals 4

    .line 1000
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$600(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)V

    .line 1003
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object p1

    new-instance v0, Lcom/powervision/natives/connect/ParamMsg;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "PV_GEOFENCE"

    invoke-direct {v0, v1, v3, v2}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    .line 1006
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$102(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    return-void
.end method

.method public onHidden()V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/CustomCycleLayout;->getIsCycleView()Z

    move-result v0

    .line 976
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$102(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mShipShrinkView:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->setVisibility(I)V

    goto :goto_0

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mShipShrinkView:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->setVisibility(I)V

    .line 982
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mShipShrinkView:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->setImageType(I)V

    .line 983
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onSend(Landroid/widget/TextView;)V
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_136:I

    invoke-static {p1, v0}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 990
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mShipSafeDetailSend:Landroid/widget/TextView;

    const/16 p1, 0x10

    .line 991
    invoke-static {p1}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->newInstance(I)Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;

    move-result-object p1

    .line 992
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "airLineDialogFragment"

    invoke-virtual {p1, v0, v1}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
