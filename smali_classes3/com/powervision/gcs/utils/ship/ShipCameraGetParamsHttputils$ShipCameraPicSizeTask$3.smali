.class Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$3;
.super Ljava/lang/Object;
.source "ShipCameraGetParamsHttputils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$3;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "onPostExecute"

    .line 353
    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    return-void
.end method
