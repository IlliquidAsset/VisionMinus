.class Lcom/powervision/user/ui/fragment/MessageFragment$2;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/ui/fragment/MessageFragment;->showClearDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/ui/fragment/MessageFragment;

.field final synthetic val$dialog:Lcom/powervision/base/dialog/CommonDialog;


# direct methods
.method constructor <init>(Lcom/powervision/user/ui/fragment/MessageFragment;Lcom/powervision/base/dialog/CommonDialog;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/powervision/user/ui/fragment/MessageFragment$2;->this$0:Lcom/powervision/user/ui/fragment/MessageFragment;

    iput-object p2, p0, Lcom/powervision/user/ui/fragment/MessageFragment$2;->val$dialog:Lcom/powervision/base/dialog/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClick()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment$2;->val$dialog:Lcom/powervision/base/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/powervision/base/dialog/CommonDialog;->dismiss()V

    return-void
.end method

.method public onPositiveClick()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment$2;->this$0:Lcom/powervision/user/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/powervision/user/ui/fragment/MessageFragment;->access$000(Lcom/powervision/user/ui/fragment/MessageFragment;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/user/presenter/impl/MessagePresenter;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment$2;->val$dialog:Lcom/powervision/base/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/powervision/base/dialog/CommonDialog;->dismiss()V

    return-void
.end method
