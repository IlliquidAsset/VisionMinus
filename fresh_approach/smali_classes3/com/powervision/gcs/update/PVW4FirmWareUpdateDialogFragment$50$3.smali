.class Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$3;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateDialogFragment.java"

# interfaces
.implements Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;)V
    .locals 0

    .line 1260
    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$3;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 0

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    .line 1263
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1264
    const-class v1, Lcom/powervision/gcs/manager/CameraDetailModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/CameraDetailModel;

    .line 1265
    invoke-virtual {p1}, Lcom/powervision/gcs/manager/CameraDetailModel;->getParameter()Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;

    move-result-object p1

    .line 1266
    invoke-virtual {p1}, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->getUpdateversion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PVW4"

    .line 1267
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$3;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    iget-object p1, p1, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {p1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$700(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1268
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$3;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    iget-object p1, p1, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$802(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;J)J

    .line 1269
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$3;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    iget-object p1, p1, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {p1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$500(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    :cond_0
    return-void
.end method
