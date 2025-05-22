.class Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;
.super Ljava/lang/Object;
.source "CmdChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/camera/w4/CmdChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueueRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/camera/w4/CmdChannel;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/camera/w4/CmdChannel;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;->this$0:Lcom/powervision/gcs/camera/w4/CmdChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleNotification(Ljava/lang/String;)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmdChannel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleResponse(Ljava/lang/String;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmdChannel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "event"

    .line 142
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 146
    sget-object v0, Lcom/powervision/gcs/camera/w4/CmdChannel;->mListener:Lcom/powervision/gcs/camera/w4/IChannelListener;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/camera/w4/IChannelListener;->onChannelEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;->this$0:Lcom/powervision/gcs/camera/w4/CmdChannel;

    invoke-virtual {v0}, Lcom/powervision/gcs/camera/w4/CmdChannel;->readFromChannel()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    :goto_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "event"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-direct {p0, v0}, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;->handleResponse(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;->this$0:Lcom/powervision/gcs/camera/w4/CmdChannel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/camera/w4/CmdChannel;->access$002(Lcom/powervision/gcs/camera/w4/CmdChannel;Z)Z

    .line 176
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;->this$0:Lcom/powervision/gcs/camera/w4/CmdChannel;

    invoke-static {v0}, Lcom/powervision/gcs/camera/w4/CmdChannel;->access$100(Lcom/powervision/gcs/camera/w4/CmdChannel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    :try_start_3
    iget-object v1, p0, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;->this$0:Lcom/powervision/gcs/camera/w4/CmdChannel;

    invoke-static {v1}, Lcom/powervision/gcs/camera/w4/CmdChannel;->access$100(Lcom/powervision/gcs/camera/w4/CmdChannel;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 178
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 180
    :cond_1
    invoke-direct {p0, v0}, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;->handleNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;->this$0:Lcom/powervision/gcs/camera/w4/CmdChannel;

    invoke-virtual {v0}, Lcom/powervision/gcs/camera/w4/CmdChannel;->readFromChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "CmdChannel"

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
