.class Lcom/powervision/handheld/utils/AudioRecordManager$1;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/utils/AudioRecordManager;->startRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/utils/AudioRecordManager;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/utils/AudioRecordManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 74
    invoke-static {}, Lcom/powervision/opensource/JniPCMDenoiseNative;->initDeNoise()V

    .line 75
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$100(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$200(Lcom/powervision/handheld/utils/AudioRecordManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startRecord: faile!!!"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$400(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$400(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 80
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$402(Lcom/powervision/handheld/utils/AudioRecordManager;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$500(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$500(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 85
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$502(Lcom/powervision/handheld/utils/AudioRecordManager;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    new-instance v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;

    iget-object v2, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$400(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v4}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$500(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;-><init>(Lcom/powervision/handheld/utils/AudioRecordManager;Landroid/media/AudioRecord;Landroid/media/MediaCodec;)V

    invoke-static {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$602(Lcom/powervision/handheld/utils/AudioRecordManager;Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;

    .line 91
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    new-instance v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;

    iget-object v2, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$500(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;-><init>(Lcom/powervision/handheld/utils/AudioRecordManager;Landroid/media/MediaCodec;)V

    invoke-static {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$702(Lcom/powervision/handheld/utils/AudioRecordManager;Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;

    .line 92
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$600(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->start()V

    .line 93
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$700(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->start()V

    .line 95
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "================== 111111111111"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$1;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    iget-object v0, v0, Lcom/powervision/handheld/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
