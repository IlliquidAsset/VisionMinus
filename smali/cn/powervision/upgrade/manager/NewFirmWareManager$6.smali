.class Lcn/powervision/upgrade/manager/NewFirmWareManager$6;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->onIntegrationUpgradeGetVersionSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;Ljava/lang/String;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$6;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iput-object p2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$6;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 764
    sget-boolean v0, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 766
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 768
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 771
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$6;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$6;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onGetAp03Verion(Ljava/lang/String;)V

    return-void
.end method
