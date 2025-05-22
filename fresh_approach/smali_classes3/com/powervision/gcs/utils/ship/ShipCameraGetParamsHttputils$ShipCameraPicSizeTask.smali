.class Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;
.super Landroid/os/AsyncTask;
.source "ShipCameraGetParamsHttputils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShipCameraPicSizeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private cameraGetParamsListener:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;

.field final synthetic this$0:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;->this$0:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;->cameraGetParamsListener:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 294
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "->doInBackground: "

    const/4 v1, 0x0

    .line 303
    aget-object p1, p1, v1

    .line 306
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;->this$0:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;

    iget-object v2, v2, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    const/4 v2, 0x0

    .line 309
    :try_start_0
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 310
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$1;

    invoke-direct {v4, p0, v1}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$1;-><init>(Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;Lokhttp3/Response;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v1, :cond_0

    .line 317
    sget-object v3, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    sget-object v3, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->TAG:Ljava/lang/String;

    const-string v4, "response=null"

    invoke-static {v3, v4}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    sget-object v3, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 328
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v2

    :catch_0
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 334
    sget-object v3, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$2;

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$2;-><init>(Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 294
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 350
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask$3;-><init>(Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    sget-object v0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$ShipCameraPicSizeTask;->cameraGetParamsListener:Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 359
    invoke-interface {v0, p1}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-interface {v0}, Lcom/powervision/gcs/utils/ship/ShipCameraGetParamsHttputils$CameraGetParamsListener;->fail()V

    :cond_1
    :goto_0
    return-void
.end method
