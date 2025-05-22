.class Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3$1;
.super Ljava/lang/Object;
.source "ShipCameraSDKUtil.java"

# interfaces
.implements Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3$1;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    const-string v0, "ShipCameraSDKUtil"

    const-string v1, "fail: MultiFile"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->notifyDeleteFail()V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiFilesuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCameraSDKUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3$1;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;

    iget-object v0, v0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3$1;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;

    iget-object v0, v0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;->s:Lorg/reactivestreams/Subscription;

    iget-object v1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3$1;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;

    iget v1, v1, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;->maxDeleteFileCount:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 163
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3$1;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;

    iget-boolean v0, v0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$3;->isLastCollection:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->notifyDeleteMulti(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
