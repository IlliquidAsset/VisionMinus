.class abstract Lcom/lewis/edit/model/impl/AVEditModel$VideoEditProgressListener;
.super Ljava/lang/Object;
.source "AVEditModel.java"

# interfaces
.implements Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/model/impl/AVEditModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VideoEditProgressListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewis/edit/model/impl/AVEditModel$1;)V
    .locals 0

    .line 1106
    invoke-direct {p0}, Lcom/lewis/edit/model/impl/AVEditModel$VideoEditProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 1

    const/16 v0, 0x64

    .line 1109
    invoke-virtual {p0, v0}, Lcom/lewis/edit/model/impl/AVEditModel$VideoEditProgressListener;->onProgress(I)V

    return-void
.end method

.method abstract onProgress(I)V
.end method

.method public onProgress(IJ)V
    .locals 0

    if-ltz p1, :cond_0

    const/16 p2, 0x64

    if-ge p1, p2, :cond_0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/lewis/edit/model/impl/AVEditModel$VideoEditProgressListener;->onProgress(I)V

    :cond_0
    return-void
.end method
