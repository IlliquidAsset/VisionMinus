.class Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;
.super Ljava/lang/Object;
.source "BasicSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->showChangeSwipePop(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

.field final synthetic val$bgView:Landroid/view/View;

.field final synthetic val$finger:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->val$finger:I

    iput-object p3, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->val$bgView:Landroid/view/View;

    iput-object p4, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 204
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->val$finger:I

    const/4 v0, 0x1

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq p1, v0, :cond_0

    .line 205
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_222:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string v0, "PV_SWIPE_STATUS"

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->val$bgView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 212
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
