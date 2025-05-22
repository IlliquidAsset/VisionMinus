.class Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$4;
.super Ljava/lang/Object;
.source "ShipCameraSDKUtil.java"

# interfaces
.implements Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->deleteAllFile()V
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

    .line 185
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil$4;->this$0:Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 1

    .line 193
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->notifyDeleteFail()V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 0

    .line 188
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/ship/ShipCameraSDKUtil;->deleteAllFile()V

    return-void
.end method
