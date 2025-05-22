.class Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$1;
.super Ljava/lang/Object;
.source "LinkSettingFragment.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDl01OperationResult(IILjava/lang/String;)V
    .locals 1

    .line 125
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 126
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LinkSettingFragment$1$zRAUFe9ZSZvrbFN3Eo_zXUlSpfY;

    invoke-direct {v0, p0, p1, p3}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LinkSettingFragment$1$zRAUFe9ZSZvrbFN3Eo_zXUlSpfY;-><init>(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$1;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$getDl01OperationResult$0$LinkSettingFragment$1(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 130
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
