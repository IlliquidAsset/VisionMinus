.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->updateWarnInfo(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

.field final synthetic val$health:I


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V
    .locals 0

    .line 2903
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->val$health:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2906
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->val$health:I

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2907
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2908
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    sget v3, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_30:I

    .line 2909
    invoke-virtual {v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    sget v3, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_31:I

    .line 2910
    invoke-virtual {v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    sget v3, Lcom/powervision/base/R$string;->AP03_ConnectGuide_47:I

    .line 2911
    invoke-virtual {v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23$1;

    invoke-direct {v3, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23$1;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 2919
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 2908
    invoke-static {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4602(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    .line 2920
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 2921
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4502(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    goto :goto_0

    .line 2923
    :cond_0
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->val$health:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2924
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/warning/manager/WarningManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/warning/HoverMessage;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    sget v4, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_14_4:I

    .line 2925
    invoke-virtual {v3, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 2924
    invoke-virtual {v0, v1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_1
    :goto_0
    return-void
.end method
