.class Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;
.super Landroid/os/Handler;
.source "FirmwareDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;Landroid/os/Looper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$100(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CONNECT_FAILED"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showCheckConnectDialog()V

    goto :goto_0

    .line 118
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 120
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->toUpdateActivity(I)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$200(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;I)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$000(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    :goto_0
    return-void
.end method
