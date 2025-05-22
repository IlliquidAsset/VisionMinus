.class public Lcn/sharesdk/framework/ShareSDK;
.super Ljava/lang/Object;
.source "ShareSDK.java"


# static fields
.field public static final SDK_TAG:Ljava/lang/String; = "SHARESDK"

.field public static final SDK_VERSION_CODE:I

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "3.6.8"

.field public static final SHARESDK_MOBLINK_RESTORE:Ljava/lang/String; = "sharesdk_moblink_restore"

.field private static a:Lcn/sharesdk/framework/i; = null

.field private static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "3.6.8"

    const-string v1, "\\."

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    mul-int/lit8 v3, v3, 0x64

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    sput v3, Lcn/sharesdk/framework/ShareSDK;->SDK_VERSION_CODE:I

    .line 30
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 292
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 293
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .line 326
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 327
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 320
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 321
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 314
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 315
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(II)V
    .locals 1

    .line 280
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 281
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(II)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 275
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 276
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a()Z
    .locals 1

    .line 302
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 303
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->g()Z

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 286
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 287
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b()Z
    .locals 1

    .line 308
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 309
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->h()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized c()V
    .locals 2

    const-class v0, Lcn/sharesdk/framework/ShareSDK;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcn/sharesdk/framework/i;

    invoke-direct {v1}, Lcn/sharesdk/framework/i;-><init>()V

    .line 48
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->d()V

    .line 49
    sput-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static closeDebug()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    sput-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return-void
.end method

.method public static deleteCache()V
    .locals 1

    .line 127
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 128
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->i()V

    return-void
.end method

.method public static getAuthActivity()Landroid/app/Activity;
    .locals 1

    .line 214
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 215
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomDataFromLoopShare()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 261
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->c()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getEnableAuthTag()Z
    .locals 1

    .line 219
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 220
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->b()Z

    move-result v0

    return v0
.end method

.method public static getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .line 151
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 152
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    return-object p0
.end method

.method public static getPlatformList()[Lcn/sharesdk/framework/Platform;
    .locals 1

    .line 140
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 141
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->e()[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    return-object v0
.end method

.method public static getQRCodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 227
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 228
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1, p2}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/sharesdk/framework/Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 77
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;

    move-result-object p0

    return-object p0
.end method

.method public static isDebug()Z
    .locals 1

    .line 200
    sget-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return v0
.end method

.method public static isRemoveCookieOnAuthorize()Z
    .locals 1

    .line 190
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 191
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->f()Z

    move-result v0

    return v0
.end method

.method public static logApiEvent(Ljava/lang/String;I)V
    .locals 1

    .line 161
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 162
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static logDemoEvent(ILcn/sharesdk/framework/Platform;)V
    .locals 1

    .line 156
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 157
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(ILcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method public static mobLinkGetMobID(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/sharesdk/framework/loopshare/MoblinkActionListener;",
            ")V"
        }
    .end annotation

    .line 235
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 237
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 239
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareSDK mobLinkGetMobID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static platformIdToName(I)Ljava/lang/String;
    .locals 1

    .line 179
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 180
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static platformNameToId(Ljava/lang/String;)I
    .locals 1

    .line 185
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 186
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static prepareLoopShare(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 3

    .line 247
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 249
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 251
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareSDK prepareLoopShare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static registerPlatform(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 88
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->d(Ljava/lang/Class;)V

    return-void
.end method

.method public static registerService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 61
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public static removeCookieOnAuthorize(Z)V
    .locals 1

    .line 119
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 120
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(Z)V

    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 209
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 210
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static setConnTimeout(I)V
    .locals 1

    .line 103
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 104
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(I)V

    return-void
.end method

.method public static setEnableAuthTag(Z)V
    .locals 1

    .line 204
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 205
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Z)V

    return-void
.end method

.method public static setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 174
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static setReadTimeout(I)V
    .locals 1

    .line 109
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 110
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(I)V

    return-void
.end method

.method public static unregisterPlatform(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 98
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->e(Ljava/lang/Class;)V

    return-void
.end method

.method public static unregisterService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->c()V

    .line 71
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(Ljava/lang/Class;)V

    return-void
.end method
