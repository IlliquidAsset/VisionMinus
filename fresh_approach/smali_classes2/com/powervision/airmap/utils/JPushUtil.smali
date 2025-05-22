.class public Lcom/powervision/airmap/utils/JPushUtil;
.super Ljava/lang/Object;
.source "JPushUtil.java"

# interfaces
.implements Lcom/powervision/base/push/IPushActions;


# static fields
.field private static final TAG:Ljava/lang/String; = "JPushUtil"

.field static mInstance:Lcom/powervision/airmap/utils/JPushUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/airmap/utils/JPushUtil;
    .locals 1

    .line 20
    sget-object v0, Lcom/powervision/airmap/utils/JPushUtil;->mInstance:Lcom/powervision/airmap/utils/JPushUtil;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/powervision/airmap/utils/JPushUtil;

    invoke-direct {v0}, Lcom/powervision/airmap/utils/JPushUtil;-><init>()V

    sput-object v0, Lcom/powervision/airmap/utils/JPushUtil;->mInstance:Lcom/powervision/airmap/utils/JPushUtil;

    .line 23
    :cond_0
    sget-object v0, Lcom/powervision/airmap/utils/JPushUtil;->mInstance:Lcom/powervision/airmap/utils/JPushUtil;

    return-object v0
.end method


# virtual methods
.method public closePush()V
    .locals 2

    .line 65
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->deleteToken()Lcom/google/android/gms/tasks/Task;

    .line 66
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->setAutoInitEnabled(Z)V

    return-void
.end method

.method public initPush(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->setAutoInitEnabled(Z)V

    return-void
.end method

.method public isPushStopped(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isStopPush(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openPush()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->setAutoInitEnabled(Z)V

    return-void
.end method

.method public registerTopic(Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/powervision/airmap/utils/JPushUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/airmap/utils/JPushUtil$1;-><init>(Lcom/powervision/airmap/utils/JPushUtil;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public resumeJPush(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setAlias(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setTags(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public stopJPush(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
