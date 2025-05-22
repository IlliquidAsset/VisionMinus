.class Lcom/powervision/gcs/mina/HandlerEvent$2;
.super Ljava/lang/Object;
.source "HandlerEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/mina/HandlerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/mina/HandlerEvent;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/mina/HandlerEvent;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent$2;->this$0:Lcom/powervision/gcs/mina/HandlerEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 483
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent$2;->this$0:Lcom/powervision/gcs/mina/HandlerEvent;

    iget-wide v0, v0, Lcom/powervision/gcs/mina/HandlerEvent;->lastNum:J

    iget-object v2, p0, Lcom/powervision/gcs/mina/HandlerEvent$2;->this$0:Lcom/powervision/gcs/mina/HandlerEvent;

    iget-wide v2, v2, Lcom/powervision/gcs/mina/HandlerEvent;->num:J

    const-string v4, "lzqSonar"

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    const-string v0, " ----- \u8fde\u63a5\u5931\u8d25"

    .line 485
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 486
    invoke-static {v0}, Lcom/powervision/gcs/usb2/SonarConnectState;->notifyOnSonarConnectStateChangedListeners(Z)V

    const/4 v0, 0x2

    .line 487
    sput v0, Lcom/powervision/gcs/usb2/SonarConnectState;->CONNECTED_STATE:I

    goto :goto_0

    .line 492
    :cond_0
    sget v0, Lcom/powervision/gcs/usb2/SonarConnectState;->CONNECTED_STATE:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const-string v0, " ------ \u8fde\u63a5\u6210\u529f in "

    .line 493
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarConnectState;->setSonarConnected()V

    const/4 v0, 0x1

    .line 495
    invoke-static {v0}, Lcom/powervision/gcs/usb2/SonarConnectState;->notifyOnSonarConnectStateChangedListeners(Z)V

    .line 496
    sput v1, Lcom/powervision/gcs/usb2/SonarConnectState;->CONNECTED_STATE:I

    .line 501
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent$2;->this$0:Lcom/powervision/gcs/mina/HandlerEvent;

    iget-wide v1, v0, Lcom/powervision/gcs/mina/HandlerEvent;->num:J

    iput-wide v1, v0, Lcom/powervision/gcs/mina/HandlerEvent;->lastNum:J

    return-void
.end method
