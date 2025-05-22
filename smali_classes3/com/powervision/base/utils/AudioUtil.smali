.class public Lcom/powervision/base/utils/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/AudioUtil$AudioHandler;,
        Lcom/powervision/base/utils/AudioUtil$SoundType;
    }
.end annotation


# instance fields
.field private Tag:Ljava/lang/String;

.field private complete:Z

.field private context:Landroid/content/Context;

.field gson:Lcom/google/gson/Gson;

.field private handler:Lcom/powervision/base/utils/AudioUtil$AudioHandler;

.field public initFlag:Z

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

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/powervision/base/utils/AudioUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/powervision/base/utils/AudioUtil;->soundID:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    iput v1, p0, Lcom/powervision/base/utils/AudioUtil;->leftVolume:F

    .line 41
    iput v1, p0, Lcom/powervision/base/utils/AudioUtil;->rightVolume:F

    .line 45
    iput v0, p0, Lcom/powervision/base/utils/AudioUtil;->priority:I

    .line 49
    iput v0, p0, Lcom/powervision/base/utils/AudioUtil;->loop:I

    .line 53
    iput v1, p0, Lcom/powervision/base/utils/AudioUtil;->rate:F

    .line 55
    iput-boolean v0, p0, Lcom/powervision/base/utils/AudioUtil;->complete:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->resIds:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/powervision/base/utils/AudioUtil;->initFlag:Z

    .line 210
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/powervision/base/utils/AudioUtil$2;

    invoke-direct {v2, p0}, Lcom/powervision/base/utils/AudioUtil$2;-><init>(Lcom/powervision/base/utils/AudioUtil;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/powervision/base/utils/AudioUtil;->thread:Ljava/lang/Thread;

    .line 221
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/powervision/base/utils/AudioUtil;->gson:Lcom/google/gson/Gson;

    .line 69
    iput-object p1, p0, Lcom/powervision/base/utils/AudioUtil;->context:Landroid/content/Context;

    .line 70
    new-instance p1, Lcom/powervision/base/utils/AudioUtil$AudioHandler;

    invoke-direct {p1, p0}, Lcom/powervision/base/utils/AudioUtil$AudioHandler;-><init>(Lcom/powervision/base/utils/AudioUtil;)V

    iput-object p1, p0, Lcom/powervision/base/utils/AudioUtil;->handler:Lcom/powervision/base/utils/AudioUtil$AudioHandler;

    .line 71
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/16 v3, 0x15

    if-le p1, v3, :cond_0

    .line 72
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 73
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 75
    new-instance v3, Landroid/media/SoundPool$Builder;

    invoke-direct {v3}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 76
    invoke-virtual {v3, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Landroid/media/SoundPool;

    const/16 v3, 0x64

    invoke-direct {p1, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/powervision/base/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    .line 81
    :goto_0
    sget p1, Lcom/powervision/base/R$raw;->camera_take_photo:I

    invoke-virtual {p0, v0, p1}, Lcom/powervision/base/utils/AudioUtil;->addAudioFile(II)V

    const/4 p1, 0x2

    .line 82
    sget v0, Lcom/powervision/base/R$raw;->camera_record_start:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/base/utils/AudioUtil;->addAudioFile(II)V

    .line 83
    sget p1, Lcom/powervision/base/R$raw;->camera_record_end:I

    invoke-virtual {p0, v1, p1}, Lcom/powervision/base/utils/AudioUtil;->addAudioFile(II)V

    const/4 p1, 0x4

    .line 84
    sget v0, Lcom/powervision/base/R$raw;->setting_sucess:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/base/utils/AudioUtil;->addAudioFile(II)V

    .line 85
    sget p1, Lcom/powervision/base/R$raw;->warning:I

    invoke-virtual {p0, v2, p1}, Lcom/powervision/base/utils/AudioUtil;->addAudioFile(II)V

    const/4 p1, 0x6

    .line 86
    sget v0, Lcom/powervision/base/R$raw;->back:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/base/utils/AudioUtil;->addAudioFile(II)V

    .line 100
    iget-object p1, p0, Lcom/powervision/base/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    new-instance v0, Lcom/powervision/base/utils/AudioUtil$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/utils/AudioUtil$1;-><init>(Lcom/powervision/base/utils/AudioUtil;)V

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/base/utils/AudioUtil;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/powervision/base/utils/AudioUtil;->complete:Z

    return p1
.end method


# virtual methods
.method public addAudioFile(II)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->resIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/base/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/powervision/base/utils/AudioUtil;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addInPool(I)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-boolean p1, p0, Lcom/powervision/base/utils/AudioUtil;->initFlag:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/powervision/base/utils/AudioUtil;->initFlag:Z

    .line 174
    iget-object p1, p0, Lcom/powervision/base/utils/AudioUtil;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method getTheSound()V
    .locals 2

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 227
    iget-object v1, p0, Lcom/powervision/base/utils/AudioUtil;->handler:Lcom/powervision/base/utils/AudioUtil$AudioHandler;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/powervision/base/utils/AudioUtil$AudioHandler;->sendEmptyMessage(I)Z

    const-wide/16 v0, 0x12c

    .line 229
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public playAudio(I)V
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    iget v1, p0, Lcom/powervision/base/utils/AudioUtil;->soundID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 123
    iget-boolean v0, p0, Lcom/powervision/base/utils/AudioUtil;->complete:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/powervision/base/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->resIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/powervision/base/utils/AudioUtil;->leftVolume:F

    iget v4, p0, Lcom/powervision/base/utils/AudioUtil;->rightVolume:F

    iget v5, p0, Lcom/powervision/base/utils/AudioUtil;->priority:I

    iget v6, p0, Lcom/powervision/base/utils/AudioUtil;->loop:I

    iget v7, p0, Lcom/powervision/base/utils/AudioUtil;->rate:F

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/powervision/base/utils/AudioUtil;->soundID:I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 142
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public removeTheSond(I)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 183
    iget-object v2, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 184
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLoop(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/powervision/base/utils/AudioUtil;->loop:I

    return-void
.end method

.method public shutTheVoice()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil;->pool:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 2

    .line 134
    iget v0, p0, Lcom/powervision/base/utils/AudioUtil;->soundID:I

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/powervision/base/utils/AudioUtil;->mSoundPoll:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/powervision/base/utils/AudioUtil;->soundID:I

    :cond_0
    return-void
.end method
