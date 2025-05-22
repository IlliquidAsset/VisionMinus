.class Lcom/powervision/login/ui/activity/CreateLoginActivity$1;
.super Ljava/lang/Object;
.source "CreateLoginActivity.java"

# interfaces
.implements Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/ui/activity/CreateLoginActivity;->showAgreement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

.field final synthetic val$fragment:Lcom/powervision/base/fragment/AgreementFragment;


# direct methods
.method constructor <init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;Lcom/powervision/base/fragment/AgreementFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$1;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    iput-object p2, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$1;->val$fragment:Lcom/powervision/base/fragment/AgreementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcceptListener()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$1;->val$fragment:Lcom/powervision/base/fragment/AgreementFragment;

    invoke-virtual {v0}, Lcom/powervision/base/fragment/AgreementFragment;->dismissAllowingStateLoss()V

    .line 144
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SPHelperUtils;->setShowAgreement(Z)V

    return-void
.end method
