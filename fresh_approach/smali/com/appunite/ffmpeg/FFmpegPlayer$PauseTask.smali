.class Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;
.super Landroid/os/AsyncTask;
.source "FFmpegPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/ffmpeg/FFmpegPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PauseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/appunite/ffmpeg/NotPlayingException;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;


# direct methods
.method public constructor <init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 0

    .line 317
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/appunite/ffmpeg/NotPlayingException;
    .locals 0

    .line 324
    :try_start_0
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {p1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$1300(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    :try_end_0
    .catch Lcom/appunite/ffmpeg/NotPlayingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 312
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;->doInBackground([Ljava/lang/Void;)Lcom/appunite/ffmpeg/NotPlayingException;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/appunite/ffmpeg/NotPlayingException;)V
    .locals 4

    .line 333
    invoke-static {}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PauseTask onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFPause(Lcom/appunite/ffmpeg/NotPlayingException;)V

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iput v2, p1, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 312
    check-cast p1, Lcom/appunite/ffmpeg/NotPlayingException;

    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;->onPostExecute(Lcom/appunite/ffmpeg/NotPlayingException;)V

    return-void
.end method
