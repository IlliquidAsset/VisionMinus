.class Lcom/powervision/login/ui/activity/CreateLoginActivity$3;
.super Lcom/alibaba/android/arouter/facade/callback/NavCallback;
.source "CreateLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/ui/activity/CreateLoginActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;


# direct methods
.method constructor <init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$3;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-direct {p0}, Lcom/alibaba/android/arouter/facade/callback/NavCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onArrival(Lcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$3;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-static {p1}, Lcom/powervision/base/utils/ProgressDialogUtils;->showEmptyDialog(Landroid/content/Context;)V

    .line 225
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$3;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-virtual {p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->finish()V

    return-void
.end method
