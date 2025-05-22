.class public Lcom/powervision/gcs/utils/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# instance fields
.field private complete:Z

.field private context:Landroid/content/Context;

.field private leftVolume:F

.field private loop:I

.field private mSoundPoll:Landroid/media/SoundPool;

.field pool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I

.field private rate:F

.field resIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rightVolume:F

.field private soundID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->soundID:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    iput v1, p0, Lcom/powervision/gcs/utils/AudioUtil;->leftVolume:F

    .line 31
    iput v1, p0, Lcom/powervision/gcs/utils/AudioUtil;->rightVolume:F

    .line 35
    iput v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->priority:I

    .line 39
    iput v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->loop:I

    .line 43
    iput v1, p0, Lcom/powervision/gcs/utils/AudioUtil;->rate:F

    .line 45
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->complete:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->resIds:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->pool:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/powervision/gcs/utils/AudioUtil;->context:Landroid/content/Context;

    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/16 v2, 0x15

    if-le p1, v2, :cond_0

    .line 59
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 60
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Landroid/media/SoundPool;

    const/16 v2, 0x64

    invoke-direct {p1, v0, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/powervision/gcs/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    :goto_0
    const/4 p1, 0x1

    .line 64
    sget v2, Lcom/powervision/gcs/R$raw;->camera_audio:I

    invoke-virtual {p0, p1, v2}, Lcom/powervision/gcs/utils/AudioUtil;->addAudioFile(II)V

    const/4 p1, 0x2

    .line 65
    sget v2, Lcom/powervision/gcs/R$raw;->record_start:I

    invoke-virtual {p0, p1, v2}, Lcom/powervision/gcs/utils/AudioUtil;->addAudioFile(II)V

    .line 66
    sget p1, Lcom/powervision/gcs/R$raw;->record_end:I

    invoke-virtual {p0, v1, p1}, Lcom/powervision/gcs/utils/AudioUtil;->addAudioFile(II)V

    const/4 p1, 0x4

    .line 67
    sget v1, Lcom/powervision/gcs/R$raw;->obstacle03:I

    invoke-virtual {p0, p1, v1}, Lcom/powervision/gcs/utils/AudioUtil;->addAudioFile(II)V

    .line 69
    sget p1, Lcom/powervision/gcs/R$raw;->alarmablout_depth:I

    invoke-virtual {p0, v0, p1}, Lcom/powervision/gcs/utils/AudioUtil;->addAudioFile(II)V

    const/4 p1, 0x6

    .line 71
    sget v0, Lcom/powervision/gcs/R$raw;->alarmablout_fish:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/utils/AudioUtil;->addAudioFile(II)V

    const/4 p1, 0x7

    .line 73
    sget v0, Lcom/powervision/gcs/R$raw;->alarmablout_depth:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/utils/AudioUtil;->addAudioFile(II)V

    .line 74
    iget-object p1, p0, Lcom/powervision/gcs/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    new-instance v0, Lcom/powervision/gcs/utils/AudioUtil$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/AudioUtil$1;-><init>(Lcom/powervision/gcs/utils/AudioUtil;)V

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/gcs/utils/AudioUtil;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/powervision/gcs/utils/AudioUtil;->complete:Z

    return p1
.end method


# virtual methods
.method public addAudioFile(II)V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->resIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/gcs/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/powervision/gcs/utils/AudioUtil;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public play(I)V
    .locals 8

    .line 94
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->complete:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/powervision/gcs/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->resIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/powervision/gcs/utils/AudioUtil;->leftVolume:F

    iget v4, p0, Lcom/powervision/gcs/utils/AudioUtil;->rightVolume:F

    iget v5, p0, Lcom/powervision/gcs/utils/AudioUtil;->priority:I

    iget v6, p0, Lcom/powervision/gcs/utils/AudioUtil;->loop:I

    iget v7, p0, Lcom/powervision/gcs/utils/AudioUtil;->rate:F

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/utils/AudioUtil;->soundID:I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->pool:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public setLoop(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/powervision/gcs/utils/AudioUtil;->loop:I

    return-void
.end method

.method public stopPlay()V
    .locals 2

    .line 105
    iget v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->soundID:I

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/powervision/gcs/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/powervision/gcs/utils/AudioUtil;->soundID:I

    :cond_0
    return-void
.end method
