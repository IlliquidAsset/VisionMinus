.class Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;
.super Ljava/lang/Object;
.source "FirmwareDownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showTips(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;Ljava/lang/String;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    iput-object p2, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 579
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 580
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 581
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_TakeoffAndlanding_18:I

    invoke-virtual {v1, v2}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11$1;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11$1;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 588
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
