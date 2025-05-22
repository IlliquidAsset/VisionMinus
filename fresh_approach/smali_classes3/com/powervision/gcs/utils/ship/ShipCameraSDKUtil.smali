.class public Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;
.super Ljava/lang/Object;
.source "ShipCameraSDKUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipCameraSDKUtil"

.field private static util:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->videos:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->images:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;
    .locals 2

    .line 26
    sget-object v0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->util:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->util:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;

    invoke-direct {v1}, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;-><init>()V

    sput-object v1, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->util:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->util:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;

    return-object v0
.end method


# virtual methods
.method public deleteAllFile()V
    .locals 3

    .line 185
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->SHIP_CAMERA_DELETE_ALL_FILE:Ljava/lang/String;

    new-instance v2, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$4;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$4;-><init>(Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;)V

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->postRequest(Ljava/lang/String;Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;)V

    return-void
.end method

.method public deleteMediaFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p1}, Lio/reactivex/Flowable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;-><init>(Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;)V

    .line 99
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 94
    :cond_1
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->notifyDeleteFail()V

    return-void
.end method

.method public deleteMultiFile(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x2f

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteMultiFile: URL = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->SHIP_CAMERA_DELETE_MULTI_FILE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShipCameraSDKUtil"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->SHIP_CAMERA_DELETE_MULTI_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$2;-><init>(Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;)V

    invoke-virtual {p1, v0, v1}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->postRequest(Ljava/lang/String;Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;)V

    return-void

    .line 64
    :cond_2
    :goto_1
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->notifyDeleteFail()V

    return-void
.end method

.method public deleteSingleFile(Ljava/lang/String;)V
    .locals 3

    .line 42
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->SHIP_CAMERA_DELETE_SINGLE_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$1;-><init>(Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->postRequest(Ljava/lang/String;Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;)V

    return-void
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->images:Ljava/util/List;

    return-object v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->videos:Ljava/util/List;

    return-object v0
.end method
