.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$9;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "PVW4FirmWareUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
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

    .line 902
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$9;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceInfo(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 906
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getDeviceInfo(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 907
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 908
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4DeviceInfo;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4DeviceInfo;->updateversion:Ljava/lang/String;

    .line 909
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u62ff\u5230 CameraVersion "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lzqW4_Firm_body"

    invoke-static {v0, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    sput-object p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->CAMERAVERSION:Ljava/lang/String;

    :cond_0
    return-void
.end method
