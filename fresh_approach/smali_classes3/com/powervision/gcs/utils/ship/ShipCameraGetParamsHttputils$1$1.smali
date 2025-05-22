.class Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1$1;
.super Ljava/lang/Object;
.source "ShipCameraGetParamsHttputils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1;

.field final synthetic val$finalJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1;Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1$1;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1;

    iput-object p2, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1$1;->val$finalJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1$1;->val$finalJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1$1;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1;

    iget-object v0, v0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1;->val$cameraGetParamsListener:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;

    iget-object v1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1$1;->val$finalJson:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1$1;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1;

    iget-object v0, v0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$1;->val$cameraGetParamsListener:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;

    invoke-interface {v0}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;->fail()V

    :goto_0
    return-void
.end method
