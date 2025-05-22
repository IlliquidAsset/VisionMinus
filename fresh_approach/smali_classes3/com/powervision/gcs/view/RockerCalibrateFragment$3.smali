.class Lcom/powervision/gcs/view/RockerCalibrateFragment$3;
.super Ljava/lang/Object;
.source "RockerCalibrateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/RockerCalibrateFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/RockerCalibrateFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 130
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isShipArmd()Z

    move-result p1

    if-nez p1, :cond_0

    .line 131
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_155:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget p1, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->status:I

    if-nez p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    const/4 v0, 0x1

    iput v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->status:I

    .line 136
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvCalibrate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->OK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_127:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iput-boolean v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->isTouchEnable:Z

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->confirmView:Lcom/powervision/gcs/view/ship/ConfirmView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ConfirmView;->getPercent()F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 143
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_134:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_107:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->confirmView:Lcom/powervision/gcs/view/ship/ConfirmView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ConfirmView;->getPercent()F

    move-result p1

    .line 150
    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-static {v0}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->access$200(Lcom/powervision/gcs/view/RockerCalibrateFragment;)Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-static {v0}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->access$200(Lcom/powervision/gcs/view/RockerCalibrateFragment;)Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;->onFragmentInteraction(F)V

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    const/4 v0, 0x0

    iput v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->status:I

    .line 154
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_33:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvCalibrate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_34:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iput-boolean v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->isTouchEnable:Z

    .line 157
    iget-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->dismissAllowingStateLoss()V

    :goto_0
    return-void
.end method
