.class Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;
.super Ljava/lang/Object;
.source "DvModeMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/fragment/DvModeMainFragment;->onDeviceConnectionChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

.field final synthetic val$connect:Z


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Z)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    iput-boolean p2, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->val$connect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 250
    sget-boolean v0, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    if-eqz v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->val$connect:Z

    if-eqz v0, :cond_3

    const-string v0, "DvModeMainFragment"

    const-string v1, "onDeviceConnectionChange:  DVMode --> fragment finish"

    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$200(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$300(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-static {v1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$200(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AP03_DV_SSID"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$400(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$400(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$400(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$502(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Z)Z

    .line 263
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-virtual {v1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-virtual {v1, v0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 265
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$600(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
