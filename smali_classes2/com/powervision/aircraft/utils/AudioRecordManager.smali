.class public Lcom/powervision/aircraft/utils/AudioRecordManager;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;,
        Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;,
        Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;,
        Lcom/powervision/aircraft/utils/AudioRecordManager$LazyHolder;
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

.field private filePath:Ljava/lang/String;

.field private final isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isNoiseStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioRecorder:Landroid/media/AudioRecord;

.field private mEncodeThread:Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;

.field private mRecordThread:Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;

.field private final maxBufferSize:I

.field private final mediaCodecSampleRate:I

.field private final minBufferSize:I

.field private volumeListener:Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    sput v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->index:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 36
    iput v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mediaCodecSampleRate:I

    const/16 v0, 0x5622

    .line 37
    iput v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->audioRecordSampleRate:I

    const/16 v0, 0x10

    .line 38
    iput v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->channelConfig:I

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->channelCount:I

    const/4 v1, 0x2

    .line 40
    iput v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->audioFormat:I

    const v1, 0x8000

    .line 41
    iput v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->bitRate:I

    const/16 v1, 0x372

    .line 42
    iput v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->minBufferSize:I

    const/16 v1, 0x44e8

    .line 43
    iput v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->maxBufferSize:I

    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isNoiseStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/NewVisionPlus/Acc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->filePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isNoiseStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/utils/AudioRecordManager;)Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->volumeListener:Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/utils/AudioRecordManager;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->prepare()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/AudioRecord;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$402(Lcom/powervision/aircraft/utils/AudioRecordManager;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/MediaCodec;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$502(Lcom/powervision/aircraft/utils/AudioRecordManager;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/utils/AudioRecordManager;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mRecordThread:Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;

    return-object p0
.end method

.method static synthetic access$602(Lcom/powervision/aircraft/utils/AudioRecordManager;Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mRecordThread:Lcom/powervision/aircraft/utils/AudioRecordManager$AudioRecordThread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/utils/AudioRecordManager;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mEncodeThread:Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;

    return-object p0
.end method

.method static synthetic access$702(Lcom/powervision/aircraft/utils/AudioRecordManager;Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;)Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mEncodeThread:Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/utils/AudioRecordManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->release()V

    return-void
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;
    .locals 1

    .line 67
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager$LazyHolder;->access$000()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v0

    return-object v0
.end method

.method private prepare()Z
    .locals 9

    const/16 v0, 0x5622

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 106
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 109
    new-instance v1, Landroid/media/AudioRecord;

    mul-int/lit8 v8, v0, 0x5

    const/4 v4, 0x1

    const/16 v5, 0x5622

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    .line 110
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 111
    sget-object v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v2, "prepare: create audio record fail!!!"

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 115
    :cond_0
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v4, "mime"

    const-string v5, "audio/mp4a-latm"

    .line 116
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "aac-profile"

    .line 117
    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v2, 0xac44

    const-string v5, "sample-rate"

    .line 118
    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "channel-count"

    .line 119
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v2, 0x8000

    const-string v5, "bitrate"

    .line 120
    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x44e8

    const-string v5, "max-input-size"

    .line 121
    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 124
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v2, v0, v1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return v3

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    sget-object v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v2, "prepare: create audio encoder fail!!!"

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private release()V
    .locals 3

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 171
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 172
    iput-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 179
    :goto_0
    iput-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 175
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 184
    :cond_1
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 186
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 187
    iput-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 190
    :catch_1
    :try_start_5
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 192
    iput-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioEncoder:Landroid/media/MediaCodec;

    goto :goto_3

    .line 177
    :goto_2
    iget-object v2, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 179
    iput-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->mAudioRecorder:Landroid/media/AudioRecord;

    :cond_2
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public getIsOpenRecord()Z
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getLiveStreamAudioMute()Z
    .locals 4

    .line 731
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 732
    sget-object v1, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

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

    .line 201
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLiveStreamAudioMute(Z)V
    .locals 3

    .line 721
    sget-object v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLiveStreamAudioMute: isMute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isLiveStreamAudioMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setOpenRecord(Z)V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isOpenRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setVolumeListener(Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->volumeListener:Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;

    return-void
.end method

.method public startRecord()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 74
    sput v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->index:I

    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/aircraft/utils/AudioRecordManager$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/utils/AudioRecordManager$1;-><init>(Lcom/powervision/aircraft/utils/AudioRecordManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startRecordFrom(I)V
    .locals 3

    .line 672
    sget-object v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

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

    .line 674
    iget-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 676
    sget-object p1, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v1, "startRecordFrom: audio record is running, so no need start record again!!!"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->startRecord()V

    .line 681
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    .line 683
    iget-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 684
    sget-object p1, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v1, "startRecordFrom: live streaming audio is running, so no need start audio again!!!"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 686
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->startRecord()V

    .line 688
    :goto_1
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->setOpenRecord(Z)V

    goto :goto_2

    .line 690
    :cond_3
    sget-object p1, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v0, "startRecordFrom: from type is not corrent!!!"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/aircraft/utils/AudioRecordManager$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/utils/AudioRecordManager$2;-><init>(Lcom/powervision/aircraft/utils/AudioRecordManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopRecordFrom(I)V
    .locals 3

    .line 695
    sget-object v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

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

    .line 697
    invoke-virtual {p0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getIsOpenRecord()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 698
    sget-object p1, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v1, "stopRecordFrom: audio record is running!!! Does not stop audio record!"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->stopRecord()V

    .line 702
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    .line 704
    iget-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager;->isOpenStream:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 705
    sget-object p1, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v1, "stopRecordFrom: live streaming audio is running!!! Does not stop audio record!"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 707
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->stopRecord()V

    .line 709
    :goto_1
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->setOpenRecord(Z)V

    goto :goto_2

    .line 711
    :cond_3
    sget-object p1, Lcom/powervision/aircraft/utils/AudioRecordManager;->TAG:Ljava/lang/String;

    const-string v0, "stopRecordFrom: from type is not corrent!!!"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public timeFor()V
    .locals 7

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 755
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/16 v2, 0x8

    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    const-wide/16 v5, 0xff

    and-long/2addr v5, v0

    .line 758
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->byteValue()B

    move-result v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
