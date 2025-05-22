.class public Lcom/appunite/ffmpeg/FFmpegPlayer;
.super Ljava/lang/Object;
.source "FFmpegPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;,
        Lcom/appunite/ffmpeg/FFmpegPlayer$ResumeTask;,
        Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;,
        Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;,
        Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;,
        Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTaskResult;,
        Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;
    }
.end annotation


# static fields
.field public static final NO_STREAM:I = -0x2

.field private static TAG:Ljava/lang/String; = "FFmpegPlayer"

.field public static final UNKNOWN_STREAM:I = -0x1

.field private static conuntimeout:I

.field private static m_intance:Lcom/appunite/ffmpeg/FFmpegPlayer;


# instance fields
.field private Version:Ljava/lang/String;

.field public connstatus:I

.field public context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isharddecode:Z

.field private volatile lasttime:J

.field listenThread:Z

.field private mCurrentTimeUs:J

.field private mGLSurfaceView:Lcom/appunite/ffmpeg/MGLSurfaceView;

.field private mNativePlayer:J

.field private final mRenderedFrame:Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;

.field private mStreamsInfos:[Lcom/appunite/ffmpeg/FFmpegStreamInfo;

.field private mVideoDurationUs:J

.field private m_Timer:Landroid/os/Handler;

.field private mpegListener:Lcom/appunite/ffmpeg/FFmpegListener;

.field number:I

.field public playstatus:I

.field private playurl:Ljava/lang/String;

.field private record_status:I

.field renderingStop:Z

.field private runconn:Ljava/lang/Runnable;

.field public s_timeout:I

.field private vrmode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ffmpeg-old"

    .line 382
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "ffmpeg-jni"

    .line 383
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2017-7-31"

    .line 51
    iput-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->Version:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 53
    iput v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->s_timeout:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->connstatus:I

    .line 60
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->m_Timer:Landroid/os/Handler;

    .line 73
    iput-boolean v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->listenThread:Z

    const/4 v1, 0x1

    .line 94
    iput v1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->vrmode:I

    .line 160
    new-instance v2, Lcom/appunite/ffmpeg/FFmpegPlayer$2;

    invoke-direct {v2, p0}, Lcom/appunite/ffmpeg/FFmpegPlayer$2;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    iput-object v2, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->runconn:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 389
    iput-object v2, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mpegListener:Lcom/appunite/ffmpeg/FFmpegListener;

    .line 390
    new-instance v3, Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;

    invoke-direct {v3}, Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;-><init>()V

    iput-object v3, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mRenderedFrame:Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;

    .line 395
    iput-object v2, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mStreamsInfos:[Lcom/appunite/ffmpeg/FFmpegStreamInfo;

    .line 476
    iput-boolean v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderingStop:Z

    .line 493
    iput v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->number:I

    .line 734
    iput-object v2, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mGLSurfaceView:Lcom/appunite/ffmpeg/MGLSurfaceView;

    .line 101
    invoke-virtual {p0, v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->setIsharddecode(Z)V

    .line 102
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->context:Landroid/content/Context;

    .line 103
    new-instance p1, Lcom/appunite/ffmpeg/FFmpegPlayer$1;

    invoke-direct {p1, p0}, Lcom/appunite/ffmpeg/FFmpegPlayer$1;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->handler:Landroid/os/Handler;

    .line 116
    invoke-direct {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->initNative()I

    move-result p1

    const-string v2, "[^0-9]"

    .line 117
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 118
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 119
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 120
    invoke-virtual {p0, v2}, Lcom/appunite/ffmpeg/FFmpegPlayer;->setGputype(I)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v2, "FFmpegPlayer"

    const-string v3, "initNative failed"

    .line 145
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v2, Ljava/lang/RuntimeException;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Could not initialize player: %d"

    invoke-static {v3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/appunite/ffmpeg/FFmpegPlayer;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playurl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appunite/ffmpeg/FFmpegPlayer;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->lasttime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/appunite/ffmpeg/FFmpegPlayer;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->record_status:I

    return p0
.end method

.method static synthetic access$1002(Lcom/appunite/ffmpeg/FFmpegPlayer;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->record_status:I

    return p1
.end method

.method static synthetic access$102(Lcom/appunite/ffmpeg/FFmpegPlayer;J)J
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->lasttime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/appunite/ffmpeg/FFmpegPlayer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appunite/ffmpeg/NotPlayingException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/appunite/ffmpeg/FFmpegPlayer;->seekNative(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appunite/ffmpeg/NotPlayingException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->pauseNative()V

    return-void
.end method

.method static synthetic access$1400(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appunite/ffmpeg/NotPlayingException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->resumeNative()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->stopNative()V

    return-void
.end method

.method static synthetic access$400(Lcom/appunite/ffmpeg/FFmpegPlayer;)Lcom/appunite/ffmpeg/FFmpegListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mpegListener:Lcom/appunite/ffmpeg/FFmpegListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/appunite/ffmpeg/FFmpegPlayer;Ljava/lang/String;Ljava/util/Map;III)I
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/appunite/ffmpeg/FFmpegPlayer;->setDataSourceNative(Ljava/lang/String;Ljava/util/Map;III)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/appunite/ffmpeg/FFmpegPlayer;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->runconn:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/appunite/ffmpeg/FFmpegPlayer;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->m_Timer:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/appunite/ffmpeg/FFmpegPlayer;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private native deallocNative()V
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/appunite/ffmpeg/FFmpegPlayer;
    .locals 2

    const-class v0, Lcom/appunite/ffmpeg/FFmpegPlayer;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lcom/appunite/ffmpeg/FFmpegPlayer;->m_intance:Lcom/appunite/ffmpeg/FFmpegPlayer;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-direct {v1, p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appunite/ffmpeg/FFmpegPlayer;->m_intance:Lcom/appunite/ffmpeg/FFmpegPlayer;

    .line 154
    :cond_0
    sget-object p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->m_intance:Lcom/appunite/ffmpeg/FFmpegPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance22()V
    .locals 1

    const-class v0, Lcom/appunite/ffmpeg/FFmpegPlayer;

    monitor-enter v0

    .line 158
    monitor-exit v0

    return-void
.end method

.method private native getVideoDurationNative()J
.end method

.method private ifHardecode()Z
    .locals 8

    .line 404
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/media_codecs.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "xp"

    if-nez v1, :cond_0

    const-string v2, "in == null"

    .line 412
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v2, "in != null"

    .line 414
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v2, 0x0

    .line 420
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 421
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 422
    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 423
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    .line 425
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_1

    goto :goto_3

    :cond_1
    const-string v1, "MediaCodec"

    .line 428
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "OMX."

    .line 431
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "OMX.google."

    .line 432
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v4, 0x1

    .line 438
    :cond_2
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move v2, v4

    :catch_2
    move v4, v2

    :cond_3
    return v4
.end method

.method private native initNative()I
.end method

.method private onUpdateTime(JJI)V
    .locals 3

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->lasttime:J

    .line 592
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getMpegListener()Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 593
    iput v1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->connstatus:I

    .line 594
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getMpegListener()Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object v0

    iget v2, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->connstatus:I

    invoke-interface {v0, v2}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFConnStatus(I)V

    .line 596
    :cond_0
    iput-wide p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mCurrentTimeUs:J

    .line 597
    iput-wide p3, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mVideoDurationUs:J

    const/4 p1, 0x1

    if-ne p5, p1, :cond_1

    const-string p1, "onUpdateTime"

    const-string p2, "isFinished"

    .line 599
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getMpegListener()Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 601
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getMpegListener()Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFRenderStatus(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p5, p2, :cond_2

    .line 604
    iput v1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->connstatus:I

    .line 605
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getMpegListener()Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 606
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getMpegListener()Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFRenderStatus(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private native pauseNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appunite/ffmpeg/NotPlayingException;
        }
    .end annotation
.end method

.method private prepareAudioTrack(II)Landroid/media/AudioTrack;
    .locals 11

    :goto_0
    const/16 v0, 0xc

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p2, v2, :cond_0

    const/4 v7, 0x4

    goto :goto_1

    :cond_0
    if-ne p2, v3, :cond_2

    :cond_1
    const/16 v7, 0xc

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    const/16 v0, 0x1c

    const/16 v7, 0x1c

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_4

    const/16 v0, 0xcc

    const/16 v7, 0xcc

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    if-ne p2, v1, :cond_5

    const/16 v0, 0xec

    const/16 v7, 0xec

    goto :goto_1

    :cond_5
    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    const/16 v0, 0xfc

    const/16 v7, 0xfc

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    const/16 v0, 0x3fc

    const/16 v7, 0x3fc

    .line 635
    :goto_1
    :try_start_0
    invoke-static {p1, v7, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .line 637
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    move-object v4, v0

    move v6, p1

    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    if-le p2, v3, :cond_7

    const/4 p2, 0x2

    goto :goto_0

    :cond_7
    if-le p2, v2, :cond_8

    const/4 p2, 0x1

    goto :goto_0

    .line 648
    :cond_8
    throw v0
.end method

.method private prepareFrame(II)Landroid/graphics/Bitmap;
    .locals 2

    .line 703
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mRenderedFrame:Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;

    iput p2, v1, Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;->height:I

    .line 706
    iget-object p2, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mRenderedFrame:Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;

    iput p1, p2, Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;->width:I

    return-object v0
.end method

.method private native render(Landroid/view/Surface;I)V
.end method

.method private native renderFrameStop()V
.end method

.method private native resumeNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appunite/ffmpeg/NotPlayingException;
        }
    .end annotation
.end method

.method private native seekNative(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appunite/ffmpeg/NotPlayingException;
        }
    .end annotation
.end method

.method private native setDataSourceNative(Ljava/lang/String;Ljava/util/Map;III)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)I"
        }
    .end annotation
.end method

.method private native setHardecode(I)I
.end method

.method private native setInterrupt(I)I
.end method

.method private setStreamsInfo([Lcom/appunite/ffmpeg/FFmpegStreamInfo;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mStreamsInfos:[Lcom/appunite/ffmpeg/FFmpegStreamInfo;

    return-void
.end method

.method private native stopNative()V
.end method


# virtual methods
.method public connServer(Ljava/lang/String;)V
    .locals 8

    .line 667
    sget-object v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 669
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playurl:Ljava/lang/String;

    .line 671
    sget-object v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 674
    :cond_0
    sget-object v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22222-----"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x2

    move-object v2, p0

    move-object v3, p1

    .line 675
    invoke-virtual/range {v2 .. v7}, Lcom/appunite/ffmpeg/FFmpegPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;III)V

    const/4 p1, 0x1

    .line 676
    iput p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 448
    invoke-direct {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->deallocNative()V

    .line 449
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getMpegListener()Lcom/appunite/ffmpeg/FFmpegListener;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mpegListener:Lcom/appunite/ffmpeg/FFmpegListener;

    return-object v0
.end method

.method public getRecordStatus()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->record_status:I

    return v0
.end method

.method protected getStreamsInfo()[Lcom/appunite/ffmpeg/FFmpegStreamInfo;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mStreamsInfos:[Lcom/appunite/ffmpeg/FFmpegStreamInfo;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public getVrmode()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->vrmode:I

    return v0
.end method

.method public isharddecode()Z
    .locals 1

    .line 713
    iget-boolean v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->isharddecode:Z

    return v0
.end method

.method public native jni_setPonsition(IIIII)V
.end method

.method public pause()V
    .locals 2

    .line 577
    new-instance v0, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;

    invoke-direct {v0, p0}, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appunite/ffmpeg/FFmpegPlayer$PauseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public native recordStart()I
.end method

.method public native recordStop()I
.end method

.method public renderStop()V
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderingStop:Z

    if-nez v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderFrameStop()V

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderingStop:Z

    :cond_0
    return-void
.end method

.method public renderSurface(Landroid/view/Surface;I)V
    .locals 3

    .line 547
    sget-object v0, Lcom/appunite/ffmpeg/FFmpegPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----renderSurface-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderingStop:Z

    .line 549
    iput v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/appunite/ffmpeg/FFmpegPlayer;->render(Landroid/view/Surface;I)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 585
    new-instance v0, Lcom/appunite/ffmpeg/FFmpegPlayer$ResumeTask;

    invoke-direct {v0, p0}, Lcom/appunite/ffmpeg/FFmpegPlayer$ResumeTask;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appunite/ffmpeg/FFmpegPlayer$ResumeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public screenShot(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 516
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "screen"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 525
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 529
    :cond_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 531
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 532
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 533
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 538
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cause for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FFmpegPlayer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method native screenshotNative()I
.end method

.method public seek(J)V
    .locals 2

    .line 581
    new-instance v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;

    invoke-direct {v0, p0}, Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-virtual {v0, v1}, Lcom/appunite/ffmpeg/FFmpegPlayer$SeekTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setConnServer(I)V
    .locals 0

    .line 656
    iput p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->s_timeout:I

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .line 687
    new-instance v0, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;

    invoke-direct {v0, p0, p0}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer;Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 688
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 689
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 687
    invoke-virtual {v0, v1}, Lcom/appunite/ffmpeg/FFmpegPlayer$SetDataSourceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public native setDebugLevel(II)I
.end method

.method public setGlSurfaceView(Lcom/appunite/ffmpeg/MGLSurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 742
    :cond_0
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mGLSurfaceView:Lcom/appunite/ffmpeg/MGLSurfaceView;

    .line 752
    invoke-virtual {p1, p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->setMpegPlayer(Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    return-void
.end method

.method public native setGputype(I)I
.end method

.method public setIsharddecode(Z)V
    .locals 2

    .line 717
    iget-boolean v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->isharddecode:Z

    if-eq p1, v0, :cond_2

    .line 718
    iput-boolean p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->isharddecode:Z

    .line 719
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mGLSurfaceView:Lcom/appunite/ffmpeg/MGLSurfaceView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {v0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->addSurface()V

    goto :goto_0

    .line 723
    :cond_0
    iget-object v0, v0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mGLSurfaceView:Lcom/appunite/ffmpeg/MGLSurfaceView;

    iget-object v0, v0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surface:Landroid/view/Surface;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderSurface(Landroid/view/Surface;I)V

    .line 727
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->setHardecode(I)I

    :cond_2
    return-void
.end method

.method public setMpegListener(Lcom/appunite/ffmpeg/FFmpegListener;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->mpegListener:Lcom/appunite/ffmpeg/FFmpegListener;

    return-void
.end method

.method public setPonsition(IIIII)V
    .locals 0

    .line 662
    invoke-virtual/range {p0 .. p5}, Lcom/appunite/ffmpeg/FFmpegPlayer;->jni_setPonsition(IIIII)V

    return-void
.end method

.method public setRecordStatus(I)V
    .locals 1

    .line 79
    iput p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->record_status:I

    .line 80
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getMpegListener()Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getMpegListener()Lcom/appunite/ffmpeg/FFmpegListener;

    move-result-object p1

    iget v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->record_status:I

    invoke-interface {p1, v0}, Lcom/appunite/ffmpeg/FFmpegListener;->onFFRecordStatus(I)V

    :cond_0
    return-void
.end method

.method public setVrmode(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->vrmode:I

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x2

    .line 567
    iput v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    const/4 v0, 0x0

    .line 568
    iput-boolean v0, p0, Lcom/appunite/ffmpeg/FFmpegPlayer;->listenThread:Z

    .line 569
    new-instance v1, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;

    invoke-direct {v1, p0}, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;-><init>(Lcom/appunite/ffmpeg/FFmpegPlayer;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/appunite/ffmpeg/FFmpegPlayer$StopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
