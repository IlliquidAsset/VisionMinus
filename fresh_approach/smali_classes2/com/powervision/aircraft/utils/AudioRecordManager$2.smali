.class Lcom/powervision/aircraft/utils/AudioRecordManager$2;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/utils/AudioRecordManager;->stopRecord()V
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

    .line 136
    iput-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$600(Lcom/powervision/aircraft/utils/AudioRecordManager;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;->stopRecording()V

    .line 141
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$600(Lcom/powervision/aircraft/utils/AudioRecordManager;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;->join()V

    .line 142
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$602(Lcom/powervision/aircraft/utils/AudioRecordManager;Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;

    .line 144
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$700(Lcom/powervision/aircraft/utils/AudioRecordManager;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->stopEncording()V

    .line 145
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$700(Lcom/powervision/aircraft/utils/AudioRecordManager;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->join()V

    .line 146
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$702(Lcom/powervision/aircraft/utils/AudioRecordManager;Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;

    .line 147
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$800(Lcom/powervision/aircraft/utils/AudioRecordManager;)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$100(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    .line 150
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/powervision/opensource/JniPCMDenoiseNative;->deinitDeNoise()V

    .line 156
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$100(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$2;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    iget-object v0, v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
