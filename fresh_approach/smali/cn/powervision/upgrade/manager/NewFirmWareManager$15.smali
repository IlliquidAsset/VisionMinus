.class Lcn/powervision/upgrade/manager/NewFirmWareManager$15;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->updateMatch()V
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

    .line 2955
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$15;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2958
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2959
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/MatchUtil;->clearTheDir(Ljava/lang/String;)V

    .line 2960
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/NewVisionPlus/firmware/ReleaseNote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/powervision/upgrade/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 2961
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SPHelperUtils;->saveFirst(Z)V

    .line 2964
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$15;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updateMatchFromApp()V

    .line 2966
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$15;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getMatchMd5()V

    .line 2968
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$15;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->matchThread:Ljava/lang/Thread;

    return-void
.end method
