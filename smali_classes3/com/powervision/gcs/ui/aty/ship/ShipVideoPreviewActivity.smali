.class public Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ShipVideoPreviewActivity.java"

# interfaces
.implements Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipVideoPreviewActivit"


# instance fields
.field private aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

.field private controller:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

.field private downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

.field niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    .line 194
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->renameAndPlayFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initVideoPlayer()V
    .locals 11

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setPlayerType(I)V

    .line 107
    new-instance v0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-direct {v0, p0, p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;-><init>(Landroid/content/Context;Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->controller:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getThmfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {v1}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->getThmCachePath(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 125
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/powervision/gcs/R$drawable;->blackboard:I

    .line 126
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->controller:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    .line 127
    invoke-virtual {v1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->imageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 129
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->getFileRealPath(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v1, v0, v2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    const-string v3, "LRV"

    const-string v4, "MP4"

    if-ne v0, v1, :cond_3

    .line 134
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->getFileLRVCachePath(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v1, v0, v2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 141
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipCachePath()Ljava/lang/String;

    move-result-object v9

    .line 142
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getTempLRVFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v10

    .line 143
    iget-object v5, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    const-wide/16 v6, -0x1

    invoke-virtual/range {v5 .. v10}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTaskAtFront(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVideoPlayer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ShipVideoPreviewActivit"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v1, v0, v2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->controller:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    .line 153
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->controller:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setFullScreenOrSmall(Z)V

    return-void
.end method

.method private renameAndPlayFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipVideoPreviewActivity$500FOhvnZNSRBVEuzZLUgMiQovs;

    invoke-direct {v1, p0, p2, p1}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipVideoPreviewActivity$500FOhvnZNSRBVEuzZLUgMiQovs;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public deleteButtonClick()V
    .locals 0

    return-void
.end method

.method public downloadButtonClick()V
    .locals 0

    return-void
.end method

.method protected getContentView()I
    .locals 1

    .line 51
    sget v0, Lcom/powervision/gcs/R$layout;->activity_ship_media_video_preview:I

    return v0
.end method

.method protected getIntentData(Landroid/content/Intent;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->getIntentData(Landroid/content/Intent;)V

    const-string v0, "json"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->setRequestedOrientation(I)V

    .line 66
    sget p1, Lcom/powervision/gcs/R$id;->nice_video_player:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 67
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 68
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 73
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->initVideoPlayer()V

    return-void
.end method

.method public synthetic lambda$null$0$ShipVideoPreviewActivity(Ljava/lang/String;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setDownloadStatus(I)V

    .line 252
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->releasePlayer()V

    .line 253
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->niceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->start()V

    return-void
.end method

.method public synthetic lambda$renameAndPlayFile$1$ShipVideoPreviewActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getTempLRVFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {p2}, Lcom/powervision/gcs/utils/ShipHelper;->getLRVFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 248
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/FileUtil;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipVideoPreviewActivity$W9VsIKSEpb3JKaxp7w0vjfruKwY;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipVideoPreviewActivity$W9VsIKSEpb3JKaxp7w0vjfruKwY;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 256
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {p2}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :goto_0
    return-void
.end method

.method public onBackClick()V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 186
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 187
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 188
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->controller:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setFullScreenOrSmall(Z)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->controller:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setFullScreenOrSmall(Z)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 174
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    .line 178
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelAllDownload(Z)V

    .line 179
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v2}, Lcom/powervision/localhttp/PVW4DownloadManager;->removeAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 181
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->controller:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setFullScreenOrSmall(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onResume()V

    .line 81
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->resumeNiceVideoPlayer()V

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->controller:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->onActivityResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onStop()V

    .line 90
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->suspendNiceVideoPlayer()V

    return-void
.end method
