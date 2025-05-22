.class Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;
.super Ljava/lang/Object;
.source "BasicSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->showChangeUnitPop(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

.field final synthetic val$bgView:Landroid/view/View;

.field final synthetic val$unit:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->val$unit:I

    iput-object p3, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->val$bgView:Landroid/view/View;

    iput-object p4, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 278
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->val$unit:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 279
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_205:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Lcom/powervision/base/model/UnitStatus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/base/model/UnitStatus;->setUnit(I)V

    .line 281
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PV_UNIT_STATUS"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xa5

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Lcom/powervision/base/model/UnitStatus;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->val$bgView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 285
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
