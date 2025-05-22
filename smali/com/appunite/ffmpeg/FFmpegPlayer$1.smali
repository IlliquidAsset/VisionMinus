.class Lcom/appunite/ffmpeg/FFmpegPlayer$1;
.super Landroid/os/Handler;
.source "FFmpegPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/ffmpeg/FFmpegPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;


# direct methods
.method constructor <init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$1;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 106
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$1;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$000(Lcom/appunite/ffmpeg/FFmpegPlayer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual/range {v0 .. v5}, Lcom/appunite/ffmpeg/FFmpegPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;III)V

    :goto_0
    return-void
.end method
