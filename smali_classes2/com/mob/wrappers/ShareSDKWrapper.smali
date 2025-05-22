.class public Lcom/mob/wrappers/ShareSDKWrapper;
.super Lcom/mob/wrappers/SDKWrapper;
.source "ShareSDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;
    }
.end annotation


# static fields
.field private static state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/mob/wrappers/SDKWrapper;-><init>()V

    return-void
.end method

.method public static getDbData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 96
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p0

    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->exportData()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPlatformList()[Ljava/lang/String;
    .locals 4

    .line 25
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 29
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 30
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static getPlatformToId(Ljava/lang/String;)I
    .locals 1

    .line 88
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->platformNameToId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 107
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p0

    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getUserID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 118
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p0

    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 129
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p0

    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static declared-synchronized isAvailable()Z
    .locals 3

    const-class v0, Lcom/mob/wrappers/ShareSDKWrapper;

    monitor-enter v0

    .line 17
    :try_start_0
    sget v1, Lcom/mob/wrappers/ShareSDKWrapper;->state:I

    if-nez v1, :cond_0

    const-string v1, "SHARESDK"

    .line 18
    invoke-static {v1}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mob/wrappers/ShareSDKWrapper;->state:I

    .line 20
    :cond_0
    sget v1, Lcom/mob/wrappers/ShareSDKWrapper;->state:I
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

.method public static isLogin(Ljava/lang/String;)Z
    .locals 1

    .line 140
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isOneKeyShareAvailable()Z
    .locals 1

    .line 197
    :try_start_0
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static login(Ljava/lang/String;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V
    .locals 2

    .line 38
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/mob/wrappers/ShareSDKWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/mob/wrappers/ShareSDKWrapper$1;-><init>(Ljava/lang/String;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V

    invoke-static {v1, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 49
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 51
    new-instance p0, Lcom/mob/wrappers/ShareSDKWrapper$2;

    invoke-direct {p0, p1}, Lcom/mob/wrappers/ShareSDKWrapper$2;-><init>(Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 68
    new-instance v0, Lcom/mob/wrappers/ShareSDKWrapper$3;

    invoke-direct {v0, p0, p1}, Lcom/mob/wrappers/ShareSDKWrapper$3;-><init>(Ljava/lang/String;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V

    invoke-static {v1, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static logout(Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    :cond_0
    return-void
.end method

.method public static oneKeyShare(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;",
            ")V"
        }
    .end annotation

    .line 207
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isOneKeyShareAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 213
    new-instance p0, Lcom/mob/wrappers/ShareSDKWrapper$7;

    invoke-direct {p0, p2}, Lcom/mob/wrappers/ShareSDKWrapper$7;-><init>(Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V

    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 228
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v2, p0, v1

    .line 229
    const-class v3, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 231
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 233
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_3
    :goto_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public static oneKeyShare(Ljava/util/HashMap;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 243
    invoke-static {v0, p0, p1}, Lcom/mob/wrappers/ShareSDKWrapper;->oneKeyShare(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V

    return-void
.end method

.method public static share(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/mob/wrappers/ShareSDKWrapper;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 152
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    new-instance p1, Lcom/mob/wrappers/ShareSDKWrapper$4;

    invoke-direct {p1, p0, p2}, Lcom/mob/wrappers/ShareSDKWrapper$4;-><init>(Ljava/lang/String;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V

    invoke-static {v1, p1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 162
    :cond_0
    new-instance p0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>(Ljava/util/HashMap;)V

    if-eqz p2, :cond_1

    .line 165
    new-instance p1, Lcom/mob/wrappers/ShareSDKWrapper$5;

    invoke-direct {p1, p2}, Lcom/mob/wrappers/ShareSDKWrapper$5;-><init>(Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 180
    :cond_1
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 183
    new-instance p1, Lcom/mob/wrappers/ShareSDKWrapper$6;

    invoke-direct {p1, p0, p2}, Lcom/mob/wrappers/ShareSDKWrapper$6;-><init>(Ljava/lang/String;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V

    invoke-static {v1, p1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :cond_3
    :goto_0
    return-void
.end method
