.class public Lcom/powervision/handheld/utils/MediaRecordManager;
.super Ljava/lang/Object;
.source "MediaRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/utils/MediaRecordManager$MediaRecordInter;
    }
.end annotation


# static fields
.field public static final MAX_LENGTH:I = 0x927c0


# instance fields
.field private BASE:I

.field private SPACE:I

.field private final TAG:Ljava/lang/String;

.field private endTime:J

.field private filePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mUpdateMicStatusTimer:Ljava/lang/Runnable;

.field private mediaRecordInter:Lcom/powervision/handheld/utils/MediaRecordManager$MediaRecordInter;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MediaRecord"

    .line 12
    iput-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/powervision/handheld/utils/MediaRecordManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/utils/MediaRecordManager$1;-><init>(Lcom/powervision/handheld/utils/MediaRecordManager;)V

    iput-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mUpdateMicStatusTimer:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 101
    iput v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->BASE:I

    const/16 v0, 0x64

    .line 102
    iput v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->SPACE:I

    const-string v0, "/dev/null"

    .line 18
    iput-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MediaRecord"

    .line 12
    iput-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/powervision/handheld/utils/MediaRecordManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/utils/MediaRecordManager$1;-><init>(Lcom/powervision/handheld/utils/MediaRecordManager;)V

    iput-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mUpdateMicStatusTimer:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 101
    iput v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->BASE:I

    const/16 v0, 0x64

    .line 102
    iput v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->SPACE:I

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->filePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/utils/MediaRecordManager;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/powervision/handheld/utils/MediaRecordManager;->updateMicStatus()V

    return-void
.end method

.method private updateMicStatus()V
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->BASE:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 109
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5206\u8d1d\u503c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mediaRecordInter:Lcom/powervision/handheld/utils/MediaRecordManager$MediaRecordInter;

    double-to-int v1, v2

    invoke-interface {v0, v1}, Lcom/powervision/handheld/utils/MediaRecordManager$MediaRecordInter;->onRecordDate(I)V

    .line 112
    iget-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mUpdateMicStatusTimer:Ljava/lang/Runnable;

    iget v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->SPACE:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public setMediaRecordInter(Lcom/powervision/handheld/utils/MediaRecordManager$MediaRecordInter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mediaRecordInter:Lcom/powervision/handheld/utils/MediaRecordManager$MediaRecordInter;

    return-void
.end method

.method public startRecord()V
    .locals 6

    const-string v0, "call startAmr(File mRecAudioFile) failed!"

    const-string v1, "MediaRecord"

    .line 38
    iget-object v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 42
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 44
    iget-object v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 49
    iget-object v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 52
    iget-object v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0x927c0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 54
    iget-object v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 56
    iget-object v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->startTime:J

    .line 60
    invoke-direct {p0}, Lcom/powervision/handheld/utils/MediaRecordManager;->updateMicStatus()V

    const-string v2, "ACTION_START"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->startTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stopRecord()J
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->endTime:J

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_END"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 84
    iget-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 85
    iget-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->endTime:J

    iget-wide v3, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_LENGTH"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-wide v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->endTime:J

    iget-wide v2, p0, Lcom/powervision/handheld/utils/MediaRecordManager;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
