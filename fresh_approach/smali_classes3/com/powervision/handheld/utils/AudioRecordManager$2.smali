.class Lcom/powervision/handheld/utils/AudioRecordManager$2;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/utils/AudioRecordManager;->stopRecord()V
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

    .line 132
    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$600(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->stopRecording()V

    .line 137
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$600(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->join()V

    .line 138
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$602(Lcom/powervision/handheld/utils/AudioRecordManager;Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;

    .line 140
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$700(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->stopEncording()V

    .line 141
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$700(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->join()V

    .line 142
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$702(Lcom/powervision/handheld/utils/AudioRecordManager;Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;

    .line 143
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$800(Lcom/powervision/handheld/utils/AudioRecordManager;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$100(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    .line 146
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lcom/powervision/opensource/JniPCMDenoiseNative;->deinitDeNoise()V

    .line 152
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$100(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    iget-object v0, v0, Lcom/powervision/handheld/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672c\u6b21\u5f55\u97f3\u65f6\u957f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/powervision/handheld/utils/AudioRecordManager$2;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v3}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$900(Lcom/powervision/handheld/utils/AudioRecordManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
