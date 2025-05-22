.class public Lcom/mob/wrappers/MobPushWrapper;
.super Lcom/mob/wrappers/SDKWrapper;
.source "MobPushWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;,
        Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;,
        Lcom/mob/wrappers/MobPushWrapper$MobPushCustomNotificationWrapper;,
        Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;,
        Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;,
        Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;
    }
.end annotation


# static fields
.field private static receiverWrapperMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/mob/wrappers/SDKWrapper;-><init>()V

    return-void
.end method

.method public static addLocalNotification(Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;)Z
    .locals 15

    .line 323
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    return v1

    .line 327
    :cond_0
    new-instance v0, Lcom/mob/pushsdk/MobPushLocalNotification;

    .line 328
    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->getStyle()I

    move-result v3

    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 329
    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->getStyleContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->getInboxStyleContent()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->getExtrasMap()Ljava/util/HashMap;

    move-result-object v8

    .line 330
    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->getMessageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->getTimestamp()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->isVoice()Z

    move-result v12

    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->isShake()Z

    move-result v13

    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->isLight()Z

    move-result v14

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/mob/pushsdk/MobPushLocalNotification;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JZZZ)V

    .line 331
    invoke-virtual {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->getNotificationId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/mob/pushsdk/MobPushLocalNotification;->setNotificationId(I)V

    .line 332
    invoke-static {v0}, Lcom/mob/pushsdk/MobPush;->addLocalNotification(Lcom/mob/pushsdk/MobPushLocalNotification;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static addPushReceiver(Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 76
    :try_start_0
    sget-object v1, Lcom/mob/wrappers/MobPushWrapper;->receiverWrapperMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/wrappers/MobPushWrapper;->receiverWrapperMap:Ljava/util/HashMap;

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/mob/wrappers/MobPushWrapper;->receiverWrapperMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/pushsdk/MobPushReceiver;

    :goto_0
    if-nez v0, :cond_2

    .line 82
    new-instance v0, Lcom/mob/wrappers/MobPushWrapper$4;

    invoke-direct {v0, p0}, Lcom/mob/wrappers/MobPushWrapper$4;-><init>(Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;)V

    .line 120
    sget-object v1, Lcom/mob/wrappers/MobPushWrapper;->receiverWrapperMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {v0}, Lcom/mob/pushsdk/MobPush;->addPushReceiver(Lcom/mob/pushsdk/MobPushReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static addTags([Ljava/lang/String;)V
    .locals 1

    .line 226
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    invoke-static {p0}, Lcom/mob/pushsdk/MobPush;->addTags([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static cleanTags()V
    .locals 1

    .line 262
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    invoke-static {}, Lcom/mob/pushsdk/MobPush;->cleanTags()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static clearLocalNotifications()Z
    .locals 1

    .line 353
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lcom/mob/pushsdk/MobPush;->clearLocalNotifications()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static deleteAlias()V
    .locals 1

    .line 212
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    invoke-static {}, Lcom/mob/pushsdk/MobPush;->deleteAlias()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static deleteTags([Ljava/lang/String;)V
    .locals 1

    .line 250
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    invoke-static {p0}, Lcom/mob/pushsdk/MobPush;->deleteTags([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static getAlias()V
    .locals 1

    .line 200
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    invoke-static {}, Lcom/mob/pushsdk/MobPush;->getAlias()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static getRegistrationId(Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    new-instance v0, Lcom/mob/wrappers/MobPushWrapper$1;

    invoke-direct {v0, p0}, Lcom/mob/wrappers/MobPushWrapper$1;-><init>(Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;)V

    invoke-static {v0}, Lcom/mob/pushsdk/MobPush;->getRegistrationId(Lcom/mob/pushsdk/MobPushCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    if-eqz p0, :cond_1

    .line 44
    new-instance v0, Lcom/mob/wrappers/MobPushWrapper$2;

    invoke-direct {v0, p0}, Lcom/mob/wrappers/MobPushWrapper$2;-><init>(Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;)V

    invoke-static {v1, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Lcom/mob/wrappers/MobPushWrapper$3;

    invoke-direct {v0, p0}, Lcom/mob/wrappers/MobPushWrapper$3;-><init>(Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;)V

    invoke-static {v1, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static getTags()V
    .locals 1

    .line 238
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    invoke-static {}, Lcom/mob/pushsdk/MobPush;->getTags()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static declared-synchronized isAvailable()Z
    .locals 3

    const-class v0, Lcom/mob/wrappers/MobPushWrapper;

    monitor-enter v0

    .line 21
    :try_start_0
    sget v1, Lcom/mob/wrappers/MobPushWrapper;->state:I

    if-nez v1, :cond_0

    const-string v1, "MOBPUSH"

    .line 22
    invoke-static {v1}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mob/wrappers/MobPushWrapper;->state:I

    .line 24
    :cond_0
    sget v1, Lcom/mob/wrappers/MobPushWrapper;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isPushStopped()Z
    .locals 1

    .line 173
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    invoke-static {}, Lcom/mob/pushsdk/MobPush;->isPushStopped()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static removeLocalNotification(I)Z
    .locals 1

    .line 343
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {p0}, Lcom/mob/pushsdk/MobPush;->removeLocalNotification(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removePushReceiver(Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :try_start_0
    sget-object v0, Lcom/mob/wrappers/MobPushWrapper;->receiverWrapperMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/mob/wrappers/MobPushWrapper;->receiverWrapperMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 137
    check-cast p0, Lcom/mob/pushsdk/MobPushReceiver;

    invoke-static {p0}, Lcom/mob/pushsdk/MobPush;->removePushReceiver(Lcom/mob/pushsdk/MobPushReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static restartPush()V
    .locals 1

    .line 161
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    invoke-static {}, Lcom/mob/pushsdk/MobPush;->restartPush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static setAlias(Ljava/lang/String;)V
    .locals 1

    .line 188
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    invoke-static {p0}, Lcom/mob/pushsdk/MobPush;->setAlias(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static setCustomNotification(Lcom/mob/wrappers/MobPushWrapper$MobPushCustomNotificationWrapper;)V
    .locals 1

    .line 294
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 297
    :try_start_0
    invoke-static {p0}, Lcom/mob/pushsdk/MobPush;->setCustomNotification(Lcom/mob/pushsdk/MobPushCustomNotification;)V

    goto :goto_0

    .line 299
    :cond_0
    new-instance v0, Lcom/mob/wrappers/MobPushWrapper$5;

    invoke-direct {v0, p0}, Lcom/mob/wrappers/MobPushWrapper$5;-><init>(Lcom/mob/wrappers/MobPushWrapper$MobPushCustomNotificationWrapper;)V

    invoke-static {v0}, Lcom/mob/pushsdk/MobPush;->setCustomNotification(Lcom/mob/pushsdk/MobPushCustomNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static setSilenceTime(IIII)V
    .locals 1

    .line 280
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/mob/pushsdk/MobPush;->setSilenceTime(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static stopPush()V
    .locals 1

    .line 149
    invoke-static {}, Lcom/mob/wrappers/MobPushWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/mob/pushsdk/MobPush;->stopPush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
