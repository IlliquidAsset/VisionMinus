.class Lcn/powervision/upgrade/manager/NewFirmWareManager$20;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Lcn/powervision/upgrade/manager/CommonCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->downloadMatch(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 3310
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 3

    const-string v0, "lzqFirm"

    const-string v1, "1.2 downloadMatch failed"

    .line 3347
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->canCheck:Z

    .line 3349
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->checkAllWithNetWork(Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;I)V

    .line 3350
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->islocalAndAppMatch(I)V

    return-void
.end method

.method public varargs success([Ljava/lang/Object;)V
    .locals 4

    const-string v0, "lzqFirm"

    const-string v1, "1.2 downloadMatch success"

    .line 3314
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3315
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    .line 3316
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->findNewestMatch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3319
    :try_start_0
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->getLoaclNewestVersion()Ljava/lang/String;

    move-result-object v1

    .line 3320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.2 downloadMatch \u5bf9\u6bd4\u7248\u672c\u53f7 loaclNewestVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onLineVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    invoke-static {v1, p1}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3322
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.2 downloadMatch \u672c\u5730\u4e0d\u662f\u6700\u65b0\u7684\u66f4\u65b0\u672c\u5730"

    .line 3324
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3325
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->SER_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcn/powervision/upgrade/manager/MatchUtil;->updateTheNewFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3332
    :catch_0
    :cond_0
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->checkAllWithNetWork(Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;I)V

    .line 3333
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {p1, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->islocalAndAppMatch(I)V

    return-void
.end method

.method public timeout()V
    .locals 3

    const-string v0, "lzqFirm"

    const-string v1, "1.2 downloadMatch timeout"

    .line 3339
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->canCheck:Z

    .line 3341
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->checkAllWithNetWork(Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;I)V

    .line 3342
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->islocalAndAppMatch(I)V

    return-void
.end method
