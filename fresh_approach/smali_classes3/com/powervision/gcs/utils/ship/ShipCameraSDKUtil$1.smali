.class Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$1;
.super Ljava/lang/Object;
.source "ShipCameraSDKUtil.java"

# interfaces
.implements Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->deleteSingleFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$1;->this$0:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    const-string v0, "ShipCameraSDKUtil"

    const-string v1, "fail: SingleFile"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->notifyDeleteFail()V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCameraSDKUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->notifyDeleteSingle(Ljava/lang/String;)V

    return-void
.end method
