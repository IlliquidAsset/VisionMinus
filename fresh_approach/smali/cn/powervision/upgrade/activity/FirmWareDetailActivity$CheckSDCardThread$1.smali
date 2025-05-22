.class Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;
.super Ljava/lang/Object;
.source "FirmWareDetailActivity.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStorageSizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSDStorageSize(Ljava/lang/String;)V
    .locals 5

    const-string v0, "lzqFirm"

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sd\u5361 getEmmcStorageSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-1"

    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "lzqFirm"

    const-string v0, "sd\u5361 \u8bfb\u53d6\u8d85\u65f6"

    .line 436
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    iput-boolean v1, p1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->over:Z

    return-void

    :cond_0
    const-string v0, ","

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "all:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "remain:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->over:Z

    const-string v0, ","

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 444
    aget-object v0, p1, v1

    const-string v1, "all:"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sd\u5361 all_s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    aget-object p1, p1, v2

    const-string v1, "remain:"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "lzqFirm"

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sd\u5361 remain_s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "0"

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "lzqFirm"

    const-string v0, "sd\u5361 \u6ca1\u6709SD\u5361 \u53ef\u4ee5\u5347\u7ea7"

    .line 450
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    iget-object p1, p1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->checkSdCardListener:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;

    if-eqz p1, :cond_3

    .line 452
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    iget-object p1, p1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->checkSdCardListener:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;

    invoke-interface {p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;->canUpgrade()V

    goto :goto_0

    :cond_1
    const-string p1, "lzqFirm"

    const-string v0, "sd\u5361 \u672a\u62d4\u51faSD\u5361 \u4e0d\u80fd\u5347\u7ea7"

    .line 457
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    iget-object p1, p1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->checkSdCardListener:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;

    if-eqz p1, :cond_3

    .line 460
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    iget-object p1, p1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->checkSdCardListener:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;

    invoke-interface {p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;->tipsSdCard()V

    goto :goto_0

    .line 466
    :cond_2
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    iput-boolean v1, p1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->over:Z

    const-string p1, "lzqFirm"

    const-string v0, "sd\u5361 \u8bfb\u53d6\u5185\u5bb9\u4e0d\u5bf9"

    .line 467
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_3
    :goto_0
    const-class p1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    monitor-enter p1

    :try_start_0
    const-string v0, "lzqFirm"

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sd\u5361 \u5524\u9192 \u7ebf\u7a0b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-class v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 474
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
