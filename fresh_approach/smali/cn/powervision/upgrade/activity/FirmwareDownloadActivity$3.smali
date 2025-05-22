.class Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;
.super Ljava/lang/Object;
.source "FirmwareDownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->start()V
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

    .line 225
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 230
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmBodyDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "/"

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 232
    :goto_0
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmBodyDownloadUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03_BODY_LOCAL_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v4}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmBodyDownloadUrls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v4}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 239
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u521b\u5efa\u597dAP03\u7684\u6587\u4ef6\u5939"

    invoke-static {v3, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmRemoteDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 249
    :goto_1
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmRemoteDownloadUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03RC_LOCAL_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v4}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmRemoteDownloadUrls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v4}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcn/powervision/upgrade/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 253
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 256
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u521b\u5efa\u597dAP03RC\u7684\u6587\u4ef6\u5939"

    invoke-static {v3, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_3
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmModelDownloadInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    .line 265
    :goto_2
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmBodyDownloadUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03_BODY_LOCAL_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v4}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmBodyDownloadUrls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v4}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 271
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u521b\u5efa\u597dAP03MODEL\u7684\u6587\u4ef6\u5939"

    invoke-static {v3, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 282
    :goto_3
    iget-object v4, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v4}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmModelDownloadInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 283
    iget-object v4, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v4}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmModelDownloadInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    .line 284
    invoke-virtual {v4}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".0.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 285
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u8981\u4e0b\u8f7d\u7684model\u6709\u57fa"

    invoke-static {v3, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03_BODY_LOCAL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmModelDownloadInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v1}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8981\u4e0b\u8f7d\u7684model\u6709\u57fa \u5220\u9664\u4e4b\u524d\u7684\u6587\u4ef6"

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/powervision/upgrade/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 294
    invoke-static {v0}, Lcn/powervision/upgrade/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 299
    :cond_8
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$500(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-virtual {v0}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->setUpConfigList()V

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmBodyDownloadUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmModelDownloadInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmRemoteDownloadUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 304
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u4e0b\u8f7d : bodysize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmBodyDownloadUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " model :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmModelDownloadInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " remoteSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmRemoteDownloadUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-virtual {v1, v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->sort(Ljava/util/ArrayList;)V

    .line 307
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-virtual {v1, v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->saveOnlyConfig(Ljava/util/ArrayList;)V

    .line 308
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$700(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v2}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$600(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->download(Ljava/util/List;J)V

    return-void
.end method
