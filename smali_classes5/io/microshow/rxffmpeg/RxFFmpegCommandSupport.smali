.class public Lio/microshow/rxffmpeg/RxFFmpegCommandSupport;
.super Ljava/lang/Object;
.source "RxFFmpegCommandSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoxblur()[Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Lio/microshow/rxffmpeg/RxFFmpegCommandList;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;-><init>()V

    const-string v1, "-i"

    .line 11
    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/RxFFmpegCommandList;

    const-string v1, "/storage/emulated/0/1/input.mp4"

    .line 12
    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/RxFFmpegCommandList;

    const-string v1, "-vf"

    .line 13
    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/RxFFmpegCommandList;

    const-string v1, "boxblur=5:1"

    .line 14
    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/RxFFmpegCommandList;

    const-string v1, "-preset"

    .line 15
    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/RxFFmpegCommandList;

    const-string v1, "superfast"

    .line 16
    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/RxFFmpegCommandList;

    const-string v1, "/storage/emulated/0/1/result.mp4"

    .line 17
    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/RxFFmpegCommandList;

    .line 18
    invoke-virtual {v0}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->build()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
