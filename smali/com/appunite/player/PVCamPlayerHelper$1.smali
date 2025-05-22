.class Lcom/appunite/player/PVCamPlayerHelper$1;
.super Lcom/powervision/gcs/usb2/MsgHandle;
.source "PVCamPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/player/PVCamPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/usb2/MsgHandle<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appunite/player/PVCamPlayerHelper;


# direct methods
.method constructor <init>(Lcom/appunite/player/PVCamPlayerHelper;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-direct {p0}, Lcom/powervision/gcs/usb2/MsgHandle;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 0

    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$1000(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$1000(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 0

    return-void
.end method

.method public work(Ljava/lang/Integer;)V
    .locals 6

    .line 171
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "lzqrtsp"

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    const-wide/16 v3, 0x1f4

    const-string v5, "0"

    if-eq p1, v2, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$400(Lcom/appunite/player/PVCamPlayerHelper;)V

    goto/16 :goto_3

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$300(Lcom/appunite/player/PVCamPlayerHelper;)V

    goto/16 :goto_3

    .line 224
    :cond_2
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    const/16 v0, 0x6f

    invoke-static {p1, v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$902(Lcom/appunite/player/PVCamPlayerHelper;I)I

    .line 226
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$700(Lcom/appunite/player/PVCamPlayerHelper;)Z

    move-result p1

    .line 227
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/powervision/gcs/usb2/MsgHandle;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 229
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$200(Lcom/appunite/player/PVCamPlayerHelper;)Landroid/view/TextureView;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 230
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$200(Lcom/appunite/player/PVCamPlayerHelper;)Landroid/view/TextureView;

    move-result-object p1

    new-instance v0, Lcom/appunite/player/PVCamPlayerHelper$1$3;

    invoke-direct {v0, p0}, Lcom/appunite/player/PVCamPlayerHelper$1$3;-><init>(Lcom/appunite/player/PVCamPlayerHelper$1;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 239
    :cond_3
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 243
    :goto_0
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-virtual {p1, v1}, Lcom/appunite/player/PVCamPlayerHelper;->sendReconnect(I)V

    goto/16 :goto_3

    :cond_4
    const-string p1, "msg RECONNECT  "

    .line 200
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$700(Lcom/appunite/player/PVCamPlayerHelper;)Z

    move-result p1

    .line 202
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v2}, Lcom/appunite/player/PVCamPlayerHelper;->access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/powervision/gcs/usb2/MsgHandle;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    .line 204
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$200(Lcom/appunite/player/PVCamPlayerHelper;)Landroid/view/TextureView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 205
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$200(Lcom/appunite/player/PVCamPlayerHelper;)Landroid/view/TextureView;

    move-result-object p1

    new-instance v1, Lcom/appunite/player/PVCamPlayerHelper$1$2;

    invoke-direct {v1, p0}, Lcom/appunite/player/PVCamPlayerHelper$1$2;-><init>(Lcom/appunite/player/PVCamPlayerHelper$1;)V

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 214
    :cond_5
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 218
    :goto_1
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-virtual {p1, v1}, Lcom/appunite/player/PVCamPlayerHelper;->sendReconnect(I)V

    :cond_6
    :goto_2
    const-string p1, "msg RECONNECT over  "

    .line 220
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 196
    :cond_7
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$600(Lcom/appunite/player/PVCamPlayerHelper;)V

    goto :goto_3

    .line 248
    :cond_8
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$600(Lcom/appunite/player/PVCamPlayerHelper;)V

    .line 249
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$500(Lcom/appunite/player/PVCamPlayerHelper;)V

    goto :goto_3

    :cond_9
    const-string p1, "changeASR "

    .line 173
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$200(Lcom/appunite/player/PVCamPlayerHelper;)Landroid/view/TextureView;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 175
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$200(Lcom/appunite/player/PVCamPlayerHelper;)Landroid/view/TextureView;

    move-result-object p1

    new-instance v0, Lcom/appunite/player/PVCamPlayerHelper$1$1;

    invoke-direct {v0, p0}, Lcom/appunite/player/PVCamPlayerHelper$1$1;-><init>(Lcom/appunite/player/PVCamPlayerHelper$1;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_a
    const-string p1, "init   "

    .line 191
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$500(Lcom/appunite/player/PVCamPlayerHelper;)V

    const-string p1, "init over  "

    .line 193
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return-void
.end method

.method public bridge synthetic work(Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/appunite/player/PVCamPlayerHelper$1;->work(Ljava/lang/Integer;)V

    return-void
.end method
