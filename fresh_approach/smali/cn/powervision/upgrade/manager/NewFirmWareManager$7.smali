.class Lcn/powervision/upgrade/manager/NewFirmWareManager$7;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;I)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$7;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iput p2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$7;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 961
    sget-boolean v0, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x37

    .line 963
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 965
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 971
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$7;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$7;->val$type:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onGetMcuVersion(Ljava/lang/String;)V

    return-void
.end method
