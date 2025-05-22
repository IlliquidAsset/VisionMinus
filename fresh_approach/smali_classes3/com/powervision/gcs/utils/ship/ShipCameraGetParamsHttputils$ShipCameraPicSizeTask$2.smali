.class Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$2;
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

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;Ljava/io/IOException;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$2;->this$1:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;

    iput-object p2, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$2;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$2;->val$e:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    return-void
.end method
