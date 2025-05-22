.class Lcom/appunite/ffmpeg/FFmpegPlayer$2;
.super Ljava/lang/Object;
.source "FFmpegPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/ffmpeg/FFmpegPlayer;
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

    .line 160
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$2;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$2;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$102(Lcom/appunite/ffmpeg/FFmpegPlayer;J)J

    .line 164
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 165
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$2;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$2;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget v0, v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    if-nez v0, :cond_1

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$2;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-static {v3}, Lcom/appunite/ffmpeg/FFmpegPlayer;->access$000(Lcom/appunite/ffmpeg/FFmpegPlayer;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v8}, Lcom/appunite/ffmpeg/FFmpegPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;III)V

    :cond_1
    return-void
.end method
