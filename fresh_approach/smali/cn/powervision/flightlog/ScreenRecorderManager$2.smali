.class Lcn/powervision/flightlog/ScreenRecorderManager$2;
.super Landroid/media/MediaCodec$Callback;
.source "ScreenRecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/ScreenRecorderManager;->createVideoEncoderAndSurface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ranIntoError:Z

.field final synthetic this$0:Lcn/powervision/flightlog/ScreenRecorderManager;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/ScreenRecorderManager;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$2;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$2;->ranIntoError:Z

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$2;->ranIntoError:Z

    const-string p1, "ScreenRecorderManager"

    const-string v0, "Encoder ran into an error! "

    .line 256
    invoke-static {p1, v0, p2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    iget-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$2;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-static {p1}, Lcn/powervision/flightlog/ScreenRecorderManager;->access$500(Lcn/powervision/flightlog/ScreenRecorderManager;)Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encoder output buffer available: index="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenRecorderManager"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_0
    iget-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$2;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-static {p1, p2, p3}, Lcn/powervision/flightlog/ScreenRecorderManager;->access$400(Lcn/powervision/flightlog/ScreenRecorderManager;ILandroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Muxer encountered an error! "

    .line 247
    invoke-static {v0, p2, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    iget-object p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager$2;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-static {p2}, Lcn/powervision/flightlog/ScreenRecorderManager;->access$500(Lcn/powervision/flightlog/ScreenRecorderManager;)Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 262
    iget-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$2;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-static {p1, p2}, Lcn/powervision/flightlog/ScreenRecorderManager;->access$600(Lcn/powervision/flightlog/ScreenRecorderManager;Landroid/media/MediaFormat;)V

    return-void
.end method
