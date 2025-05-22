.class Lcom/powervision/gcs/usb2/GCSConnectionManager$1;
.super Lcom/powervision/gcs/usb2/MsgHandle;
.source "GCSConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSConnectionManager;
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
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GCSConnectionManager;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-direct {p0}, Lcom/powervision/gcs/usb2/MsgHandle;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    const-string v0, "lzqError"

    const-string v1, "msg task \u5d29\u6e83\u4e86@@@@@@@@@"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$000(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/MsgTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$000(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/MsgTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 1

    .line 327
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->requestWifiSSid()V

    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 0

    return-void
.end method

.method public work(Ljava/lang/Integer;)V
    .locals 5

    .line 249
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setGOTOTYPE(I)V

    .line 250
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gototype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqUsb"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 290
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUsbMounted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 293
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->closePowerSdkOld()V

    .line 294
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->tryopenUsb2()V

    goto/16 :goto_0

    .line 295
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 296
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->openUsb1()V

    goto/16 :goto_0

    .line 298
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->openWifi()V

    goto/16 :goto_0

    .line 302
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->openWifi()V

    goto/16 :goto_0

    .line 269
    :cond_4
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUsbMounted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 278
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->openWifi()V

    goto :goto_0

    .line 281
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_6

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUsb2Avaliable()Z

    move-result p1

    if-nez p1, :cond_6

    .line 282
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->openUsb1()V

    goto :goto_0

    .line 284
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->tryopenUsb2()V

    goto :goto_0

    .line 256
    :cond_7
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUsbMounted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 257
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 258
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->closePowerSdkOld()V

    .line 259
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->tryopenUsb2()V

    goto :goto_0

    .line 260
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_d

    .line 261
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->openWifi()V

    goto :goto_0

    .line 264
    :cond_9
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->openWifi()V

    goto :goto_0

    .line 306
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 308
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->openUsb1()V

    goto :goto_0

    .line 309
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 311
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->tryopenUsb2()V

    goto :goto_0

    .line 312
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_d

    .line 313
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->openWifi()V

    :cond_d
    :goto_0
    const-wide/16 v0, 0x14

    .line 318
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const-string p1, "\u8d70\u5b8c\u4e00\u6b21 \u72b6\u6001\u673a "

    .line 322
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic work(Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager$1;->work(Ljava/lang/Integer;)V

    return-void
.end method
