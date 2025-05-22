.class Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;
.super Ljava/lang/Thread;
.source "NewActiviteUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/NewActiviteUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiviteThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/NewActiviteUtil;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 127
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 136
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object v2

    new-instance v3, Lcom/powervision/natives/connect/ParamMsg;

    const-string v4, "PV_V_KEY_FLAG"

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    const-wide/16 v2, 0x32

    .line 137
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v0, v0, Lcom/powervision/gcs/utils/NewActiviteUtil;->acLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v1, v1, Lcom/powervision/gcs/utils/NewActiviteUtil;->acLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 143
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget v0, v0, Lcom/powervision/gcs/utils/NewActiviteUtil;->res:I

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v0, v0, Lcom/powervision/gcs/utils/NewActiviteUtil;->onActiviteListener:Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v0, v0, Lcom/powervision/gcs/utils/NewActiviteUtil;->onActiviteListener:Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;

    invoke-interface {v0}, Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;->onFailed()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 143
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 161
    :catch_0
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteThread:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteThread;

    return-void
.end method
