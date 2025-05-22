.class Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;
.super Landroid/os/AsyncTask;
.source "FFmpegPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/ffmpeg/FFmpegPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDataSourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final player:Lcom/appunite/ffmpeg/FFmpegPlayer;

.field final synthetic this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;


# direct methods
.method public constructor <init>(Lcom/appunite/ffmpeg/FFmpegPlayer;Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    return-void
.end method

.method static synthetic access$1100(Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;)Lcom/appunite/ffmpeg/FFmpegPlayer;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;
    .locals 8

    const/4 v0, 0x0

    .line 214
    aget-object v0, p1, v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect PathUrl:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 218
    aget-object v1, p1, v0

    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    const/4 v1, 0x2

    .line 219
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v4, 0x3

    .line 220
    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x4

    .line 221
    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/Integer;

    const/4 v5, -0x1

    if-nez v1, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v6, v1

    :goto_0
    if-nez v4, :cond_1

    const/4 v7, -0x1

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v7, v1

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_2

    .line 225
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 226
    :goto_2
    iget-object v1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    move v4, v6

    move v5, v7

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$500(Lcom/appunite/ffmpeg/FFmpegPlayer;Ljava/lang/String;Ljava/util/Map;III)I

    move-result p1

    .line 227
    new-instance v1, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;

    iget-object v2, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer;Lcom/appunite/ffmpeg/FFmpegPlayer$1;)V

    if-gez p1, :cond_4

    .line 229
    invoke-static {}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground: error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v2, Lcom/appunite/ffmpeg/FFmpegError;

    invoke-direct {v2, p1}, Lcom/appunite/ffmpeg/FFmpegError;-><init>(I)V

    iput-object v2, v1, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;->error:Lcom/appunite/ffmpeg/FFmpegError;

    .line 231
    iput-object v3, v1, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;->streams:[Lcom/appunite/ffmpeg/FFmpegStreamInfo;

    .line 232
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget p1, p1, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget p1, p1, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    if-nez p1, :cond_6

    .line 233
    :cond_3
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {p1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$800(Lcom/appunite/ffmpeg/FFmpegPlayer;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$700(Lcom/appunite/ffmpeg/FFmpegPlayer;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 235
    :cond_4
    invoke-static {}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v2, "doInBackground: else "

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget-boolean p1, p1, Lcom/appunite/ffmpeg/FFmpegPlayer;->listenThread:Z

    if-nez p1, :cond_5

    .line 237
    invoke-static {}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v2, "java listenThread start"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;

    invoke-direct {v2, p0}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask$1;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 269
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 270
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iput-boolean v0, p1, Lcom/appunite/ffmpeg/FFmpegPlayer;->listenThread:Z

    .line 272
    :cond_5
    iput-object v3, v1, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;->error:Lcom/appunite/ffmpeg/FFmpegError;

    .line 273
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-virtual {p1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getStreamsInfo()[Lcom/appunite/ffmpeg/FFmpegStreamInfo;

    move-result-object p1

    iput-object p1, v1, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;->streams:[Lcom/appunite/ffmpeg/FFmpegStreamInfo;

    :cond_6
    :goto_3
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->doInBackground([Ljava/lang/Object;)Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    iget-object v1, p1, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;->error:Lcom/appunite/ffmpeg/FFmpegError;

    iget-object p1, p1, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;->streams:[Lcom/appunite/ffmpeg/FFmpegStreamInfo;

    invoke-interface {v0, v1, p1}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFDataSourceLoaded(Lcom/appunite/ffmpeg/FFmpegError;[Lcom/appunite/ffmpeg/FFmpegStreamInfo;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p1, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;

    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->onPostExecute(Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;)V

    return-void
.end method
