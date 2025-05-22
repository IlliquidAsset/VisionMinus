.class public Lcom/mob/tools/utils/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# static fields
.field public static final ALARM_RING:I = 0x4

.field public static final CALL_RING:I = 0x2

.field public static final MEDIA_RING:I = 0x3

.field public static final SYSTEM_RING:I = 0x1

.field private static audioHelper:Lcom/mob/tools/utils/AudioHelper;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private currentAlarmVoice:I

.field private currentCommonVoice:I

.field private currentMediaVoice:I

.field private currentRingVoice:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/AudioHelper;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/AudioHelper;
    .locals 1

    .line 24
    sget-object v0, Lcom/mob/tools/utils/AudioHelper;->audioHelper:Lcom/mob/tools/utils/AudioHelper;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/mob/tools/utils/AudioHelper;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/AudioHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/tools/utils/AudioHelper;->audioHelper:Lcom/mob/tools/utils/AudioHelper;

    .line 27
    :cond_0
    sget-object p0, Lcom/mob/tools/utils/AudioHelper;->audioHelper:Lcom/mob/tools/utils/AudioHelper;

    return-object p0
.end method

.method private getLastVoice(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 114
    iget v1, p0, Lcom/mob/tools/utils/AudioHelper;->currentCommonVoice:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 116
    iget v1, p0, Lcom/mob/tools/utils/AudioHelper;->currentMediaVoice:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 118
    iget v1, p0, Lcom/mob/tools/utils/AudioHelper;->currentRingVoice:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 120
    iget v1, p0, Lcom/mob/tools/utils/AudioHelper;->currentAlarmVoice:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 122
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice Type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Last Count:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method private getVioce()V
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iput v0, p0, Lcom/mob/tools/utils/AudioHelper;->currentCommonVoice:I

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 65
    iput v1, p0, Lcom/mob/tools/utils/AudioHelper;->currentRingVoice:I

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 70
    iput v2, p0, Lcom/mob/tools/utils/AudioHelper;->currentMediaVoice:I

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_3

    .line 75
    iput v3, p0, Lcom/mob/tools/utils/AudioHelper;->currentAlarmVoice:I

    .line 77
    :cond_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System Ring\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Call Ring\uff1a"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Media Ring\uff1a"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Alarm Ring\uff1a"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public addVoice(II)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public checkMusicActivity()Z
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 139
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Music Action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method public getAudioMode()I
    .locals 2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 50
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public recoveryVoice(I)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/AudioHelper;->getLastVoice(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setQuietMode(I)V
    .locals 3

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/utils/AudioHelper;->getVioce()V

    .line 85
    iget-object v0, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 90
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSilentMode()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 97
    iget-object v0, p0, Lcom/mob/tools/utils/AudioHelper;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method
