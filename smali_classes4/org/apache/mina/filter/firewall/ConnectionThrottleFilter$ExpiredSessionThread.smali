.class Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;
.super Ljava/lang/Thread;
.source "ConnectionThrottleFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpiredSessionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;-><init>(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v0}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$000(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v2}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$100(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 82
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v2}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$200(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 84
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    iget-object v4, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v4}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$200(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 88
    iget-object v6, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v6}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$000(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 89
    iget-object v4, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v4}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$200(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v0}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$100(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$100(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_0
    return-void
.end method
