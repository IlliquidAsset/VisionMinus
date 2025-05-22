.class Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;
.super Landroid/os/AsyncTask;
.source "FFmpegPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/ffmpeg/FFmpegPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeekTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Lcom/appunite/ffmpeg/NotPlayingException;",
        ">;"
    }
.end annotation


# instance fields
.field private final player:Lcom/appunite/ffmpeg/FFmpegPlayer;


# direct methods
.method public constructor <init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Lcom/appunite/ffmpeg/NotPlayingException;
    .locals 3

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$1200(Lcom/appunite/ffmpeg/FFmpegPlayer;J)V
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

    .line 285
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;->doInBackground([Ljava/lang/Long;)Lcom/appunite/ffmpeg/NotPlayingException;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/appunite/ffmpeg/NotPlayingException;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFSeeked(Lcom/appunite/ffmpeg/NotPlayingException;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 285
    check-cast p1, Lcom/appunite/ffmpeg/NotPlayingException;

    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;->onPostExecute(Lcom/appunite/ffmpeg/NotPlayingException;)V

    return-void
.end method
