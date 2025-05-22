.class Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;
.super Ljava/lang/Object;
.source "ModifyPersonalInfoActivity.java"

# interfaces
.implements Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->showSelectPhotoPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;

.field final synthetic val$mDialog:Lcom/powervision/user/views/UserCenterDialog;


# direct methods
.method constructor <init>(Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;Lcom/powervision/user/views/UserCenterDialog;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;->this$0:Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;

    iput-object p2, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;->val$mDialog:Lcom/powervision/user/views/UserCenterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;->val$mDialog:Lcom/powervision/user/views/UserCenterDialog;

    invoke-virtual {v0}, Lcom/powervision/user/views/UserCenterDialog;->dismiss()V

    return-void
.end method

.method public getPhoto()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;->val$mDialog:Lcom/powervision/user/views/UserCenterDialog;

    invoke-virtual {v0}, Lcom/powervision/user/views/UserCenterDialog;->dismiss()V

    .line 275
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;->this$0:Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;

    invoke-static {v0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->access$100(Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;)V

    return-void
.end method

.method public takePhoto()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;->val$mDialog:Lcom/powervision/user/views/UserCenterDialog;

    invoke-virtual {v0}, Lcom/powervision/user/views/UserCenterDialog;->dismiss()V

    .line 269
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;->this$0:Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;

    invoke-static {v0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->access$000(Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;)V

    return-void
.end method
