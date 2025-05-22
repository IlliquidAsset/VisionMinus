.class public Lcom/mob/elp/c/a;
.super Ljava/lang/Object;
.source "ELPNotification.java"


# static fields
.field private static g:Lcom/mob/elp/c/a; = null

.field private static h:Z = false


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private b:I

.field private c:Landroid/app/NotificationChannel;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 6

    const-string v0, "."

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mob/elp/c/a;->c:Landroid/app/NotificationChannel;

    const-string v1, "\u901a\u77e5"

    .line 3
    iput-object v1, p0, Lcom/mob/elp/c/a;->d:Ljava/lang/String;

    .line 15
    :try_start_0
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 16
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/mob/elp/c/a;->a:Landroid/app/NotificationManager;

    .line 18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 19
    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/mob/elp/c/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mob/elp/c/a;->d:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v2, p0, Lcom/mob/elp/c/a;->c:Landroid/app/NotificationChannel;

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 22
    iget-object v2, p0, Lcom/mob/elp/c/a;->c:Landroid/app/NotificationChannel;

    const/high16 v4, -0x10000

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 23
    iget-object v2, p0, Lcom/mob/elp/c/a;->c:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v2, 0x0

    .line 26
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 29
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v1, p0, Lcom/mob/elp/c/a;->e:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 31
    :catch_0
    :try_start_2
    iput v2, p0, Lcom/mob/elp/c/a;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/elp/d/f;->a()Z

    move-result v1

    sput-boolean v1, Lcom/mob/elp/c/a;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 38
    :catchall_0
    :try_start_4
    sput-boolean v2, Lcom/mob/elp/c/a;->h:Z

    .line 40
    :goto_1
    invoke-static {}, Lcom/mob/elp/d/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {}, Lcom/mob/elp/d/c;->a()Lcom/mob/elp/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/elp/d/c;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/elp/c/a;->f:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_2

    .line 52
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 58
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    :catchall_2
    :cond_2
    :goto_2
    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/elp/c/a;
    .locals 2

    const-class v0, Lcom/mob/elp/c/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/elp/c/a;->g:Lcom/mob/elp/c/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/elp/c/a;

    invoke-direct {v1}, Lcom/mob/elp/c/a;-><init>()V

    sput-object v1, Lcom/mob/elp/c/a;->g:Lcom/mob/elp/c/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/mob/elp/c/a;->g:Lcom/mob/elp/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "appops"

    .line 6
    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 9
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "android.app.AppOpsManager"

    .line 11
    invoke-static {v3}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OP_POST_NOTIFICATION"

    .line 12
    invoke-static {v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "checkOpNoThrow"

    const/4 v5, 0x3

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x2

    aput-object v1, v5, p1

    invoke-static {v2, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public a(Lcom/mob/elp/PushMessage;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/elp/PushMessage;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mob/elp/c/a;->c:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Lcom/mob/elp/c/a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 20
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/elp/c/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    :goto_0
    iget-object v1, p1, Lcom/mob/elp/PushMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 24
    iget v1, p0, Lcom/mob/elp/c/a;->e:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 28
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 31
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v5, 0x0

    if-lt v2, v4, :cond_2

    .line 32
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 33
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 36
    iget-object v4, p0, Lcom/mob/elp/c/a;->f:Ljava/lang/String;

    const-string v6, "meizu"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/mob/elp/c/a;->f:Ljava/lang/String;

    const-string v9, "xiaomi"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 47
    :cond_3
    iget-object v4, p1, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v4, v4, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-ne v4, v1, :cond_4

    const-string v4, "elp_notify_window"

    .line 48
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_4
    if-ne v4, v8, :cond_5

    const-string v4, "elp_notify_card"

    .line 50
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_5
    if-ne v4, v7, :cond_6

    const-string v4, "elp_notify_nativ"

    .line 52
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_6
    if-ne v4, v6, :cond_b

    const-string v4, "elp_notify_banner"

    .line 54
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 55
    :cond_7
    :goto_1
    iget-object v4, p1, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v4, v4, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-ne v4, v1, :cond_8

    const-string v4, "elp_notify_window_no_padding"

    .line 56
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-ne v4, v8, :cond_9

    const-string v4, "elp_notify_card_no_padding"

    .line 58
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_9
    if-ne v4, v7, :cond_a

    const-string v4, "elp_notify_nativ_no_padding"

    .line 60
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_a
    if-ne v4, v6, :cond_b

    const-string v4, "elp_notify_banner_no_padding"

    .line 62
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    :goto_2
    const/4 v6, 0x0

    if-gtz v4, :cond_c

    move-object v9, v6

    goto :goto_3

    .line 78
    :cond_c
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v4, "tvTitle"

    .line 79
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    iget-object v11, p1, Lcom/mob/elp/PushMessage;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v10, "tvContent"

    .line 80
    invoke-static {v2, v10}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    iget-object v12, p1, Lcom/mob/elp/PushMessage;->content:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 81
    iget-object v11, p1, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v11, v11, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-ne v11, v1, :cond_d

    const-string v11, "ivImg2"

    .line 82
    invoke-static {v2, v11}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v11, v12}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const-string v11, "ivImg3"

    .line 83
    invoke-static {v2, v11}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v11, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const-string v8, "ivImg4"

    .line 84
    invoke-static {v2, v8}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v8, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_d
    const-string v7, "ivImg"

    .line 86
    invoke-static {v2, v7}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v7, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 88
    sget-boolean p2, Lcom/mob/elp/c/a;->h:Z

    if-eqz p2, :cond_e

    .line 89
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/4 v4, -0x1

    invoke-virtual {v9, p2, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 90
    invoke-static {v2, v10}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const v2, -0x777778

    invoke-virtual {v9, p2, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_e
    :goto_3
    if-eqz v9, :cond_17

    .line 91
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v2, 0x18

    if-eqz v9, :cond_10

    .line 92
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_f

    .line 93
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 94
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    goto :goto_4

    .line 96
    :cond_f
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 100
    :cond_10
    :goto_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "msg"

    .line 101
    invoke-virtual {v4, v7, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 102
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.mob.elp.intent.NOTIFICATION_OPENED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v7, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {}, Lcom/mob/elp/a/e;->a()Lcom/mob/elp/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/elp/a/e;->b()I

    move-result v4

    const/high16 v8, 0x8000000

    invoke-static {p2, v4, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 106
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 107
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_11

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_5

    :cond_11
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 108
    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_12

    .line 109
    iput-object v9, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 112
    :cond_12
    iget-object v3, p0, Lcom/mob/elp/c/a;->f:Ljava/lang/String;

    const-string v4, "oppo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v3, 0x12

    .line 113
    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 116
    :cond_13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    .line 117
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v7, 0xc

    .line 118
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v4, :cond_14

    if-ltz v3, :cond_14

    if-gtz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_15

    .line 133
    iput v5, v0, Landroid/app/Notification;->defaults:I

    .line 134
    iput-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 135
    iput-object v6, v0, Landroid/app/Notification;->vibrate:[J

    .line 136
    iput v5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 137
    iput v5, v0, Landroid/app/Notification;->ledOnMS:I

    .line 138
    iput v5, v0, Landroid/app/Notification;->ledARGB:I

    .line 143
    :cond_15
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_16

    .line 144
    iget-object v2, p0, Lcom/mob/elp/c/a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v2

    goto :goto_7

    .line 146
    :cond_16
    invoke-direct {p0, p2}, Lcom/mob/elp/c/a;->a(Landroid/content/Context;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v2

    .line 149
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    .line 152
    :goto_7
    iget-object v3, p0, Lcom/mob/elp/c/a;->a:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/mob/elp/c/a;->b:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/mob/elp/c/a;->b:I

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    if-eqz v2, :cond_17

    .line 155
    invoke-static {}, Lcom/mob/elp/a/e;->a()Lcom/mob/elp/a/e;

    move-result-object v0

    iget-object p1, p1, Lcom/mob/elp/PushMessage;->workId:Ljava/lang/String;

    const-string v1, "show"

    invoke-virtual {v0, p2, v1, p1}, Lcom/mob/elp/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public b()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/elp/c/a$a;

    invoke-direct {v0, p0}, Lcom/mob/elp/c/a$a;-><init>(Lcom/mob/elp/c/a;)V

    return-object v0
.end method
