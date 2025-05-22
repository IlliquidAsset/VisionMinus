.class Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$6;
.super Ljava/lang/Object;
.source "FirmwareDownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showSuccessDialog()V
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

    .line 421
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 424
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->successDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
