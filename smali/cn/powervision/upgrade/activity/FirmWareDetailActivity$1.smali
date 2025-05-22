.class Lcn/powervision/upgrade/activity/FirmWareDetailActivity$1;
.super Ljava/lang/Object;
.source "FirmWareDetailActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/activity/FirmWareDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->hideloadingDialog()V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    const-string v0, ""

    invoke-virtual {p1, v0, v1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->showloadingDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 71
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->toUpdateActivity(I)V

    goto :goto_0

    .line 67
    :cond_3
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->showTips()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
