.class Lcom/powervision/gcs/utils/io/SonarSocket$2;
.super Ljava/lang/Object;
.source "SonarSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/io/SonarSocket;->startWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/io/SonarSocket;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/io/SonarSocket;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-boolean v0, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->isRun:Z

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-static {v0}, Lcom/powervision/gcs/utils/io/SonarSocket;->access$300(Lcom/powervision/gcs/utils/io/SonarSocket;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-static {v1}, Lcom/powervision/gcs/utils/io/SonarSocket;->access$300(Lcom/powervision/gcs/utils/io/SonarSocket;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v1, v1, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 160
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-static {v2}, Lcom/powervision/gcs/utils/io/SonarSocket;->access$300(Lcom/powervision/gcs/utils/io/SonarSocket;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v2, v2, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-static {v3}, Lcom/powervision/gcs/utils/io/SonarSocket;->access$300(Lcom/powervision/gcs/utils/io/SonarSocket;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 163
    iget-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v2, v2, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 164
    iget-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket$2;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-static {v2}, Lcom/powervision/gcs/utils/io/SonarSocket;->access$300(Lcom/powervision/gcs/utils/io/SonarSocket;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 167
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1

    .line 173
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 175
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 177
    :goto_2
    monitor-exit v1

    goto :goto_0

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 170
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :cond_1
    return-void
.end method
