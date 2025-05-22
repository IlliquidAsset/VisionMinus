.class Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
.super Ljava/lang/Object;
.source "AbstractPollingIoProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Processor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1060
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V
    .locals 0

    .line 1060
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1065
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    .line 1074
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1075
    iget-object v9, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v9, v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->select(J)I

    move-result v9

    .line 1076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    .line 1079
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    iget-object v7, v7, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v9, :cond_3

    const-wide/16 v7, 0x64

    cmp-long v12, v10, v7

    if-gez v12, :cond_3

    .line 1082
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isBrokenConnection()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1083
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    move-result-object v7

    const-string v8, "Broken connection"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    .line 1099
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Create a new selector. Selected is 0, delta = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1100
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->registerNewSelector()V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v2, 0xa

    .line 1111
    :goto_2
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I

    move-result v7

    add-int/2addr v3, v7

    .line 1113
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    if-lez v9, :cond_4

    .line 1120
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    .line 1124
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1125
    iget-object v9, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v9, v7, v8}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V

    .line 1128
    iget-object v9, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v9}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I

    move-result v9

    sub-int/2addr v3, v9

    .line 1131
    iget-object v9, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v9, v7, v8}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V

    if-nez v3, :cond_6

    .line 1136
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1138
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isSelectorEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    .line 1146
    :cond_5
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7, v8, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    .line 1157
    :cond_6
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isDisposing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1160
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1161
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/mina/core/session/IoSession;

    .line 1163
    invoke-interface {v9}, Lorg/apache/mina/core/session/IoSession;->isActive()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1164
    iget-object v8, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    check-cast v9, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {v8, v9}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_0

    .line 1170
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    .line 1179
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 1182
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    .line 1184
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 1176
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 1190
    :goto_4
    :try_start_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1191
    :try_start_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1192
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->doDispose()V

    .line 1194
    :cond_9
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    .line 1196
    :try_start_5
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1198
    :goto_5
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)Z

    return-void

    :goto_6
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)Z

    throw v0
.end method
