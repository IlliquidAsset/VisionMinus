.class public final Lcom/powervision/media/utils/MediaHelper;
.super Ljava/lang/Object;
.source "MediaHelper.java"


# static fields
.field private static mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/media/MediaPlayer;
    .locals 2

    .line 14
    sget-object v0, Lcom/powervision/media/utils/MediaHelper;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/powervision/media/utils/MediaHelper;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/powervision/media/utils/MediaHelper;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/powervision/media/utils/MediaHelper;->mPlayer:Landroid/media/MediaPlayer;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/media/utils/MediaHelper;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static pause()V
    .locals 1

    .line 33
    sget-object v0, Lcom/powervision/media/utils/MediaHelper;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public static play()V
    .locals 1

    .line 26
    sget-object v0, Lcom/powervision/media/utils/MediaHelper;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public static release()V
    .locals 1

    .line 40
    sget-object v0, Lcom/powervision/media/utils/MediaHelper;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/powervision/media/utils/MediaHelper;->mPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
