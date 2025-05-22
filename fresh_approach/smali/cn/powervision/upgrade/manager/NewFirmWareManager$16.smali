.class Lcn/powervision/upgrade/manager/NewFirmWareManager$16;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->onAp03Connected()V
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

    .line 2979
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$16;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 2983
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2985
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "lzqFirm"

    const-string v1, "\u6ca1\u83b7\u53d6\u5230 \u91cd\u65b0\u83b7\u53d6\u4e00\u6b21"

    .line 2987
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$16;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDeviceFirmwareVersion()V

    return-void
.end method
