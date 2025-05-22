.class Lcom/powervision/home/ui/adapter/CommonPresenter$4;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter;->checkDownLoadOrUpgrade(Z[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

.field final synthetic val$jump:Z

.field final synthetic val$packet:[B


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter;[BZ)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iput-object p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->val$packet:[B

    iput-boolean p3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->val$jump:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 187
    iget-object v2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->val$packet:[B

    const/4 v3, 0x1

    aget-byte v4, v2, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gtz v4, :cond_1

    aget-byte v2, v2, v5

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 191
    :goto_1
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareLocalAndDevWithMatch([IZ)I

    move-result v2

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u70b9\u51fb \u786e\u5b9a\u8981\u66f4\u65b0\u7684\u56fa\u4ef6 r: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "lzqFirm"

    invoke-static {v7, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u70b9\u51fb \u786e\u5b9a\u8981\u66f4\u65b0\u7684\u56fa\u4ef6 res: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v4}, Lcom/powervision/home/ui/adapter/CommonPresenter;->unLoading()V

    .line 196
    iget-boolean v4, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->val$jump:Z

    if-eqz v4, :cond_4

    .line 197
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isBootloader()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v4

    const/16 v8, 0x64

    if-eq v4, v8, :cond_3

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v4

    const/16 v8, 0x9

    if-eq v4, v8, :cond_3

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 200
    :cond_2
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 201
    sput v6, Lcn/powervision/upgrade/manager/NewFirmWareManager;->CONNECT_TYPE:I

    goto :goto_3

    .line 198
    :cond_3
    :goto_2
    sput v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->CONNECT_TYPE:I

    :cond_4
    :goto_3
    const/4 v4, -0x1

    .line 206
    aget v8, v1, v3

    if-gtz v8, :cond_7

    aget v8, v1, v5

    if-lez v8, :cond_5

    goto :goto_4

    .line 209
    :cond_5
    aget v1, v1, v6

    if-lez v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v6, -0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-nez v2, :cond_8

    const-string v0, "3.2 compareLocalAndDevWithMatch \u9700\u8981\u5f3a\u5236\u4e0b\u8f7d"

    .line 216
    invoke-static {v7, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-boolean v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->val$jump:Z

    invoke-virtual {v0, v1, v6}, Lcom/powervision/home/ui/adapter/CommonPresenter;->download(ZI)V

    goto :goto_6

    :cond_8
    if-ne v2, v3, :cond_9

    const-string v0, "3.2 compareLocalAndDevWithMatch \u4e0d\u9700\u8981\u4e0b\u8f7d\u5f3a\u5236\u5347\u7ea7"

    .line 221
    invoke-static {v7, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0, v6}, Lcom/powervision/home/ui/adapter/CommonPresenter;->update(I)V

    goto :goto_6

    :cond_9
    if-ne v2, v5, :cond_a

    const-string v0, "3.2 compareLocalAndDevWithMatch \u666e\u901a\u4e0b\u8f7d"

    .line 225
    invoke-static {v7, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-boolean v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->val$jump:Z

    invoke-virtual {v0, v1, v6}, Lcom/powervision/home/ui/adapter/CommonPresenter;->download(ZI)V

    goto :goto_6

    :cond_a
    if-ne v2, v0, :cond_b

    const-string v0, "3.2 compareLocalAndDevWithMatch \u666e\u901a\u5347\u7ea7"

    .line 231
    invoke-static {v7, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$4;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0, v6}, Lcom/powervision/home/ui/adapter/CommonPresenter;->update(I)V

    goto :goto_6

    .line 235
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3.2 checkDownLoadOrUpgrade error\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method
