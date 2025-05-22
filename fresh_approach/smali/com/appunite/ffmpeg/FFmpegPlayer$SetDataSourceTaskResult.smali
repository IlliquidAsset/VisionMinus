.class Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;
.super Ljava/lang/Object;
.source "FFmpegPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/ffmpeg/FFmpegPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDataSourceTaskResult"
.end annotation


# instance fields
.field error:Lcom/appunite/ffmpeg/FFmpegError;

.field streams:[Lcom/appunite/ffmpeg/FFmpegStreamInfo;

.field final synthetic this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;


# direct methods
.method private constructor <init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;->this$0:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appunite/ffmpeg/FFmpegPlayer;Lcom/appunite/ffmpeg/FFmpegPlayer$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    return-void
.end method
