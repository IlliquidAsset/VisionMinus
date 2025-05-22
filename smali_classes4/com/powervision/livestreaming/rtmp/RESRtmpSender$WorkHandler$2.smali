.class Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$2;
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


# direct methods
.method constructor <init>(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$2;->this$0:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$2;->this$0:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-static {v0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->access$100(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$2;->this$0:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-static {v0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->access$100(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/livestreaming/core/listener/RESConnectionListener;->onCloseConnection()V

    :cond_0
    return-void
.end method
