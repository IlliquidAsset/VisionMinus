.class Lcom/powervision/natives/connect/W4ConnectSdk$1;
.super Lcom/powervision/natives/connect/ConnectTool;
.source "W4ConnectSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/W4ConnectSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/W4ConnectSdk;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/W4ConnectSdk;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectTool;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bodyTask \u91cd\u542f\u7ebf\u7a0b  size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v1, v1, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v1, v1, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_body_"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 260
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iput-object v1, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 262
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    new-instance v1, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "W4ConnectSdk"

    invoke-direct {v1, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 263
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    iget-object v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v1, v1, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 264
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 265
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 266
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "body \u5e72\u6389\u7ebf\u7a0b queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v1, v1, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v1, v1, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_body_"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/W4ConnectSdk$1;->clearBuffer()V

    return-void
.end method

.method public work(I)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "work connectStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_body_"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "\u5207IP wifi"

    .line 242
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->alterIp_Wifi()V

    goto :goto_0

    :pswitch_1
    const-string p1, "\u5207IP usb1"

    .line 238
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->alterIp_USB1()V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->connectSuccess()V

    goto :goto_0

    .line 230
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->relink()V

    goto :goto_0

    .line 221
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->connectSuccess()V

    goto :goto_0

    .line 217
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->relink()V

    goto :goto_0

    .line 225
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->relink()V

    goto :goto_0

    .line 213
    :pswitch_7
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->relink()V

    goto :goto_0

    .line 204
    :pswitch_8
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->connectDevice()V

    goto :goto_0

    .line 209
    :pswitch_9
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->relink()V

    goto :goto_0

    .line 200
    :pswitch_a
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->relink()V

    goto :goto_0

    .line 194
    :pswitch_b
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->relink()V

    goto :goto_0

    :pswitch_c
    const-string p1, "lzqSdk"

    const-string v0, "IDEAL\u5361\u4e3b"

    .line 189
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4ConnectSdk;->ideal()V

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectDevice()V

    .line 247
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_W4_API;->disConnectLink()I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
