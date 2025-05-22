.class Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2;
.super Ljava/lang/Object;
.source "FirmwareDownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showCannotInDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 134
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_125:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 137
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_TakeoffAndlanding_18:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2$1;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2$1;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
