.class Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;
.super Ljava/lang/Object;
.source "FFmpegPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->doInBackground([Ljava/lang/Object;)Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;


# direct methods
.method constructor <init>(Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 241
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$100(Lcom/appunite/ffmpeg/FFmpegPlayer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$100(Lcom/appunite/ffmpeg/FFmpegPlayer;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const v2, 0x44bb8000    # 1500.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->connstatus:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$900(Lcom/appunite/ffmpeg/FFmpegPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$1000(Lcom/appunite/ffmpeg/FFmpegPlayer;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-virtual {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->recordStop()I

    .line 248
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0, v2}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$1002(Lcom/appunite/ffmpeg/FFmpegPlayer;I)I

    .line 249
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->access$1100(Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;)Lcom/appunite/ffmpeg/FFmpegPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->access$1100(Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;)Lcom/appunite/ffmpeg/FFmpegPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFRecordStatus(I)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    const/4 v1, 0x1

    iput v1, v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->connstatus:I

    .line 255
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->access$1100(Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;)Lcom/appunite/ffmpeg/FFmpegPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    iget-object v1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v1, v1, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget v1, v1, Lcom/appunite/ffmpeg/FFmpegPlayer;->connstatus:I

    invoke-interface {v0, v1}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFConnStatus(I)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;->this$1:Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    iget-object v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$102(Lcom/appunite/ffmpeg/FFmpegPlayer;J)J

    :cond_3
    const-wide/16 v0, 0x12c

    .line 261
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 264
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
