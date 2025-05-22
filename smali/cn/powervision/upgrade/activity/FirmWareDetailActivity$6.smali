.class Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;
.super Ljava/lang/Object;
.source "FirmWareDetailActivity.java"

# interfaces
.implements Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->clickUpgrade(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

.field final synthetic val$update_device:I


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;I)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    iput p2, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;->val$update_device:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canUpgrade()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " \u80fd\u5347\u7ea7 "

    .line 336
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->access$100(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 338
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 339
    iput v1, v0, Landroid/os/Message;->what:I

    .line 340
    iget v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;->val$update_device:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->access$100(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public destory()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->checkSDCardThread:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    return-void
.end method

.method public tipsSdCard()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " \u63d0\u793aSD\u5361 "

    .line 329
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->access$100(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->access$100(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
