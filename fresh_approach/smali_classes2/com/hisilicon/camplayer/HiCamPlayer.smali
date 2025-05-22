.class public Lcom/hisilicon/camplayer/HiCamPlayer;
.super Ljava/lang/Object;
.source "HiCamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/camplayer/HiCamPlayer$onSeekBufferingStateListener;,
        Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;,
        Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;,
        Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;,
        Lcom/hisilicon/camplayer/HiCamPlayer$YuvFrameInfo;,
        Lcom/hisilicon/camplayer/HiCamPlayer$RecFrameInfo;
    }
.end annotation


# static fields
.field private static final MEDIA_ASR_CHANGE:I = 0x12c

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_CODEC_ERR:I = 0x2710

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field private static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_FILE_EOF:I = 0x190

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_PLAYBACK_BUFFERING_END:I = 0x2be

.field private static final MEDIA_PLAYBACK_BUFFERING_START:I = 0x2bd

.field private static final MEDIA_PLAYBACK_INFO:I = 0x2

.field private static final MEDIA_PLAYBACK_LOADING_PERCNT:I = 0x2c7

.field private static final MEDIA_PLAYBACK_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_PREPARED:I = 0x1

.field private static final MEDIA_PLAYBACK_STARTED:I = 0x6

.field private static final MEDIA_PLAYBACK_STOPPED:I = 0x8

.field private static final MEDIA_PREPARED:I = 0x1

.field public static PvUsbObject:Lcom/hisilicon/camplayer/HiCamPlayer; = null

.field private static final TAG:Ljava/lang/String; = "HICAMPlayer"

.field private static mAudioTrack:Landroid/media/AudioTrack;


# instance fields
.field private mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

.field private mNativeContext:J

.field private mNativeField:J

.field private mNativeSurface:J

.field private mPvUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

.field private mScreenOnWhilePlaying:Z

.field private mSeekBufferingStateListener:Lcom/hisilicon/camplayer/HiCamPlayer$onSeekBufferingStateListener;

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 247
    invoke-static {}, Lcom/hisilicon/camplayer/HiCamPlayer;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mNativeContext:J

    .line 61
    iput-wide v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mNativeField:J

    .line 62
    iput-wide v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mNativeSurface:J

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mSurface:Landroid/view/Surface;

    .line 66
    iput-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 67
    iput-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    .line 69
    iput-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mPvUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mScreenOnWhilePlaying:Z

    .line 72
    iput-boolean v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mStayAwake:Z

    .line 256
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private static Rtsp_usb_recv_data(Ljava/lang/Object;)[B
    .locals 2

    .line 827
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisilicon/camplayer/HiCamPlayer;

    const/4 v0, 0x0

    const-string v1, "HICAMPlayer"

    if-nez p0, :cond_0

    const-string p0, "================== Rtsp_usb_recv_data, player is null, return !"

    .line 829
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 832
    :cond_0
    iget-object p0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mPvUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    if-nez p0, :cond_1

    const-string p0, "================== Rtsp_usb_recv_data, dataManger is null, return !"

    .line 833
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 836
    :cond_1
    invoke-interface {p0}, Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;->pv_usb_recv_data()[B

    move-result-object p0

    return-object p0
.end method

.method private static Rtsp_usb_recv_max_data(Ljava/lang/Object;I[I)[B
    .locals 2

    .line 847
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisilicon/camplayer/HiCamPlayer;

    const/4 v0, 0x0

    const-string v1, "HICAMPlayer"

    if-nez p0, :cond_0

    const-string p0, "================== Rtsp_usb_recv_max_data, player is null, return !"

    .line 849
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 852
    :cond_0
    iget-object p0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mPvUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    if-nez p0, :cond_1

    const-string p0, "================== Rtsp_usb_recv_max_data, dataManger is null, return !"

    .line 853
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 856
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;->pv_usb_recv_max_data(I[I)[B

    move-result-object p0

    return-object p0
.end method

.method private static Rtsp_usb_send_data(Ljava/lang/Object;[B)V
    .locals 1

    .line 808
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisilicon/camplayer/HiCamPlayer;

    const-string v0, "HICAMPlayer"

    if-nez p0, :cond_0

    const-string p0, "================== Rtsp_usb_send_data, player is null, return !"

    .line 810
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 813
    :cond_0
    iget-object p0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mPvUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    if-nez p0, :cond_1

    const-string p0, "================== Rtsp_usb_send_data, dataManger is null, return !"

    .line 814
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 817
    :cond_1
    invoke-interface {p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;->pv_usb_send_data([B)V

    return-void
.end method

.method private native _invoke(III)I
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setSaveUrl(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static audioFlush()V
    .locals 2

    const-string v0, "HICAMPlayer"

    const-string v1, "audioFlush"

    .line 783
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    sget-object v0, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 785
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 786
    sget-object v0, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    :cond_0
    return-void
.end method

.method private static configATrack(IIIII)I
    .locals 15

    move/from16 v0, p1

    move/from16 v8, p2

    move/from16 v9, p3

    const/4 v1, 0x2

    if-ne v8, v1, :cond_0

    const/4 v1, 0x4

    const/4 v10, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    const/16 v10, 0xc

    .line 878
    :goto_0
    invoke-static {v0, v10, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v11

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iMinBufSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "HICAMPlayer"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    const/4 v13, 0x0

    if-eq v11, v1, :cond_2

    const/4 v1, -0x1

    if-ne v11, v1, :cond_1

    goto/16 :goto_1

    .line 887
    :cond_1
    :try_start_0
    new-instance v14, Landroid/media/AudioTrack;

    mul-int/lit8 v6, v11, 0x4

    move-object v1, v14

    move v2, p0

    move/from16 v3, p1

    move v4, v10

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v14, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioTrack OK streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chanConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " audioFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trackMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    sget-object v1, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    int-to-double v1, v11

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double v1, v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    int-to-double v3, v9

    div-double/2addr v1, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    int-to-double v3, v8

    div-double/2addr v1, v3

    double-to-int v13, v1

    const-string v0, "mAudioTrack play OK"

    .line 895
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new AudioTrack Exceeption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v13
.end method

.method private static final native native_init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static onMediaPlayBackInfo(Ljava/lang/Object;II)V
    .locals 4

    .line 647
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 648
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisilicon/camplayer/HiCamPlayer;

    .line 649
    iget-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    .line 650
    iget-object v1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mSeekBufferingStateListener:Lcom/hisilicon/camplayer/HiCamPlayer$onSeekBufferingStateListener;

    const/4 v2, 0x1

    const-string v3, "HICAMPlayer"

    if-eq p1, v2, :cond_6

    const/16 v2, 0x2c7

    if-eq p1, v2, :cond_5

    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    const/4 p2, 0x7

    if-eq p1, p2, :cond_3

    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2bd

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2be

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "cache buffering ended~ "

    .line 693
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    const-string p1, "MEDIA_PLAYBACK_BUFFERING_END"

    .line 695
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-interface {v1, p0}, Lcom/hisilicon/camplayer/HiCamPlayer$onSeekBufferingStateListener;->onSeekBufferingEnd(Lcom/hisilicon/camplayer/HiCamPlayer;)V

    goto :goto_0

    :cond_1
    const-string p1, "cache buffering started~"

    .line 686
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    .line 688
    invoke-interface {v1, p0}, Lcom/hisilicon/camplayer/HiCamPlayer$onSeekBufferingStateListener;->onSeekBufferingStart(Lcom/hisilicon/camplayer/HiCamPlayer;)V

    goto :goto_0

    :cond_2
    const-string p1, "Playback stopped~"

    .line 670
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 672
    sget-object p1, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_STOP:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    invoke-interface {v0, p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;->onStateChange(Lcom/hisilicon/camplayer/HiCamPlayer;Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V

    goto :goto_0

    :cond_3
    const-string p1, "Playback paused~"

    .line 678
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 680
    sget-object p1, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PAUSE:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    invoke-interface {v0, p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;->onStateChange(Lcom/hisilicon/camplayer/HiCamPlayer;Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V

    goto :goto_0

    :cond_4
    const-string p1, "Playback started~"

    .line 662
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 664
    sget-object p1, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PLAY:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    invoke-interface {v0, p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;->onStateChange(Lcom/hisilicon/camplayer/HiCamPlayer;Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V

    goto :goto_0

    .line 701
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loading percent updated: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    .line 703
    invoke-interface {v1, p0, p2}, Lcom/hisilicon/camplayer/HiCamPlayer$onSeekBufferingStateListener;->onSeekBufferingLoadingPercent(Lcom/hisilicon/camplayer/HiCamPlayer;I)V

    goto :goto_0

    :cond_6
    const-string p1, "Playback Prepared~"

    .line 654
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 656
    sget-object p1, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PREPARED:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    invoke-interface {v0, p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;->onStateChange(Lcom/hisilicon/camplayer/HiCamPlayer;Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 2

    .line 718
    move-object p4, p0

    check-cast p4, Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hisilicon/camplayer/HiCamPlayer;

    const/4 v0, 0x2

    const-string v1, "HICAMPlayer"

    if-eq p1, v0, :cond_6

    const/4 p0, 0x3

    if-eq p1, p0, :cond_5

    const/16 p0, 0x64

    if-eq p1, p0, :cond_3

    const/16 p0, 0x12c

    if-eq p1, p0, :cond_2

    const/16 p0, 0x190

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2710

    if-eq p1, p0, :cond_0

    goto/16 :goto_1

    .line 745
    :cond_0
    iget-object p0, p4, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    if-eqz p0, :cond_8

    .line 746
    invoke-interface {p0, p4}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;->onCodecErr(Lcom/hisilicon/camplayer/HiCamPlayer;)V

    goto :goto_1

    .line 758
    :cond_1
    iget-object p0, p4, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    if-eqz p0, :cond_8

    const-string p0, "HiCamPlayer file endof ~"

    .line 759
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object p0, p4, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    invoke-interface {p0, p4}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;->onFinish(Lcom/hisilicon/camplayer/HiCamPlayer;)V

    goto :goto_1

    .line 739
    :cond_2
    iget-object p0, p4, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    if-eqz p0, :cond_8

    .line 740
    invoke-interface {p0, p4}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;->onASRChange(Lcom/hisilicon/camplayer/HiCamPlayer;)V

    goto :goto_1

    :cond_3
    if-ne p2, p0, :cond_8

    .line 728
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "HiCamPlayer Error MEDIA_ERROR_SERVER_DIED~ =--------  mCamPlayerListener="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    const/4 p2, 0x0

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object p0, p4, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    if-eqz p0, :cond_8

    const-string p1, "HiCamPlayer Error~"

    .line 732
    invoke-interface {p0, p4, p1, p2}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;->onError(Lcom/hisilicon/camplayer/HiCamPlayer;Ljava/lang/String;I)V

    goto :goto_1

    .line 751
    :cond_5
    iget-object p0, p4, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    if-eqz p0, :cond_8

    .line 752
    invoke-interface {p0, p4, p2}, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;->onBufferingUpdate(Lcom/hisilicon/camplayer/HiCamPlayer;I)V

    .line 753
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "buffering updated: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 721
    :cond_6
    iget-object p1, p4, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    if-nez p1, :cond_7

    const-string p1, "HiCamPlayer Error listener null~"

    .line 722
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_7
    invoke-static {p0, p2, p3}, Lcom/hisilicon/camplayer/HiCamPlayer;->onMediaPlayBackInfo(Ljava/lang/Object;II)V

    :cond_8
    :goto_1
    return-void
.end method

.method private stayAwake(Z)V
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 771
    iget-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 775
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mStayAwake:Z

    .line 776
    invoke-direct {p0}, Lcom/hisilicon/camplayer/HiCamPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 641
    iget-boolean v1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mStayAwake:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method private static writePCM([B)V
    .locals 3

    .line 795
    sget-object v0, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 796
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 797
    sget-object v0, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioTrack;->write([BII)I

    :cond_0
    return-void
.end method


# virtual methods
.method public native _getRecordAudio(Ljava/nio/ByteBuffer;)Lcom/hisilicon/camplayer/HiCamPlayer$RecFrameInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public native _getRecordVideo(Ljava/nio/ByteBuffer;)Lcom/hisilicon/camplayer/HiCamPlayer$RecFrameInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public native _getSnapData(Ljava/nio/ByteBuffer;)Lcom/hisilicon/camplayer/HiCamPlayer$YuvFrameInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public native _setRecordFlag(I)V
.end method

.method public native getCurrentPosition()I
.end method

.method public native getCurrentVideoHeight()I
.end method

.method public native getCurrentVideoWidth()I
.end method

.method public native getDuration()I
.end method

.method public getRecordAudio(Ljava/nio/ByteBuffer;)Lcom/hisilicon/camplayer/HiCamPlayer$RecFrameInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer;->_getRecordAudio(Ljava/nio/ByteBuffer;)Lcom/hisilicon/camplayer/HiCamPlayer$RecFrameInfo;

    move-result-object p1

    return-object p1
.end method

.method public getRecordVideo(Ljava/nio/ByteBuffer;)Lcom/hisilicon/camplayer/HiCamPlayer$RecFrameInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 376
    invoke-virtual {p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer;->_getRecordVideo(Ljava/nio/ByteBuffer;)Lcom/hisilicon/camplayer/HiCamPlayer$RecFrameInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSnapData(Ljava/nio/ByteBuffer;)Lcom/hisilicon/camplayer/HiCamPlayer$YuvFrameInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer;->_getSnapData(Ljava/nio/ByteBuffer;)Lcom/hisilicon/camplayer/HiCamPlayer$YuvFrameInfo;

    move-result-object p1

    return-object p1
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public initUsbDataManager()V
    .locals 1

    .line 175
    new-instance v0, Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-direct {v0}, Lcom/hisilicon/camplayer/HiCamPlayer;-><init>()V

    sput-object v0, Lcom/hisilicon/camplayer/HiCamPlayer;->PvUsbObject:Lcom/hisilicon/camplayer/HiCamPlayer;

    return-void
.end method

.method public invoke(III)I
    .locals 0

    .line 500
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/camplayer/HiCamPlayer;->_invoke(III)I

    move-result p1

    return p1
.end method

.method public native isPlaying()Z
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 413
    invoke-direct {p0, v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->stayAwake(Z)V

    .line 414
    invoke-direct {p0}, Lcom/hisilicon/camplayer/HiCamPlayer;->_pause()V

    return-void
.end method

.method public native prepare(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 461
    invoke-direct {p0, v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->stayAwake(Z)V

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    .line 463
    iput-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mPvUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    .line 464
    invoke-direct {p0}, Lcom/hisilicon/camplayer/HiCamPlayer;->_release()V

    .line 465
    sget-object v1, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 467
    sput-object v0, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 478
    invoke-direct {p0, v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->stayAwake(Z)V

    .line 479
    invoke-direct {p0}, Lcom/hisilicon/camplayer/HiCamPlayer;->_reset()V

    .line 480
    sget-object v0, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 482
    sput-object v0, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer;->_setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 300
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mSurface:Landroid/view/Surface;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mSurface:Landroid/view/Surface;

    .line 304
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android sdk version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HICAMPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer;->_setVideoSurface(Landroid/view/Surface;I)V

    const/4 p1, 0x1

    .line 307
    invoke-virtual {p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setHiCamPlayerListener(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mCamPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    return-void
.end method

.method public native setLivePlayMode(I)V
.end method

.method public native setMaxResolution(II)V
.end method

.method public setOnSeekBufferingStateListener(Lcom/hisilicon/camplayer/HiCamPlayer$onSeekBufferingStateListener;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mSeekBufferingStateListener:Lcom/hisilicon/camplayer/HiCamPlayer$onSeekBufferingStateListener;

    return-void
.end method

.method public setRecordFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer;->_setRecordFlag(I)V

    return-void
.end method

.method public native setSaveDataFlag(I)V
.end method

.method public setSaveUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 955
    invoke-direct {p0, p1}, Lcom/hisilicon/camplayer/HiCamPlayer;->_setSaveUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_0

    .line 430
    iput-boolean p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mScreenOnWhilePlaying:Z

    .line 431
    invoke-direct {p0}, Lcom/hisilicon/camplayer/HiCamPlayer;->updateSurfaceScreenOn()V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4

    .line 311
    iget-boolean v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mScreenOnWhilePlaying:Z

    const-string v1, "HICAMPlayer"

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    .line 312
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android sdk version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0, p1, v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->_setVideoSurface(Landroid/view/Surface;I)V

    .line 318
    invoke-direct {p0}, Lcom/hisilicon/camplayer/HiCamPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setUsDataManager(Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer;->mPvUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    return-void
.end method

.method public native setVideoMbufLimit(II)V
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 347
    invoke-direct {p0, v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->stayAwake(Z)V

    .line 348
    sget-object v0, Lcom/hisilicon/camplayer/HiCamPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/camplayer/HiCamPlayer;->_start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 363
    invoke-direct {p0, v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->stayAwake(Z)V

    .line 364
    invoke-direct {p0}, Lcom/hisilicon/camplayer/HiCamPlayer;->_stop()V

    return-void
.end method

.method public native switchdecoder()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
