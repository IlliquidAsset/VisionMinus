.class Lcn/powervision/upgrade/manager/NewFirmWareManager$18;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->onDl01Connected()V
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

    .line 3015
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$18;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0xc8

    .line 3019
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3021
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "lzqFirm"

    const-string v1, "\u8bf7\u6c42dl01\u7248\u672c"

    .line 3023
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    const-string v2, "20"

    .line 3024
    invoke-static {v0, v2, v1}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method
