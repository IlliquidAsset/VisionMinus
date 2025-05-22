.class public Lcom/powervision/gcs/utils/ShipFFmpegController;
.super Ljava/lang/Object;
.source "ShipFFmpegController.java"

# interfaces
.implements Lcom/appunite/ffmpeg/FFmpegListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public isRenderSuccess:Z

.field private isStopFFConnStatus:Z

.field private mContext:Landroid/content/Context;

.field private mRenderListener:Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;

.field private mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

.field private onRenderSuccess:Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/powervision/gcs/utils/ShipFFmpegController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/utils/ShipFFmpegController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->isStopFFConnStatus:Z

    .line 20
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->isRenderSuccess:Z

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRenderListener()Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->mRenderListener:Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;

    return-object v0
.end method

.method public onConnectTimeout()V
    .locals 2

    .line 102
    sget-object v0, Lcom/powervision/gcs/utils/ShipFFmpegController;->TAG:Ljava/lang/String;

    const-string v1, "onConnectTimeout: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFFConnStatus(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

    if-eqz p1, :cond_1

    const/16 v3, 0x11

    new-array v1, v1, [Ljava/lang/Integer;

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-interface {p1, v3, v0, v1}, Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;->onUnderWaterViewChange(ILjava/lang/Object;[Ljava/lang/Integer;)V

    .line 83
    :cond_1
    iput-boolean v2, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->isStopFFConnStatus:Z

    goto :goto_0

    .line 74
    :cond_2
    iget-boolean p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->isStopFFConnStatus:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

    if-eqz p1, :cond_3

    const/16 v3, 0x10

    new-array v4, v1, [Ljava/lang/Integer;

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {p1, v3, v0, v4}, Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;->onUnderWaterViewChange(ILjava/lang/Object;[Ljava/lang/Integer;)V

    .line 76
    iput-boolean v1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->isStopFFConnStatus:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onFFDataSourceLoaded(Lcom/appunite/ffmpeg/FFmpegError;[Lcom/appunite/ffmpeg/FFmpegStreamInfo;)V
    .locals 2

    if-nez p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

    const/16 p2, 0x10

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1}, Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;->onUnderWaterViewChange(ILjava/lang/Object;[Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onFFPause(Lcom/appunite/ffmpeg/NotPlayingException;)V
    .locals 0

    return-void
.end method

.method public onFFRecordStatus(I)V
    .locals 0

    return-void
.end method

.method public onFFRenderStatus(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 109
    iget-object p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->mRenderListener:Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1}, Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;->renderSuccess()V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->onRenderSuccess:Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;

    if-eqz p1, :cond_1

    .line 113
    invoke-interface {p1}, Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;->renderSuccess()V

    :cond_1
    return-void
.end method

.method public onFFResume(Lcom/appunite/ffmpeg/NotPlayingException;)V
    .locals 0

    return-void
.end method

.method public onFFSeeked(Lcom/appunite/ffmpeg/NotPlayingException;)V
    .locals 0

    return-void
.end method

.method public onFFStop()V
    .locals 0

    return-void
.end method

.method public onFFUpdateTime(JJZ)V
    .locals 0

    return-void
.end method

.method public onFrameUpdate(I)V
    .locals 0

    return-void
.end method

.method public setOnRenderSuccess(Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->onRenderSuccess:Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;

    return-void
.end method

.method public setRenderListener(Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->mRenderListener:Lcom/powervision/gcs/utils/ShipFFmpegController$OnFFRenderListener;

    return-void
.end method

.method public setUnderWaterViewChangeListener(Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/utils/ShipFFmpegController;->mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

    return-void
.end method
