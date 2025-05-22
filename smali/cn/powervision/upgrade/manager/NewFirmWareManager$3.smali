.class Lcn/powervision/upgrade/manager/NewFirmWareManager$3;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;
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

    .line 548
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$3;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dl01BSOper(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 553
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcn/powervision/upgrade/manager/NewFirmWareManager$3$1;

    invoke-direct {p2, p0, p3}, Lcn/powervision/upgrade/manager/NewFirmWareManager$3$1;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager$3;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 566
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "lzqFirm"

    const-string p2, "\u83b7\u53d6dl01\u7248\u672c\u53f7\u5931\u8d25"

    .line 569
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$3;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideDl01Update()V

    :cond_1
    :goto_0
    return-void
.end method
