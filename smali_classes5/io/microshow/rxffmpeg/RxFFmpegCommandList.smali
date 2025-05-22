.class public Lio/microshow/rxffmpeg/RxFFmpegCommandList;
.super Ljava/util/ArrayList;
.source "RxFFmpegCommandList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "ffmpeg"

    .line 13
    invoke-virtual {p0, v0}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->add(Ljava/lang/Object;)Z

    const-string v0, "-y"

    .line 14
    invoke-virtual {p0, v0}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Lio/microshow/rxffmpeg/RxFFmpegCommandList;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()[Ljava/lang/String;
    .locals 3

    .line 30
    invoke-virtual {p0}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 32
    invoke-virtual {p0, v1}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public clearCommands()V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lio/microshow/rxffmpeg/RxFFmpegCommandList;->clear()V

    return-void
.end method
