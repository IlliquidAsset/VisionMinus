.class Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;
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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;->val$bgView:Landroid/view/View;

    iput-object p3, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 293
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;->val$bgView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 294
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
