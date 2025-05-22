.class Lcom/powervision/gcs/usb2/HttpUsbManager$1;
.super Ljava/lang/Object;
.source "HttpUsbManager.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/HttpUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/HttpUsbManager;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exception()V
    .locals 0

    return-void
.end method

.method public free()V
    .locals 0

    return-void
.end method

.method public work(Lcom/powervision/gcs/usb2/Msg;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 781
    iget v0, p1, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/Msg;->packet:[B

    invoke-static {v0, p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->access$400(Lcom/powervision/gcs/usb2/HttpUsbManager;[B)V

    goto/16 :goto_3

    .line 783
    :cond_0
    iget v0, p1, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "lzqHttp"

    if-ne v0, v1, :cond_1

    const-string p1, " \u63a5\u5230Cancel 5"

    .line 785
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, " onCancel != null"

    .line 787
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 789
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-interface {p1}, Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;->onCancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    :cond_1
    iget v0, p1, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 793
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, " onFailed != null"

    .line 794
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 796
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-interface {p1}, Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;->onFailed()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 799
    :cond_2
    iget p1, p1, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string p1, " onSuccess"

    .line 801
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 804
    :goto_2
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 805
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-interface {p1}, Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;->onSuccess()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
