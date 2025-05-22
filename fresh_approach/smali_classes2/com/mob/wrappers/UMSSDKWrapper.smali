.class public Lcom/mob/wrappers/UMSSDKWrapper;
.super Lcom/mob/wrappers/SDKWrapper;
.source "UMSSDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;,
        Lcom/mob/wrappers/UMSSDKWrapper$User;
    }
.end annotation


# static fields
.field private static state:I

.field private static stateGUI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/mob/wrappers/SDKWrapper;-><init>()V

    return-void
.end method

.method public static getLoginUser(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;)V
    .locals 3

    .line 61
    invoke-static {}, Lcom/mob/wrappers/UMSSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    new-instance v0, Lcom/mob/wrappers/UMSSDKWrapper$1;

    invoke-direct {v0, p0}, Lcom/mob/wrappers/UMSSDKWrapper$1;-><init>(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;)V

    invoke-static {v0}, Lcom/mob/ums/UMSSDK;->getLoginUser(Lcom/mob/ums/OperationCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 77
    new-instance v2, Lcom/mob/wrappers/UMSSDKWrapper$2;

    invoke-direct {v2, p0, v0}, Lcom/mob/wrappers/UMSSDKWrapper$2;-><init>(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 87
    invoke-static {p0, v0}, Lcom/mob/wrappers/UMSSDKWrapper;->unAvailable(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;I)V

    :goto_0
    return-void
.end method

.method public static getLoginUserId()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {}, Lcom/mob/wrappers/UMSSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/mob/ums/UMSSDK;->getLoginUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLoginUserToken()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-static {}, Lcom/mob/wrappers/UMSSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/mob/ums/UMSSDK;->getLoginUserToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasLogin()Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/mob/wrappers/UMSSDKWrapper;->getLoginUserToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static declared-synchronized isAvailable()Z
    .locals 3

    const-class v0, Lcom/mob/wrappers/UMSSDKWrapper;

    monitor-enter v0

    .line 15
    :try_start_0
    sget v1, Lcom/mob/wrappers/UMSSDKWrapper;->state:I

    if-nez v1, :cond_0

    const-string v1, "UMSSDK"

    .line 16
    invoke-static {v1}, Lcom/mob/wrappers/UMSSDKWrapper;->isAvailable(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mob/wrappers/UMSSDKWrapper;->state:I

    .line 18
    :cond_0
    sget v1, Lcom/mob/wrappers/UMSSDKWrapper;->state:I
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

.method private static isAvailableGUI()Z
    .locals 2

    .line 92
    sget v0, Lcom/mob/wrappers/UMSSDKWrapper;->stateGUI:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 93
    sput v0, Lcom/mob/wrappers/UMSSDKWrapper;->stateGUI:I

    .line 97
    :try_start_0
    new-instance v0, Lcom/mob/ums/gui/UMSGUI;

    invoke-direct {v0}, Lcom/mob/ums/gui/UMSGUI;-><init>()V

    .line 99
    sput v1, Lcom/mob/wrappers/UMSSDKWrapper;->stateGUI:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 103
    :cond_0
    :goto_0
    sget v0, Lcom/mob/wrappers/UMSSDKWrapper;->stateGUI:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static logout()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/mob/wrappers/UMSSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lcom/mob/ums/UMSSDK;->logout(Lcom/mob/ums/OperationCallback;)V

    :cond_0
    return-void
.end method

.method public static showLogin(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;)V
    .locals 1

    .line 110
    invoke-static {}, Lcom/mob/wrappers/UMSSDKWrapper;->isAvailableGUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/mob/wrappers/UMSSDKWrapper$3;

    invoke-direct {v0, p0}, Lcom/mob/wrappers/UMSSDKWrapper$3;-><init>(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;)V

    invoke-static {v0}, Lcom/mob/ums/gui/UMSGUI;->showLogin(Lcom/mob/ums/OperationCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 125
    invoke-static {p0, v0}, Lcom/mob/wrappers/UMSSDKWrapper;->unAvailable(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;I)V

    :goto_0
    return-void
.end method

.method private static unAvailable(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;I)V
    .locals 1

    .line 130
    new-instance v0, Lcom/mob/wrappers/UMSSDKWrapper$4;

    invoke-direct {v0, p0, p1}, Lcom/mob/wrappers/UMSSDKWrapper$4;-><init>(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;I)V

    const/4 p0, 0x0

    invoke-static {p0, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void
.end method
