.class public Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;
.super Ljava/lang/Object;
.source "V3CustomNotification.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;


# instance fields
.field mCurrentBytes:J

.field mIcon:I

.field mNotification:Landroid/app/Notification;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mTicker:Ljava/lang/CharSequence;

.field mTimeRemaining:J

.field mTitle:Ljava/lang/CharSequence;

.field mTotalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 34
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    .line 35
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    .line 38
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public setCurrentBytes(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTicker:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTimeRemaining(J)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTimeRemaining:J

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    return-void
.end method

.method public updateNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 12

    .line 62
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    .line 64
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 66
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    const/16 v3, 0xa

    if-le v1, v3, :cond_0

    .line 69
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 74
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netease/apkextdownloader/R$layout;->status_bar_ongoing_event_progress_bar:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    sget v3, Lcom/netease/apkextdownloader/R$id;->title:I

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 80
    sget v3, Lcom/netease/apkextdownloader/R$id;->description:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 81
    sget v3, Lcom/netease/apkextdownloader/R$id;->description:I

    iget-wide v5, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    iget-wide v7, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    .line 82
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 83
    sget v3, Lcom/netease/apkextdownloader/R$id;->progress_bar_frame:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 84
    sget v3, Lcom/netease/apkextdownloader/R$id;->progress_bar:I

    iget-wide v5, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    shr-long v7, v5, v2

    long-to-int v8, v7

    iget-wide v9, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    shr-long/2addr v9, v2

    long-to-int v2, v9

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    cmp-long v11, v5, v9

    if-gtz v11, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1, v3, v8, v2, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 88
    sget v2, Lcom/netease/apkextdownloader/R$id;->time_remaining:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    sget v2, Lcom/netease/apkextdownloader/R$id;->time_remaining:I

    sget v3, Lcom/netease/apkextdownloader/R$string;->time_remaining_notification:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTimeRemaining:J

    .line 92
    invoke-static {v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 91
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 93
    sget p1, Lcom/netease/apkextdownloader/R$id;->progress_text:I

    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    .line 94
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressPercent(JJ)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 95
    sget p1, Lcom/netease/apkextdownloader/R$id;->appIcon:I

    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 96
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 97
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
