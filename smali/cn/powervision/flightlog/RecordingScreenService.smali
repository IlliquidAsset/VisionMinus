.class public Lcn/powervision/flightlog/RecordingScreenService;
.super Landroid/app/Service;
.source "RecordingScreenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/flightlog/RecordingScreenService$MyBind;
    }
.end annotation


# instance fields
.field private mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 5

    .line 59
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcn/powervision/flightlog/RecordingScreenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 61
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcn/powervision/flightlog/RecordingScreenService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/powervision/flightlog/R$mipmap;->ic_launcher:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcn/powervision/flightlog/R$mipmap;->powervision_launcher_icon_new:I

    .line 64
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcn/powervision/flightlog/RecordingScreenService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/powervision/flightlog/R$string;->AP03_FlightLog_55:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "recorid_screen_id"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 71
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 74
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    const-string v1, "notification"

    .line 75
    invoke-virtual {p0, v1}, Lcn/powervision/flightlog/RecordingScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcn/powervision/flightlog/RecordingScreenService;->notificationManager:Landroid/app/NotificationManager;

    .line 76
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v3, 0x2

    const-string v4, "recorid_screen_name"

    invoke-direct {v1, v2, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 78
    iget-object v2, p0, Lcn/powervision/flightlog/RecordingScreenService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    iput v1, v0, Landroid/app/Notification;->defaults:I

    const/16 v1, 0x6e

    .line 83
    invoke-virtual {p0, v1, v0}, Lcn/powervision/flightlog/RecordingScreenService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/RecordingScreenService;->stopForeground(Z)V

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 44
    invoke-direct {p0}, Lcn/powervision/flightlog/RecordingScreenService;->createNotificationChannel()V

    const-string v0, "code"

    const/4 v1, -0x1

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "data"

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcn/powervision/flightlog/RecordingScreenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "media_projection"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjectionManager;

    iput-object v2, p0, Lcn/powervision/flightlog/RecordingScreenService;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 50
    invoke-virtual {v2, v0, v1}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/base/utils/FlightLogUtil;->setMediaProjection(Landroid/media/projection/MediaProjection;)V

    .line 52
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf38

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 55
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
