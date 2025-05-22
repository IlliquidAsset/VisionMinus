.class public Lcom/mob/wrappers/SMSSDKWrapper;
.super Lcom/mob/wrappers/SDKWrapper;
.source "SMSSDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;,
        Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;
    }
.end annotation


# static fields
.field private static state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/mob/wrappers/SDKWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 14
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getGroupedCountryList()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/mob/wrappers/SMSSDKWrapper;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcn/smssdk/SMSSDK;->getGroupedCountryList()Ljava/util/HashMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 44
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSupportedCountries()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcn/smssdk/SMSSDK;->getSupportedCountries()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 51
    invoke-static {v0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->access$200(I)V

    :goto_0
    return-void
.end method

.method public static getVerificationCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, v0}, Lcom/mob/wrappers/SMSSDKWrapper;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;)V

    return-void
.end method

.method public static getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 63
    new-instance v0, Lcom/mob/wrappers/SMSSDKWrapper$1;

    invoke-direct {v0, p2}, Lcom/mob/wrappers/SMSSDKWrapper$1;-><init>(Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;)V

    .line 69
    :cond_0
    invoke-static {p0, p1, v0}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 71
    invoke-static {p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->access$200(I)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized getVoiceVerifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mob/wrappers/SMSSDKWrapper;

    monitor-enter v0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {p0, p1}, Lcn/smssdk/SMSSDK;->getVoiceVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 87
    invoke-static {p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->access$200(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized isAvailable()Z
    .locals 3

    const-class v0, Lcom/mob/wrappers/SMSSDKWrapper;

    monitor-enter v0

    .line 18
    :try_start_0
    sget v1, Lcom/mob/wrappers/SMSSDKWrapper;->state:I

    if-nez v1, :cond_0

    const-string v1, "SMSSDK"

    .line 19
    invoke-static {v1}, Lcom/mob/wrappers/SMSSDKWrapper;->isAvailable(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mob/wrappers/SMSSDKWrapper;->state:I

    .line 21
    :cond_0
    sget v1, Lcom/mob/wrappers/SMSSDKWrapper;->state:I
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

.method public static registerEventHandler(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->access$000(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V

    return-void
.end method

.method public static declared-synchronized setAskPermisionOnReadContact(Z)V
    .locals 2

    const-class v0, Lcom/mob/wrappers/SMSSDKWrapper;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 26
    sget-object p0, Lcn/smssdk/SMSSDK$InitFlag;->WARNNING_READCONTACT_DIALOG_MODE:Lcn/smssdk/SMSSDK$InitFlag;

    goto :goto_0

    :cond_0
    sget-object p0, Lcn/smssdk/SMSSDK$InitFlag;->DEFAULT:Lcn/smssdk/SMSSDK$InitFlag;

    :goto_0
    invoke-static {p0}, Lcn/smssdk/SMSSDK;->setInitFlag(Lcn/smssdk/SMSSDK$InitFlag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showVerificationPage(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V
    .locals 4

    const-class v0, Lcom/mob/wrappers/SMSSDKWrapper;

    monitor-enter v0

    .line 93
    :try_start_0
    new-instance v1, Lcn/smssdk/gui/RegisterPage;

    invoke-direct {v1}, Lcn/smssdk/gui/RegisterPage;-><init>()V

    if-eqz p0, :cond_0

    .line 95
    invoke-static {p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->access$300(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/smssdk/EventHandler;

    invoke-virtual {v1, v2}, Lcn/smssdk/gui/RegisterPage;->setRegisterCallback(Lcn/smssdk/EventHandler;)V

    .line 97
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/smssdk/gui/RegisterPage;->show(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 100
    :try_start_1
    new-instance v3, Lcom/mob/wrappers/SMSSDKWrapper$2;

    invoke-direct {v3, p0, v1}, Lcom/mob/wrappers/SMSSDKWrapper$2;-><init>(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    .line 110
    :cond_1
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized submitVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mob/wrappers/SMSSDKWrapper;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {p0, p1, p2}, Lcn/smssdk/SMSSDK;->submitVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    .line 79
    invoke-static {p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->access$200(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static unregisterEventHandler(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->access$100(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V

    return-void
.end method
