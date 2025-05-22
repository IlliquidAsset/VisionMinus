.class public Lcom/powervision/handheld/utils/AudioRecordManager;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;,
        Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;,
        Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;,
        Lcom/powervision/handheld/utils/AudioRecordManager$LazyHolder;
    }
.end annotation


# static fields
.field public static final FROM_LIVE_STREM:I = 0x1

.field public static final FROM_RECORD:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static index:I


# instance fields
.field private final audioFormat:I

.field private final audioRecordSampleRate:I

.field private final bitRate:I

.field private final channelConfig:I

.field private final channelCount:I

.field private final isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isNoiseStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioRecorder:Landroid/media/AudioRecord;

.field private mEncodeThread:Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;

.field private mRecordThread:Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;

.field private final maxBufferSize:I

.field private final mediaCodecSampleRate:I

.field private final minBufferSize:I

.field private startLong:J

.field private volumeListener:Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    sput v0, Lcom/powervision/handheld/utils/AudioRecordManager;->index:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 30
    iput v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mediaCodecSampleRate:I

    const/16 v0, 0x5622

    .line 31
    iput v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->audioRecordSampleRate:I

    const/16 v0, 0x10

    .line 32
    iput v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->channelConfig:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->channelCount:I

    const/4 v1, 0x2

    .line 34
    iput v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->audioFormat:I

    const v1, 0x8000

    .line 35
    iput v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->bitRate:I

    const/16 v1, 0x372

    .line 36
    iput v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->minBufferSize:I

    const/16 v1, 0x44e8

    .line 37
    iput v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->maxBufferSize:I

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isNoiseStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isNoiseStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->volumeListener:Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/handheld/utils/AudioRecordManager;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/powervision/handheld/utils/AudioRecordManager;->prepare()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/AudioRecord;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$402(Lcom/powervision/handheld/utils/AudioRecordManager;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$500(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/MediaCodec;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$502(Lcom/powervision/handheld/utils/AudioRecordManager;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic access$600(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mRecordThread:Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;

    return-object p0
.end method

.method static synthetic access$602(Lcom/powervision/handheld/utils/AudioRecordManager;Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mRecordThread:Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mEncodeThread:Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;

    return-object p0
.end method

.method static synthetic access$702(Lcom/powervision/handheld/utils/AudioRecordManager;Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;)Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mEncodeThread:Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/powervision/handheld/utils/AudioRecordManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/powervision/handheld/utils/AudioRecordManager;->release()V

    return-void
.end method

.method static synthetic access$900(Lcom/powervision/handheld/utils/AudioRecordManager;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->startLong:J

    return-wide v0
.end method

.method public static getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;
    .locals 1

    .line 61
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager$LazyHolder;->access$000()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v0

    return-object v0
.end method

.method private prepare()Z
    .locals 9

    const/16 v0, 0x5622

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 102
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 105
    new-instance v1, Landroid/media/AudioRecord;

    mul-int/lit8 v8, v0, 0x5

    const/4 v4, 0x1

    const/16 v5, 0x5622

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    .line 106
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 107
    sget-object v0, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v2, "prepare: create audio record fail!!!"

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 111
    :cond_0
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v4, "mime"

    const-string v5, "audio/mp4a-latm"

    .line 112
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "aac-profile"

    .line 113
    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v2, 0xac44

    const-string v5, "sample-rate"

    .line 114
    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "channel-count"

    .line 115
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v2, 0x8000

    const-string v5, "bitrate"

    .line 116
    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x44e8

    const-string v5, "max-input-size"

    .line 117
    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 120
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v2, v0, v1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return v3

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    sget-object v0, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v2, "prepare: create audio encoder fail!!!"

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private release()V
    .locals 3

    const/4 v0, 0x0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 168
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 169
    iput-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 176
    :goto_0
    iput-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 172
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 181
    :cond_1
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 183
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 184
    iput-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 187
    :catch_1
    :try_start_5
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 189
    iput-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    goto :goto_3

    .line 174
    :goto_2
    iget-object v2, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 176
    iput-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    :cond_2
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public getIsOpenRecord()Z
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getLiveStreamAudioMute()Z
    .locals 4

    .line 720
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 721
    sget-object v1, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLiveStreamAudioMute: isMute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isStartRecord()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLiveStreamAudioMute(Z)V
    .locals 3

    .line 710
    sget-object v0, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLiveStreamAudioMute: isMute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setOpenRecord(Z)V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setVolumeListener(Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->volumeListener:Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;

    return-void
.end method

.method public startRecord()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 69
    sput v0, Lcom/powervision/handheld/utils/AudioRecordManager;->index:I

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->startLong:J

    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/handheld/utils/AudioRecordManager$1;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/utils/AudioRecordManager$1;-><init>(Lcom/powervision/handheld/utils/AudioRecordManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startRecordFrom(I)V
    .locals 3

    .line 661
    sget-object v0, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordFrom: from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 663
    iget-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 665
    sget-object p1, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v1, "startRecordFrom: audio record is running, so no need start record again!!!"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/utils/AudioRecordManager;->startRecord()V

    .line 670
    :goto_0
    iget-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    .line 672
    iget-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 673
    sget-object p1, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v1, "startRecordFrom: live streaming audio is running, so no need start audio again!!!"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 675
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/handheld/utils/AudioRecordManager;->startRecord()V

    .line 677
    :goto_1
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->setOpenRecord(Z)V

    goto :goto_2

    .line 679
    :cond_3
    sget-object p1, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v0, "startRecordFrom: from type is not corrent!!!"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/handheld/utils/AudioRecordManager$2;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/utils/AudioRecordManager$2;-><init>(Lcom/powervision/handheld/utils/AudioRecordManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopRecordFrom(I)V
    .locals 3

    .line 684
    sget-object v0, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordFrom: from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/powervision/handheld/utils/AudioRecordManager;->getIsOpenRecord()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 687
    sget-object p1, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v1, "stopRecordFrom: audio record is running!!! Does not stop audio record!"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/utils/AudioRecordManager;->stopRecord()V

    .line 691
    :goto_0
    iget-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    .line 693
    iget-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 694
    sget-object p1, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v1, "stopRecordFrom: live streaming audio is running!!! Does not stop audio record!"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 696
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/handheld/utils/AudioRecordManager;->stopRecord()V

    .line 698
    :goto_1
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->setOpenRecord(Z)V

    goto :goto_2

    .line 700
    :cond_3
    sget-object p1, Lcom/powervision/handheld/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v0, "stopRecordFrom: from type is not corrent!!!"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
