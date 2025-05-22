.class Lcom/powervision/livestreaming/LiveStreaming$1;
.super Ljava/lang/Object;
.source "LiveStreaming.java"

# interfaces
.implements Lcom/powervision/livestreaming/core/listener/RESConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/LiveStreaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/livestreaming/LiveStreaming;


# direct methods
.method constructor <init>(Lcom/powervision/livestreaming/LiveStreaming;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseConnection()V
    .locals 2

    .line 67
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCloseConnection()"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$200(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$200(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/livestreaming/core/listener/RESConnectionListener;->onCloseConnection()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$100(Lcom/powervision/livestreaming/LiveStreaming;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onOpenConnectionFail()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOpenConnectionFail()"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-virtual {v0}, Lcom/powervision/livestreaming/LiveStreaming;->stopLiveStreaming()Z

    .line 59
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$200(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$200(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/livestreaming/core/listener/RESConnectionListener;->onOpenConnectionFail()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$100(Lcom/powervision/livestreaming/LiveStreaming;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onOpenConnectionSuccess()V
    .locals 2

    .line 46
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOpenConnectionSuccess()"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$100(Lcom/powervision/livestreaming/LiveStreaming;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$200(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$200(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/livestreaming/core/listener/RESConnectionListener;->onOpenConnectionSuccess()V

    :cond_0
    return-void
.end method

.method public onWriteError(I)V
    .locals 2

    .line 78
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWriteError()"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-virtual {v0}, Lcom/powervision/livestreaming/LiveStreaming;->stopLiveStreaming()Z

    .line 81
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$200(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {v0}, Lcom/powervision/livestreaming/LiveStreaming;->access$200(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/livestreaming/core/listener/RESConnectionListener;->onWriteError(I)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/powervision/livestreaming/LiveStreaming$1;->this$0:Lcom/powervision/livestreaming/LiveStreaming;

    invoke-static {p1}, Lcom/powervision/livestreaming/LiveStreaming;->access$100(Lcom/powervision/livestreaming/LiveStreaming;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
