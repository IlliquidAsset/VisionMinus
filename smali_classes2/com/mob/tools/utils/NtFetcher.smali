.class public Lcom/mob/tools/utils/NtFetcher;
.super Ljava/lang/Object;
.source "NtFetcher.java"


# static fields
.field private static instance:Lcom/mob/tools/utils/NtFetcher;


# instance fields
.field private context:Landroid/content/Context;

.field private device:Lcom/mob/tools/utils/DeviceHelper;

.field private dtNtType:Ljava/lang/Integer;

.field private ntType:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mob/tools/utils/NtFetcher;->context:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    .line 41
    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->isSensitiveDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->prepare()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/utils/NtFetcher;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->refreshNet()V

    return-void
.end method

.method private getDataNtType()I
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 237
    :cond_0
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x65

    .line 238
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x13

    .line 240
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 243
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/NtFetcher;
    .locals 2

    .line 47
    sget-object v0, Lcom/mob/tools/utils/NtFetcher;->instance:Lcom/mob/tools/utils/NtFetcher;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/mob/tools/utils/NtFetcher;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/NtFetcher;->instance:Lcom/mob/tools/utils/NtFetcher;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/mob/tools/utils/NtFetcher;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/NtFetcher;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/utils/NtFetcher;->instance:Lcom/mob/tools/utils/NtFetcher;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 54
    :cond_1
    :goto_0
    sget-object p0, Lcom/mob/tools/utils/NtFetcher;->instance:Lcom/mob/tools/utils/NtFetcher;

    return-object p0
.end method

.method private getNetworkType()Ljava/lang/String;
    .locals 2

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 286
    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 287
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 314
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ethernet"

    return-object v0

    :pswitch_1
    const-string v0, "dummy"

    return-object v0

    :pswitch_2
    const-string v0, "bluetooth"

    return-object v0

    :pswitch_3
    const-string v0, "wimax"

    return-object v0

    :cond_0
    const-string v0, "wifi"

    return-object v0

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->is5GMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "5G"

    return-object v0

    .line 296
    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->is4GMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "4G"

    return-object v0

    .line 299
    :cond_3
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->isFastMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "3G"

    goto :goto_0

    :cond_4
    const-string v0, "2G"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 319
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_5
    const-string v0, "none"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 117
    new-instance v0, Lcom/mob/tools/utils/NtFetcher$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/NtFetcher$1;-><init>(Lcom/mob/tools/utils/NtFetcher;)V

    return-object v0
.end method

.method private is4GMobileNetwork()Z
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x13

    .line 427
    :try_start_0
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    .line 430
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v1
.end method

.method private is5GCommon()Z
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x13

    .line 411
    :try_start_0
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    .line 414
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v1
.end method

.method private is5GHw()Z
    .locals 4

    const/4 v0, 0x0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "huawei"

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HUAWEI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 356
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    const/16 v2, 0x81

    .line 357
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x83

    .line 358
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 366
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method private is5GMobileNetwork()Z
    .locals 2

    .line 326
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->is5GHw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->maybe5G()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 334
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->is5GCommon()Z

    move-result v0

    return v0
.end method

.method private isFastMobileNetwork()Z
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x13

    .line 443
    :try_start_0
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    return v2

    :catchall_0
    move-exception v0

    .line 463
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private maybe5G()Z
    .locals 4

    const/4 v0, 0x0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 383
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x81

    .line 387
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x82

    .line 388
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method private prepare()V
    .locals 4

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1a

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    if-lt v1, v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    .line 65
    invoke-virtual {v1, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->initNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 68
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    .line 69
    invoke-virtual {v1, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 71
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 72
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->initNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->registerRcv()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 79
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private refreshNet()V
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->ntType:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->getDataNtType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->dtNtType:Ljava/lang/Integer;

    return-void
.end method

.method private registerRcv()V
    .locals 7

    .line 249
    new-instance v0, Lcom/mob/tools/utils/NtFetcher$2;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/NtFetcher$2;-><init>(Lcom/mob/tools/utils/NtFetcher;)V

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->receiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->context:Landroid/content/Context;

    const-string v2, "registerReceiver"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mob/tools/utils/NtFetcher;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/BroadcastReceiver;

    aput-object v3, v0, v6

    const-class v3, Landroid/content/IntentFilter;

    aput-object v3, v0, v5

    invoke-static {v1, v2, v4, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private unregisterRcv()V
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->context:Landroid/content/Context;

    const-string v2, "unregisterReceiver"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/BroadcastReceiver;

    aput-object v3, v0, v5

    invoke-static {v1, v2, v4, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->receiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getDtNtType()I
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isSensitiveDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->dtNtType:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->getDataNtType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->dtNtType:Ljava/lang/Integer;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->dtNtType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNtType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->device:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isSensitiveDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->ntType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->ntType:Ljava/lang/String;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->ntType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recycle()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->unregisterRcv()V

    return-void
.end method
