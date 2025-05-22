.class Lcom/powervision/livestreaming/LiveStreaming$2;
.super Ljava/lang/Object;
.source "LiveStreaming.java"

# interfaces
.implements Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/livestreaming/LiveStreaming;->prepare()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/livestreaming/LiveStreaming;


# direct methods
.method constructor <init>(Lcom/powervision/livestreaming/LiveStreaming;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/powervision/livestreaming/LiveStreaming$2;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$2;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$400(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$2;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$400(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->feed(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V

    :cond_0
    return-void
.end method
