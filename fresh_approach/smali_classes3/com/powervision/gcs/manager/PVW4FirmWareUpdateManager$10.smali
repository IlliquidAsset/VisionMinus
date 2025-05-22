.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$10;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Lcom/powervision/gcs/manager/ShipCameraGetParamsHttputils$CameraGetParamsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getCameraInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 941
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$10;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 0

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 3

    .line 944
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 945
    const-class v1, Lcom/powervision/gcs/manager/CameraDetailModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/manager/CameraDetailModel;

    .line 946
    invoke-virtual {v0}, Lcom/powervision/gcs/manager/CameraDetailModel;->getParameter()Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->getUpdateversion()Ljava/lang/String;

    move-result-object v0

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u62ff\u5230 CameraVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "lzqW4_Firm_body"

    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->CAMERAVERSION:Ljava/lang/String;

    return-void
.end method
