.class Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;
.super Landroid/os/AsyncTask;
.source "FFmpegPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/ffmpeg/FFmpegPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final player:Lcom/appunite/ffmpeg/FFmpegPlayer;


# direct methods
.method public constructor <init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 182
    invoke-static {}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StopTask doInBackground: "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {p1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$300(Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 189
    invoke-static {}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StopTask onPostExecute: "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {p1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {p1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFStop()V

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;->player:Lcom/appunite/ffmpeg/FFmpegPlayer;

    const/4 v0, 0x2

    iput v0, p1, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    return-void
.end method
