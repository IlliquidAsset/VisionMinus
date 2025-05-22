.class Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$1;
.super Ljava/lang/Object;
.source "RESRtmpSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

.field final synthetic val$openR:I


# direct methods
.method constructor <init>(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;I)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$1;->this$0:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    iput p2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$1;->val$openR:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$1;->this$0:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-static {v0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->access$100(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$1;->val$openR:I

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$1;->this$0:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-static {v0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->access$100(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/livestreaming/core/listener/RESConnectionListener;->onOpenConnectionSuccess()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$1;->this$0:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-static {v0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->access$100(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/livestreaming/core/listener/RESConnectionListener;->onOpenConnectionFail()V

    :cond_1
    :goto_0
    return-void
.end method
