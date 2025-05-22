.class Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$1;
.super Ljava/lang/Object;
.source "ShipCameraGetParamsHttputils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;Lokhttp3/Response;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$1;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;

    iput-object p2, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$1;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$1;->val$response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    return-void
.end method
