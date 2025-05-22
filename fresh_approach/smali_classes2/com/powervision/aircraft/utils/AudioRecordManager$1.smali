.class Lcom/powervision/aircraft/utils/AudioRecordManager$1;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/utils/AudioRecordManager;->startRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/utils/AudioRecordManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 79
    invoke-static {}, Lcom/powervision/opensource/JniPCMDenoiseNative;->initDeNoise()V

    .line 80
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$100(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$200(Lcom/powervision/aircraft/utils/AudioRecordManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startRecord: faile!!!"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$400(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$400(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 85
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$402(Lcom/powervision/aircraft/utils/AudioRecordManager;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$500(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$500(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 90
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$502(Lcom/powervision/aircraft/utils/AudioRecordManager;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    :cond_1
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    new-instance v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;

    iget-object v2, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$400(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v4}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$500(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;-><init>(Lcom/powervision/aircraft/utils/AudioRecordManager;Landroid/media/AudioRecord;Landroid/media/MediaCodec;)V

    invoke-static {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$602(Lcom/powervision/aircraft/utils/AudioRecordManager;Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;

    .line 96
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    new-instance v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;

    iget-object v2, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$500(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;-><init>(Lcom/powervision/aircraft/utils/AudioRecordManager;Landroid/media/MediaCodec;)V

    invoke-static {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$702(Lcom/powervision/aircraft/utils/AudioRecordManager;Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$600(Lcom/powervision/aircraft/utils/AudioRecordManager;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;->start()V

    .line 98
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$700(Lcom/powervision/aircraft/utils/AudioRecordManager;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->start()V

    .line 100
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$1;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    iget-object v0, v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
