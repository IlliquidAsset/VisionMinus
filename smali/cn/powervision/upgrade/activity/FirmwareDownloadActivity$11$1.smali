.class Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11$1;
.super Ljava/lang/Object;
.source "FirmwareDownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11$1;->this$1:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 585
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11$1;->this$1:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;

    iget-object p1, p1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->finish()V

    return-void
.end method
