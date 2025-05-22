.class Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;
.super Landroid/os/Handler;
.source "MessageDispatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/MessageDispatchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandleMessageHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageDispatchUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->notifyListeners(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 172
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v1

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->retryRequest(ILjava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/CmdModel$Builder;->retryTimes(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addRepeatMessage(Lcom/powervision/localhttp/CmdModel;)V

    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Lcom/powervision/localhttp/entity/TimeoutModel;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, v1, v2}, Lcom/powervision/localhttp/entity/TimeoutModel;-><init>(II)V

    .line 175
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->notifyListeners(IILjava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    new-instance v0, Lcom/powervision/localhttp/entity/TimeoutModel;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, v1, v2}, Lcom/powervision/localhttp/entity/TimeoutModel;-><init>(II)V

    .line 179
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->notifyListeners(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
