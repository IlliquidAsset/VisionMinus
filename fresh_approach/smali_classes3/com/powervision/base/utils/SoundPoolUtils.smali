.class public Lcom/powervision/base/utils/SoundPoolUtils;
.super Ljava/lang/Object;
.source "SoundPoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/SoundPoolUtils$SoundType;
    }
.end annotation


# static fields
.field private static soundID:I

.field private static soundPool:Landroid/media/SoundPool;

.field private static soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;


# instance fields
.field private complete:Z

.field private context:Landroid/content/Context;

.field private currentIndex:I

.field private currentType:I

.field private leftVolume:F

.field private loop:I

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field period:J

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


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->complete:Z

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->resIds:Ljava/util/HashMap;

    .line 36
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->pool:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    iput v1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->leftVolume:F

    .line 44
    iput v1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->rightVolume:F

    .line 48
    iput v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->priority:I

    .line 52
    iput v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->loop:I

    .line 56
    iput v1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->rate:F

    .line 60
    iput v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentIndex:I

    .line 61
    iput v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentType:I

    const-wide/16 v1, 0x320

    .line 139
    iput-wide v1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->period:J

    .line 64
    iput-object p1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->context:Landroid/content/Context;

    .line 66
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/16 v3, 0x15

    if-le p1, v3, :cond_0

    .line 67
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 68
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 70
    new-instance v3, Landroid/media/SoundPool$Builder;

    invoke-direct {v3}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 71
    invoke-virtual {v3, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    sput-object p1, Lcom/powervision/base/utils/SoundPoolUtils;->soundPool:Landroid/media/SoundPool;

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Landroid/media/SoundPool;

    const/16 v3, 0x64

    invoke-direct {p1, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object p1, Lcom/powervision/base/utils/SoundPoolUtils;->soundPool:Landroid/media/SoundPool;

    .line 75
    :goto_0
    sget p1, Lcom/powervision/base/R$raw;->camera_take_photo:I

    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->addAudioFile(III)V

    .line 76
    sget p1, Lcom/powervision/base/R$raw;->camera_record_start:I

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->addAudioFile(III)V

    .line 77
    sget p1, Lcom/powervision/base/R$raw;->camera_record_end:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->addAudioFile(III)V

    const/4 p1, 0x4

    .line 78
    sget v1, Lcom/powervision/base/R$raw;->setting_sucess:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->addAudioFile(III)V

    .line 79
    sget p1, Lcom/powervision/base/R$raw;->warning:I

    invoke-virtual {p0, v2, p1, v4}, Lcom/powervision/base/utils/SoundPoolUtils;->addAudioFile(III)V

    const/4 p1, 0x6

    .line 80
    sget v1, Lcom/powervision/base/R$raw;->back:I

    invoke-virtual {p0, p1, v1, v3}, Lcom/powervision/base/utils/SoundPoolUtils;->addAudioFile(III)V

    const/4 p1, 0x7

    .line 81
    sget v1, Lcom/powervision/base/R$raw;->didi:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->addAudioFile(III)V

    .line 89
    sget-object p1, Lcom/powervision/base/utils/SoundPoolUtils;->soundPool:Landroid/media/SoundPool;

    new-instance v0, Lcom/powervision/base/utils/SoundPoolUtils$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/utils/SoundPoolUtils$1;-><init>(Lcom/powervision/base/utils/SoundPoolUtils;)V

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/base/utils/SoundPoolUtils;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->complete:Z

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/SoundPoolUtils;
    .locals 2

    const-class v0, Lcom/powervision/base/utils/SoundPoolUtils;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/powervision/base/utils/SoundPoolUtils;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    if-nez v1, :cond_1

    .line 102
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    sget-object v1, Lcom/powervision/base/utils/SoundPoolUtils;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/powervision/base/utils/SoundPoolUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/powervision/base/utils/SoundPoolUtils;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    .line 106
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 108
    :cond_1
    :goto_0
    sget-object p0, Lcom/powervision/base/utils/SoundPoolUtils;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private releaseInterval()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAudioFile(III)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->resIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/powervision/base/utils/SoundPoolUtils;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/powervision/base/utils/SoundPoolUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, p3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public playAudio(I)V
    .locals 8

    .line 133
    iget-boolean v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->complete:Z

    if-eqz v0, :cond_0

    .line 134
    sget-object v1, Lcom/powervision/base/utils/SoundPoolUtils;->soundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->resIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/powervision/base/utils/SoundPoolUtils;->leftVolume:F

    iget v4, p0, Lcom/powervision/base/utils/SoundPoolUtils;->rightVolume:F

    iget v5, p0, Lcom/powervision/base/utils/SoundPoolUtils;->priority:I

    iget v6, p0, Lcom/powervision/base/utils/SoundPoolUtils;->loop:I

    iget v7, p0, Lcom/powervision/base/utils/SoundPoolUtils;->rate:F

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    sput p1, Lcom/powervision/base/utils/SoundPoolUtils;->soundID:I

    :cond_0
    return-void
.end method

.method public playAudio(II)V
    .locals 4

    if-nez p2, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    return-void

    .line 153
    :cond_0
    iget v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentIndex:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentType:I

    if-ne v0, p2, :cond_1

    return-void

    .line 156
    :cond_1
    iget v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentIndex:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    return-void

    .line 159
    :cond_2
    iput p1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentIndex:I

    .line 160
    iput p2, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentType:I

    .line 161
    invoke-direct {p0}, Lcom/powervision/base/utils/SoundPoolUtils;->releaseInterval()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const-wide/16 v0, 0x320

    .line 164
    iput-wide v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->period:J

    .line 165
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    const-wide/16 v0, 0x190

    .line 167
    iput-wide v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->period:J

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    const-wide/16 v0, 0xc8

    .line 169
    iput-wide v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->period:J

    :cond_5
    :goto_0
    const-wide/16 v0, 0x0

    .line 171
    iget-wide v2, p0, Lcom/powervision/base/utils/SoundPoolUtils;->period:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, p2}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    .line 172
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    .line 173
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/powervision/base/utils/SoundPoolUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/powervision/base/utils/SoundPoolUtils$2;-><init>(Lcom/powervision/base/utils/SoundPoolUtils;I)V

    .line 174
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/utils/SoundPoolUtils;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public playAudioRepetition(I)V
    .locals 9

    .line 121
    sget-object v0, Lcom/powervision/base/utils/SoundPoolUtils;->soundPool:Landroid/media/SoundPool;

    sget v1, Lcom/powervision/base/utils/SoundPoolUtils;->soundID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 122
    sget-object v2, Lcom/powervision/base/utils/SoundPoolUtils;->soundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->resIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/powervision/base/utils/SoundPoolUtils;->leftVolume:F

    iget v5, p0, Lcom/powervision/base/utils/SoundPoolUtils;->rightVolume:F

    iget v6, p0, Lcom/powervision/base/utils/SoundPoolUtils;->priority:I

    iget v7, p0, Lcom/powervision/base/utils/SoundPoolUtils;->loop:I

    iget v8, p0, Lcom/powervision/base/utils/SoundPoolUtils;->rate:F

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    sput p1, Lcom/powervision/base/utils/SoundPoolUtils;->soundID:I

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentIndex:I

    .line 190
    iput v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentType:I

    .line 191
    invoke-direct {p0}, Lcom/powervision/base/utils/SoundPoolUtils;->releaseInterval()V

    return-void
.end method

.method public releaseByIndex(I)V
    .locals 1

    .line 195
    iget v0, p0, Lcom/powervision/base/utils/SoundPoolUtils;->currentIndex:I

    if-ne p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/powervision/base/utils/SoundPoolUtils;->release()V

    :cond_0
    return-void
.end method
