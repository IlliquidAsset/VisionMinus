.class Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;
.super Ljava/lang/Object;
.source "AbstractConcurrentProcessor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->startProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$100(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 141
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$100(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$208(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)J

    .line 145
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$300(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/Processor;

    move-result-object v0

    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v2}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v2

    iget-object v2, v2, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->row:[Ljava/lang/String;

    iget-object v3, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v3}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v3

    iget-object v3, v3, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->context:Ljava/lang/Object;

    check-cast v3, Lcom/univocity/parsers/common/Context;

    invoke-interface {v0, v2, v3}, Lcom/univocity/parsers/common/processor/core/Processor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    .line 146
    :goto_2
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->next:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$100(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->next:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    if-nez v0, :cond_1

    return-object v1

    .line 150
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v1

    iget-object v1, v1, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->next:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    invoke-static {v0, v1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$002(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    .line 153
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$408(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)J

    .line 154
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$500(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$600(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$600(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 157
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 161
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$208(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)J

    .line 163
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$300(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/Processor;

    move-result-object v0

    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v2}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v2

    iget-object v2, v2, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->row:[Ljava/lang/String;

    iget-object v3, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v3}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v3

    iget-object v3, v3, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->context:Ljava/lang/Object;

    check-cast v3, Lcom/univocity/parsers/common/Context;

    invoke-interface {v0, v2, v3}, Lcom/univocity/parsers/common/processor/core/Processor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    .line 164
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    move-result-object v2

    iget-object v2, v2, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->next:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    invoke-static {v0, v2}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->access$002(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    goto :goto_3

    :cond_4
    return-object v1
.end method
