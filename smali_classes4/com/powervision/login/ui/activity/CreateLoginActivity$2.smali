.class Lcom/powervision/login/ui/activity/CreateLoginActivity$2;
.super Ljava/lang/Object;
.source "CreateLoginActivity.java"

# interfaces
.implements Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/ui/activity/CreateLoginActivity;->setListener()V
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

    .line 162
    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectClick()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->access$200(Lcom/powervision/login/ui/activity/CreateLoginActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-static {v0}, Lcom/powervision/base/utils/ProgressDialogUtils;->showEmptyDialog(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->access$302(Lcom/powervision/login/ui/activity/CreateLoginActivity;Z)Z

    .line 179
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->access$400(Lcom/powervision/login/ui/activity/CreateLoginActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-virtual {v0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->getCountryList()V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-static {v0}, Lcom/powervision/base/utils/KeyBoardUtils;->closeKeybord(Landroid/app/Activity;)V

    .line 182
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->access$500(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V

    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->access$002(Lcom/powervision/login/ui/activity/CreateLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-static {p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->access$000(Lcom/powervision/login/ui/activity/CreateLoginActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 168
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-static {p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->access$100(Lcom/powervision/login/ui/activity/CreateLoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-static {p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->access$100(Lcom/powervision/login/ui/activity/CreateLoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
