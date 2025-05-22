.class public Lcom/lewis/edit/model/impl/AVEditModel;
.super Ljava/lang/Object;
.source "AVEditModel.java"

# interfaces
.implements Lcom/lewis/edit/model/IAVEditModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/model/impl/AVEditModel$VideoEditProgressListener;
    }
.end annotation


# static fields
.field public static final VIDEO_FINISH_FLAG:Ljava/lang/String; = "1"

.field public static final VIDEO_PROGRESS_FLAG:Ljava/lang/String; = "0"

.field private static final VIDEO_SPLIT_NUM:I = 0x3


# instance fields
.field private mDeleteResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProgressCurrent:I

.field private mVideoProgressSplice:I

.field private mVideoProgressSpliceNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressCurrent:I

    .line 53
    iput v0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSpliceNum:I

    .line 55
    iput v0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSplice:I

    return-void
.end method

.method static synthetic access$100(Lcom/lewis/edit/model/impl/AVEditModel;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSplice:I

    return p0
.end method

.method static synthetic access$200(Lcom/lewis/edit/model/impl/AVEditModel;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressCurrent:I

    return p0
.end method

.method static synthetic access$300(Lcom/lewis/edit/model/impl/AVEditModel;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSpliceNum:I

    return p0
.end method

.method private getAvMergePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 766
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 767
    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0, p2}, Lcom/powervision/base/utils/MediaInfoUtil;->setAudioPath(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v1

    .line 770
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getAudioTime()J

    move-result-wide v3

    const/4 v0, 0x0

    const-string v5, " "

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    cmp-long v9, v3, v1

    if-gez v9, :cond_0

    .line 773
    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v2, v1

    .line 775
    invoke-static {p2, v2}, Lcom/lewis/edit/utils/FileUtil;->getConcatFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-static {p2}, Lcom/lewis/edit/utils/FileUtil;->getOutPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 779
    invoke-virtual {p0, v3}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    .line 780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "edit a\u2014merge audio-times = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " concatFile-length = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " audio-suffix = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/lewis/edit/utils/FileUtil;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v8, [Ljava/lang/Object;

    .line 780
    invoke-static {p2, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v8

    aput-object v3, v2, v6

    const-string v1, "ffmpeg -y -f concat -safe 0 -i %s -c:a copy %s"

    invoke-static {p2, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit a\u2014merge f-cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 788
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    move-object p2, v3

    .line 793
    :cond_0
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v1

    .line 795
    invoke-virtual {p0, v1}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    .line 796
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 799
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v8

    aput-object p2, v4, v6

    aput-object v2, v4, v7

    const/4 p1, 0x3

    aput-object v1, v4, p1

    const-string p1, "ffmpeg -y -i %s -i %s -vcodec copy -acodec copy -t %s %s"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 800
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit av-merge f-cmd = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 804
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    return-object v1
.end method

.method private getRemoveVideoPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 737
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->isHaveAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-virtual {p0, v0}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    .line 744
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "ffmpeg -y -i %s -vcodec copy -an %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit remove-audio f-cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    .line 748
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 749
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method private getVideoMergePath(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 594
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 596
    invoke-static {p1}, Lcom/lewis/edit/utils/FileUtil;->getConcatFile(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 598
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {p0, v0}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    .line 603
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object v0, v4, v1

    const-string p1, "ffmpeg -y -f concat -safe 0 -i %s -c copy %s"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit v-merge f-cmd = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    .line 606
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 608
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    goto :goto_0

    .line 610
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$getCropVideoThumb$0(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    .line 99
    div-long/2addr v1, v3

    long-to-int p0, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 101
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    mul-int v2, v1, p0

    int-to-long v2, v2

    .line 106
    invoke-virtual {v0, v2, v3}, Lcom/powervision/base/utils/MediaInfoUtil;->getThumbAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-static {v2}, Lcom/lewis/edit/utils/ImageUtil;->saveVideoThumb(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    new-instance v2, Lcom/lewis/edit/model/entries/VideoThumb;

    invoke-direct {v2}, Lcom/lewis/edit/model/entries/VideoThumb;-><init>()V

    .line 114
    invoke-virtual {v2, v3}, Lcom/lewis/edit/model/entries/VideoThumb;->setPath(Ljava/lang/String;)V

    int-to-long v3, v1

    .line 115
    invoke-virtual {v2, v3, v4}, Lcom/lewis/edit/model/entries/VideoThumb;->setTime(J)V

    .line 116
    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_2
    :goto_2
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$getPlayFromEndVideo$10(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ".mp4"

    .line 954
    invoke-static {v0}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const-string p0, "ffmpeg -y -i %s -vf reverse -af areverse -preset ultrafast %s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit-reverse-video = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    const-string v1, " "

    .line 960
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 961
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    .line 962
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 963
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$getResourcePath$1(Landroid/util/SparseArray;ILio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lewis/edit/utils/FileUtil;->copyAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-interface {p2, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getRotationVideo$11(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 976
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v2

    .line 978
    invoke-virtual {v2, p0}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v2}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoRotationDegree()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x5a

    if-ne v2, v4, :cond_0

    const-string v2, ".mp4"

    .line 982
    invoke-static {v2}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 985
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    const/4 p0, 0x1

    aput-object v2, v5, p0

    const-string p0, "ffmpeg -y -i %s -vf transpose=2 -c:v copy %s"

    invoke-static {v4, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 986
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "edit-rotation-video = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    const-string v4, " "

    .line 987
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 988
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    move-object p0, v2

    .line 992
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit-rotation-time = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 994
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$getVideoAllTime$3(Ljava/util/List;IILio/reactivex/FlowableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 289
    invoke-static {p0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 290
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long p0, p2

    add-long/2addr v2, p0

    const-wide/16 p0, 0x3e8

    .line 299
    div-long/2addr v2, p0

    long-to-int p0, v2

    .line 301
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 302
    invoke-interface {p3}, Lio/reactivex/FlowableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$getVideoThumbBySecond$8(Ljava/lang/String;Lio/reactivex/FlowableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 850
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 852
    invoke-virtual {v0, p0}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v1

    const/4 p0, 0x0

    const/4 v3, 0x0

    :goto_0
    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-gtz v6, :cond_4

    .line 857
    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 861
    :cond_0
    invoke-virtual {v0, v4, v5}, Lcom/powervision/base/utils/MediaInfoUtil;->getThumbAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    const/16 v6, 0xa0

    const/16 v7, 0x5a

    .line 866
    invoke-static {v4, v5, v6, v7}, Lcom/lewis/edit/utils/FileUtil;->compressBitmap(Landroid/graphics/Bitmap;ZII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 867
    invoke-static {v4}, Lcom/lewis/edit/utils/FileUtil;->bitmap2SeparateFile(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 870
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 872
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 874
    new-instance v4, Lcom/lewis/edit/model/entries/VideoSeparateBean;

    invoke-direct {v4}, Lcom/lewis/edit/model/entries/VideoSeparateBean;-><init>()V

    .line 875
    invoke-virtual {v4, v5}, Lcom/lewis/edit/model/entries/VideoSeparateBean;->setImagePath(Ljava/lang/String;)V

    .line 876
    div-int/lit16 v5, v3, 0x3e8

    invoke-virtual {v4, v5}, Lcom/lewis/edit/model/entries/VideoSeparateBean;->setCurrentTime(I)V

    .line 877
    invoke-virtual {v4, p0}, Lcom/lewis/edit/model/entries/VideoSeparateBean;->setCutFlag(Z)V

    .line 878
    invoke-interface {p1, v4}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit16 v3, v3, 0x3e8

    goto :goto_0

    .line 882
    :cond_4
    :goto_2
    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$getWorkPicFilePath$2(Ljava/lang/String;Lio/reactivex/FlowableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p0}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    const-wide/16 v1, 0x7d0

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/MediaInfoUtil;->getThumbAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/lewis/edit/utils/FileUtil;->bitmap2VideoFrameFile(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    :cond_0
    new-instance v0, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v0}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 263
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 264
    invoke-virtual {v0, p0}, Lcom/powervision/base/model/MediaModel;->setVideoPath(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setVideoThumbnail(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 266
    invoke-virtual {v0, p0}, Lcom/powervision/base/model/MediaModel;->setPlatform(I)V

    const/4 p0, 0x0

    .line 267
    invoke-virtual {v0, p0}, Lcom/powervision/base/model/MediaModel;->setEditType(I)V

    const/4 p0, 0x2

    .line 268
    invoke-virtual {v0, p0}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    .line 269
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/powervision/base/utils/DbHelper;->save(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {p1, v1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$workClipVideo$4(Ljava/lang/String;IILio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    invoke-interface {p3}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".mp4"

    .line 318
    invoke-static {v0}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object v1, v4, p0

    const-string v6, "ffmpeg -y -i %s -r 30 -vcodec libx264 -x264-params keyint=30:scenecut=0 -acodec copy -preset ultrafast %s"

    invoke-static {v2, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "edit-key-f-cmd ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, " "

    .line 322
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    .line 325
    invoke-interface {p3}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    invoke-static {v0}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, p0

    aput-object v1, v6, v3

    const/4 p0, 0x3

    aput-object v0, v6, p0

    const-string p0, "ffmpeg -y -ss %d -t %d -accurate_seek -i %s -vcodec copy -acodec copy -avoid_negative_ts 1 -preset superfast %s"

    invoke-static {v2, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "edit-crop-f-cmd ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 333
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p1

    invoke-virtual {p1, p0, v7}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    .line 334
    invoke-interface {p3, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 337
    :cond_0
    invoke-interface {p3}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$workEditVideo$14(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1085
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1088
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1089
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-static {v1, v2}, Lcom/lewis/edit/utils/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1097
    :cond_2
    :goto_1
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 1099
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$workVideoColorMixing$13(Ljava/lang/String;FFFFFFLio/reactivex/FlowableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1060
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 1063
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    .line 1064
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v2, p1

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v2, p1

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v2, p1

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x6

    aput-object p0, v2, p1

    const/4 p0, 0x7

    aput-object v0, v2, p0

    const-string p0, "ffmpeg -y -i %s -vf eq=brightness=%.2f:contrast=%.2f:saturation=%.2f,hue=H=0:s=%.2f,vignette=%.2f,unsharp=luma_msize_x=7:luma_msize_y=7:luma_amount=%.2f -preset ultrafast %s"

    .line 1063
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "edit-color-mixing = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    const-string p1, " "

    .line 1066
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1067
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    .line 1069
    invoke-interface {p7, v0}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 1071
    invoke-interface {p7}, Lio/reactivex/FlowableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$workVideoCopy$5(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    invoke-static {p0, p1}, Lcom/lewis/edit/utils/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 353
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 355
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$workVideoSeparate$9(Ljava/lang/String;Ljava/util/List;Lio/reactivex/FlowableEmitter;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 896
    invoke-interface/range {p2 .. p2}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".mp4"

    .line 898
    invoke-static {v1}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 900
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    const-string v8, "ffmpeg -y -i %s -r 30 -vcodec libx264 -x264-params keyint=30:scenecut=0 -acodec copy -preset ultrafast %s"

    invoke-static {v3, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    .line 901
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 902
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    .line 905
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 906
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v8

    .line 908
    invoke-virtual {v8, v2}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v8}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v10

    .line 911
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_0
    if-gt v12, v8, :cond_2

    if-nez v12, :cond_0

    new-array v13, v4, [I

    aput v6, v13, v6

    .line 914
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v7

    invoke-virtual {v3, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ne v12, v8, :cond_1

    new-array v13, v4, [I

    add-int/lit8 v14, v12, -0x1

    .line 916
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v6

    const-wide/16 v14, 0x3e8

    div-long v14, v10, v14

    long-to-int v15, v14

    aput v15, v13, v7

    invoke-virtual {v3, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array v13, v4, [I

    add-int/lit8 v14, v12, -0x1

    .line 918
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v6

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v7

    invoke-virtual {v3, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 921
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 922
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v8, v10, :cond_4

    .line 923
    invoke-interface/range {p2 .. p2}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    .line 927
    :cond_3
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 929
    invoke-static {v1}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 932
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aget v14, v10, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v6

    aget v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v7

    aput-object v2, v13, v4

    const/4 v10, 0x3

    aput-object v11, v13, v10

    const-string v10, "ffmpeg -y -ss %d -to %d -accurate_seek -i %s -vcodec copy -acodec copy -avoid_negative_ts 1 -preset superfast %s"

    invoke-static {v12, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 933
    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 934
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v12

    invoke-virtual {v12, v10, v9}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    .line 935
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    move-object/from16 v1, p2

    .line 938
    invoke-interface {v1, v0}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-object/from16 v1, p2

    .line 941
    :goto_4
    invoke-interface/range {p2 .. p2}, Lio/reactivex/FlowableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$workVideoSpeed$12(Ljava/lang/String;FLio/reactivex/FlowableEmitter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1008
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 1009
    invoke-virtual {v0, p0}, Lcom/powervision/base/utils/MediaInfoUtil;->isHaveAudio(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "*PTS"

    const/4 v2, 0x0

    const-string v3, " "

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v0, :cond_0

    .line 1013
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 1015
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v7, [Ljava/lang/Object;

    aput-object p0, v9, v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v5

    aput-object v0, v9, v4

    const-string v1, "ffmpeg -y -i %s -an -r 30 -filter:v setpts=%s %s"

    invoke-static {v8, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    .line 1019
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v1

    .line 1021
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v7, [Ljava/lang/Object;

    aput-object p0, v9, v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v9, v5

    aput-object v1, v9, v4

    const-string p0, "ffmpeg -y -i %s -filter:a atempo=%s -vn %s"

    invoke-static {v8, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1022
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1023
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    .line 1025
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object p0

    .line 1027
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v6

    aput-object v1, v7, v5

    aput-object p0, v7, v4

    const-string v0, "ffmpeg -y -i %s -i %s %s"

    invoke-static {p1, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1028
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1029
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    goto :goto_0

    .line 1032
    :cond_0
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 1034
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v5

    aput-object v0, v7, v4

    const-string p0, "ffmpeg -y -i %s -filter:v setpts=%s %s"

    invoke-static {v8, p0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1035
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1036
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    move-object p0, v0

    .line 1038
    :goto_0
    invoke-interface {p2, p0}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 1040
    invoke-interface {p2}, Lio/reactivex/FlowableEmitter;->onComplete()V

    return-void
.end method

.method private runAwCmdFun(Ljava/lang/String;Z[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            "Lio/reactivex/FlowableEmitter<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, " "

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v0

    new-instance v1, Lcom/lewis/edit/model/impl/AVEditModel$2;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/lewis/edit/model/impl/AVEditModel$2;-><init>(Lcom/lewis/edit/model/impl/AVEditModel;Z[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)V

    invoke-virtual {v0, p1, v1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    return-void
.end method

.method private runVideoCmdFun(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/String;",
            "Lio/reactivex/FlowableEmitter<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 532
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 533
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object v0, v2, p2

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    .line 534
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p2

    if-eqz p3, :cond_0

    new-instance p3, Lcom/lewis/edit/model/impl/AVEditModel$1;

    invoke-direct {p3, p0, p4, p5, p6}, Lcom/lewis/edit/model/impl/AVEditModel$1;-><init>(Lcom/lewis/edit/model/impl/AVEditModel;Z[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p1, p3}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    return-object v0
.end method

.method private workAvRemix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-nez p3, :cond_0

    .line 705
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object p3

    .line 707
    invoke-virtual {p0, p3}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    .line 719
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string p1, "ffmpeg -i %s -i %s -filter_complex [1:a]aloop=loop=-1:size=2e+09[out];[out][0:a]amix=inputs=2:duration=longest:dropout_transition=1[aout] -map 0:v:0 -c:v copy -map [aout] -c:a aac -shortest %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 720
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "edit av-merge f-cmd = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, " "

    .line 723
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 724
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    return-object p3
.end method

.method private workMergeVideoEdit(Ljava/lang/String;Ljava/lang/String;FFZLjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Lio/reactivex/FlowableEmitter<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p8

    .line 633
    invoke-interface/range {p10 .. p10}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_6

    const/4 v4, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    .line 640
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v9

    .line 641
    invoke-virtual {v9, v1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v9}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    if-ne v3, v8, :cond_0

    :goto_0
    move v6, v9

    goto :goto_1

    :cond_0
    if-ne v3, v7, :cond_2

    sub-float v3, v9, v6

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v4

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    .line 654
    :cond_2
    :goto_1
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v3

    .line 656
    invoke-virtual {v0, v3}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    .line 660
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v13, 0x0

    if-nez v9, :cond_3

    if-nez v2, :cond_3

    .line 664
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v1, v9, v13

    aput-object p2, v9, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v9, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v9, v11

    aput-object v3, v9, v10

    const-string v14, "ffmpeg -y -i %s -i %s -filter_complex [0:a]volume=%.2f[out1];[1:a]aloop=loop=-1:size=2e+09,volume=%.2f[out2];[out1][out2]amix=inputs=2:duration=first:dropout_transition=2[aout] -map 0:v:0 -c:v copy -map [aout] -c:a aac -preset ultrafast %s"

    invoke-static {v5, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 665
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "edit-aw-a-cmd = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v9, v14}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v14, 0x6

    const/4 v15, 0x7

    if-eqz v9, :cond_4

    if-eqz v2, :cond_4

    .line 672
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v1, v9, v13

    aput-object p6, v9, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v9, v7

    aput-object p7, v9, v11

    .line 673
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v9, v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v9, v12

    aput-object v3, v9, v14

    const-string v15, "ffmpeg -y -i %s -i %s -filter_complex volume=%.2f[aout];overlay=%s:enable=between(t\\,%.3f\\,%.3f)[vout] -map [vout] -c:v libx264 -keyint_min 30 -g 30 -sc_threshold 0 -map [aout] -c:a aac -preset ultrafast %s"

    .line 672
    invoke-static {v5, v15, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 674
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "edit-aw-w-cmd = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v9, v15}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v2, :cond_5

    .line 682
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v13

    aput-object p2, v9, v8

    aput-object p6, v9, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v10

    aput-object p7, v9, v12

    .line 683
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v14

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v9, v4

    const/16 v1, 0x8

    aput-object v3, v9, v1

    const-string v1, "ffmpeg -y -i %s -i %s -i %s -filter_complex [0:a]volume=%.2f[out1];[1:a]aloop=loop=-1:size=2e+09,volume=%.2f[out2];[out1][out2]amix=inputs=2:duration=first:dropout_transition=2[aout];[0:v][2:v]overlay=%s:enable=between(t\\,%.3f\\,%.3f)[vout] -map [vout] -c:v libx264 -keyint_min 30 -g 30 -sc_threshold 0 -map [aout] -c:a aac -preset ultrafast %s"

    .line 682
    invoke-static {v5, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit-aw-aw-cmd = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v1, p9

    move-object/from16 v4, p10

    .line 687
    invoke-direct {v0, v5, v2, v1, v4}, Lcom/lewis/edit/model/impl/AVEditModel;->runAwCmdFun(Ljava/lang/String;Z[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)V

    move-object v5, v3

    :cond_6
    return-object v5
.end method

.method private workVideoSizeFun(Ljava/util/List;Z[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z[",
            "Ljava/lang/String;",
            "Lio/reactivex/FlowableEmitter<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    const/4 v1, 0x0

    .line 482
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v3

    .line 484
    invoke-virtual {v3, v2}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v3}, Lcom/powervision/base/utils/MediaInfoUtil;->judgeVideoDirection()Z

    move-result v2

    const/4 v4, 0x0

    .line 487
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 488
    invoke-interface/range {p4 .. p4}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 492
    invoke-virtual {v3, v8}, Lcom/powervision/base/utils/MediaInfoUtil;->isHaveAudio(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v9, 0x0

    const-string v7, "ffmpeg -y -i %s -f lavfi -i anullsrc=channel_layout=stereo:sample_rate=44100 -c:v copy -c:a aac -shortest %s"

    move-object v6, p0

    move v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 495
    invoke-direct/range {v6 .. v12}, Lcom/lewis/edit/model/impl/AVEditModel;->runVideoCmdFun(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    const-string v2, "ffmpeg -y -i %s -vf scale=iw*min(1920/iw\\,1080/ih):ih*min(1920/iw\\,1080/ih),pad=1920:1080:(1920-iw)/2:(1080-ih)/2:black -r 30 -c:v libx264 -keyint_min 30 -g 30 -sc_threshold 0 -c:a aac -ac 1 -ar 44100 -preset ultrafast %s"

    goto :goto_2

    :cond_3
    const-string v2, "ffmpeg -y -i %s -vf scale=iw*min(1080/iw\\,1920/ih):ih*min(1080/iw\\,1920/ih),pad=1080:1920:(1080-iw)/2:(1920-ih)/2:black -r 30 -c:v libx264 -keyint_min 30 -g 30 -sc_threshold 0 -c:a aac -ac 1 -ar 44100 -preset ultrafast %s"

    .line 508
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 509
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 510
    invoke-interface/range {p4 .. p4}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move-object v11, p0

    .line 513
    iput v1, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressCurrent:I

    .line 514
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v2

    move v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 516
    invoke-direct/range {v3 .. v9}, Lcom/lewis/edit/model/impl/AVEditModel;->runVideoCmdFun(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    move-object v11, p0

    return-object v10
.end method

.method private workWatermark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 819
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 820
    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p4, v4, :cond_0

    .line 825
    div-long/2addr v0, v2

    long-to-int p4, v0

    move v1, p4

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    if-ne p4, v5, :cond_1

    .line 827
    div-long/2addr v0, v2

    const-wide/16 v2, 0x2

    sub-long v2, v0, v2

    long-to-int p4, v2

    long-to-int v1, v0

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    const/4 v1, 0x2

    .line 830
    :goto_0
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 833
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    const/4 p1, 0x3

    .line 834
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x5

    aput-object v0, v3, p1

    const-string p1, "ffmpeg -y -i %s -i %s -filter_complex overlay=%s:enable=between(t\\,%d\\,%d) -preset ultrafast %s"

    .line 833
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 835
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "edit watermark f-cmd = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, " "

    .line 837
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 838
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I

    return-object v0
.end method


# virtual methods
.method public deleteFile()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mDeleteResources:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mDeleteResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mDeleteResources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/lewis/edit/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mDeleteResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public getCropVideoThumb(Ljava/lang/String;)Lio/reactivex/ObservableOnSubscribe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableOnSubscribe<",
            "Lcom/lewis/edit/model/entries/VideoThumb;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$0Ug5ikW_GjFqOzBDECQk-Kk8AzQ;

    invoke-direct {v0, p1}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$0Ug5ikW_GjFqOzBDECQk-Kk8AzQ;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEditFunctionList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_crop:I

    sget v3, Lcom/lewis/edit/R$string;->App_MediaLib_90:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_cut:I

    sget v3, Lcom/lewis/edit/R$string;->App_MediaLib_91:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_toning:I

    sget v3, Lcom/lewis/edit/R$string;->App_MediaLib_98:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_speed:I

    sget v3, Lcom/lewis/edit/R$string;->App_MediaLib_99:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_upside_down:I

    sget v3, Lcom/lewis/edit/R$string;->App_MediaLib_94:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_mute:I

    sget v3, Lcom/lewis/edit/R$string;->App_MediaLib_95:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_copy:I

    sget v3, Lcom/lewis/edit/R$string;->App_MediaLib_96:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_delete:I

    sget v3, Lcom/lewis/edit/R$string;->App_MediaLib_97:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMusicList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_resource_null:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_cheerful1:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_cheerful2:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_dancing1:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_dancing2:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_shoothing1:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_shoothing2:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_movie1:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_movie2:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_vlog1:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_vlog2:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMusicNames()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    const-string v2, "cheerful1.mp3"

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "cheerful2.mp3"

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "dancing1.mp3"

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    const-string v2, "dancing2.mp3"

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v2, "shoothing1.mp3"

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v2, "shoothing2.mp3"

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v2, "movie1.mp3"

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v2, "movie2.mp3"

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9

    const-string v2, "vlog1.mp3"

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa

    const-string v2, "vlog2.mp3"

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getPicList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_resource_null:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_texture_icon1:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_texture_icon2:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_texture_icon3:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_texture_icon4:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPicNames()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    const-string v2, "edit_texture_1.png"

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "edit_texture_2.png"

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "edit_texture_3.png"

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    const-string v2, "edit_texture_4.png"

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getPlayFromEndVideo(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 952
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$JwM3rdeKpHC5AXNuxFqJGvrklAQ;

    invoke-direct {v0, p1}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$JwM3rdeKpHC5AXNuxFqJGvrklAQ;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getResourcePath(Landroid/util/SparseArray;I)Lio/reactivex/ObservableOnSubscribe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I)",
            "Lio/reactivex/ObservableOnSubscribe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$6fCQ09m9a4Q0qrbsXZS1rv-NX-I;

    invoke-direct {v0, p1, p2}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$6fCQ09m9a4Q0qrbsXZS1rv-NX-I;-><init>(Landroid/util/SparseArray;I)V

    return-object v0
.end method

.method public getRotationVideo(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 974
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$F-3TzTZEUTFh8_4clHNj3DutrbI;

    invoke-direct {v0, p1}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$F-3TzTZEUTFh8_4clHNj3DutrbI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getTextList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_resource_null:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_text_icon1:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_text_icon2:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_text_icon3:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Lcom/lewis/edit/model/entries/EditResBean;

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_text_icon4:I

    invoke-direct {v1, v2, v3}, Lcom/lewis/edit/model/entries/EditResBean;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTexturePosition(I)Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    const/high16 v1, 0x41700000    # 15.0f

    if-nez p1, :cond_0

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const-string v3, ":H-h-"

    if-ne p1, v2, :cond_1

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const-string v4, "W-w-"

    if-ne p1, v2, :cond_2

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "W/2-w/2:H/2-h/2"

    :goto_0
    return-object p1
.end method

.method public getVideoAllTime(Ljava/util/List;II)Lio/reactivex/FlowableOnSubscribe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Lio/reactivex/FlowableOnSubscribe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$BV-SdIfV2LRo1NBLQiZ_06B-CDk;

    invoke-direct {v0, p1, p2, p3}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$BV-SdIfV2LRo1NBLQiZ_06B-CDk;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public getVideoThumbBySecond(Ljava/lang/String;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lcom/lewis/edit/model/entries/VideoSeparateBean;",
            ">;"
        }
    .end annotation

    .line 849
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$D0TS9_k1bv9pqNrMkn9B9kyTZ9k;

    invoke-direct {v0, p1}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$D0TS9_k1bv9pqNrMkn9B9kyTZ9k;-><init>(Ljava/lang/String;)V

    sget-object p1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getWorkPicFilePath(Ljava/lang/String;)Lio/reactivex/FlowableOnSubscribe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/FlowableOnSubscribe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$14FrpbDc1TTUzMKJ4y75QIs5p94;

    invoke-direct {v0, p1}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$14FrpbDc1TTUzMKJ4y75QIs5p94;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic lambda$workAllVideoEdit$6$AVEditModel(Ljava/util/List;ZLjava/lang/String;Lcom/lewis/edit/model/entries/VideoEditInfo;FFLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lio/reactivex/FlowableEmitter;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v5, p2

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit-size-time-1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iput v10, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressCurrent:I

    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    .line 385
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSpliceNum:I

    const/16 v16, 0x1

    if-eqz v5, :cond_0

    const/16 v1, 0x32

    .line 388
    div-int/2addr v1, v0

    iput v1, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSplice:I

    :goto_0
    move-object/from16 v0, p1

    goto :goto_1

    .line 390
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    iget v0, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSpliceNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSpliceNum:I

    :cond_1
    const/16 v0, 0x64

    .line 393
    iget v1, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSpliceNum:I

    div-int/2addr v0, v1

    iput v0, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressSplice:I

    goto :goto_0

    .line 397
    :goto_1
    invoke-direct {v11, v0, v5, v8, v13}, Lcom/lewis/edit/model/impl/AVEditModel;->workVideoSizeFun(Ljava/util/List;Z[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)Ljava/util/List;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit-size-time-2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " gap = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v14

    const-wide/16 v17, 0x3e8

    div-long v2, v2, v17

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    invoke-virtual/range {p4 .. p4}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isHaveDefaultLogo()Z

    move-result v19

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, ""

    if-eqz v19, :cond_2

    .line 407
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 409
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v0

    .line 414
    :goto_2
    invoke-interface/range {p11 .. p11}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 415
    invoke-direct {v11, v1}, Lcom/lewis/edit/model/impl/AVEditModel;->getVideoMergePath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit-size-time-3 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v14

    div-long v2, v2, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v13, v6

    move-object v12, v7

    const/4 v11, 0x0

    goto :goto_4

    .line 423
    :cond_5
    :goto_3
    iget v0, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v11, Lcom/lewis/edit/model/impl/AVEditModel;->mVideoProgressCurrent:I

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p2

    move-object v13, v6

    move-object/from16 v6, p7

    move-object v12, v7

    move-object/from16 v7, p8

    move-object/from16 v20, v8

    move/from16 v8, p9

    move-object/from16 v9, v20

    const/4 v11, 0x0

    move-object/from16 v10, p11

    .line 424
    invoke-direct/range {v0 .. v10}, Lcom/lewis/edit/model/impl/AVEditModel;->workMergeVideoEdit(Ljava/lang/String;Ljava/lang/String;FFZLjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)Ljava/lang/String;

    move-result-object v1

    .line 430
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit-size-time-4 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v14

    div-long v2, v2, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    invoke-interface/range {p11 .. p11}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v19, :cond_6

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 437
    invoke-direct {v2, v0}, Lcom/lewis/edit/model/impl/AVEditModel;->getVideoMergePath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p10

    move-object v5, v12

    .line 438
    invoke-static {v0, v4}, Lcom/lewis/edit/utils/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :cond_6
    move-object/from16 v2, p0

    move-object/from16 v4, p10

    move-object v5, v12

    const/4 v3, 0x0

    .line 440
    invoke-static {v1, v4}, Lcom/lewis/edit/utils/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 443
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit-size-time-5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v14

    div-long v5, v5, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    aput-object v4, v0, v16

    move-object/from16 v1, p11

    .line 446
    invoke-interface {v1, v0}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 448
    invoke-interface/range {p11 .. p11}, Lio/reactivex/FlowableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic lambda$workLogoMerge$7$AVEditModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-direct {p0, v0}, Lcom/lewis/edit/model/impl/AVEditModel;->getVideoMergePath(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 467
    invoke-static {p1, p3}, Lcom/lewis/edit/utils/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 469
    invoke-interface {p4, p3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 471
    invoke-interface {p4}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public setDeleteResources(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mDeleteResources:Ljava/util/List;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mDeleteResources:Ljava/util/List;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/model/impl/AVEditModel;->mDeleteResources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public workAllVideoEdit(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;FFZLjava/lang/String;Ljava/lang/String;ILcom/lewis/edit/model/entries/VideoEditInfo;)Lio/reactivex/Flowable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "FFZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/lewis/edit/model/entries/VideoEditInfo;",
            ")",
            "Lio/reactivex/Flowable<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v12, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p10

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;-><init>(Lcom/lewis/edit/model/impl/AVEditModel;Ljava/util/List;ZLjava/lang/String;Lcom/lewis/edit/model/entries/VideoEditInfo;FFLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-static {v12, v0}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public workClipVideo(Ljava/lang/String;II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 315
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$mfKoIro_HDW7Im21DOGoTe4xN4Q;

    invoke-direct {v0, p1, p2, p3}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$mfKoIro_HDW7Im21DOGoTe4xN4Q;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public workEditVideo(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1082
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$G3Yp2LaLwwrlwHQia0UnZJMZ51o;

    invoke-direct {v0, p1}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$G3Yp2LaLwwrlwHQia0UnZJMZ51o;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public workLogoMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 462
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;-><init>(Lcom/lewis/edit/model/impl/AVEditModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public workVideoColorMixing(Ljava/lang/String;FFFFFF)Lio/reactivex/Flowable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFFFFF)",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1059
    new-instance v8, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$wwPNl5wrto1uS3JZEzPKee1E3ag;

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$wwPNl5wrto1uS3JZEzPKee1E3ag;-><init>(Ljava/lang/String;FFFFFF)V

    sget-object v0, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-static {v8, v0}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public workVideoCopy(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$a9oDcAGjIm41aA4-fRGDkJlwGJQ;

    invoke-direct {v0, p1, p2}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$a9oDcAGjIm41aA4-fRGDkJlwGJQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public workVideoSeparate(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 895
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$Qa0UHnpVpOX286eY5uZHnFRwnQw;

    invoke-direct {v0, p1, p2}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$Qa0UHnpVpOX286eY5uZHnFRwnQw;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sget-object p1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public workVideoSpeed(Ljava/lang/String;F)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1007
    new-instance v0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$_hTiy2s23UI323qE8GaCmR42SNI;

    invoke-direct {v0, p1, p2}, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$_hTiy2s23UI323qE8GaCmR42SNI;-><init>(Ljava/lang/String;F)V

    sget-object p1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
