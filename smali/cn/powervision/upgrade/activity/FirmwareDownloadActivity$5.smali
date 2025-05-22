.class Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$5;
.super Ljava/lang/Object;
.source "FirmwareDownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 413
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$5;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 416
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$5;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$800(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
