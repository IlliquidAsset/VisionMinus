.class Lcom/mob/commons/b/f$b;
.super Ljava/lang/Object;
.source "IdSupplier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/mob/commons/b/f;

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mob/commons/b/f;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/mob/commons/b/f$b;->b:Lcom/mob/commons/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcom/mob/commons/b/f$b;->a:Z

    .line 209
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/b/f$b;->c:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/commons/b/f;Lcom/mob/commons/b/f$1;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f$b;-><init>(Lcom/mob/commons/b/f;)V

    return-void
.end method


# virtual methods
.method public a(J)Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/mob/commons/b/f$b;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/mob/commons/b/f$b;->a:Z

    .line 224
    iget-object v0, p0, Lcom/mob/commons/b/f$b;->c:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x5dc

    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1

    .line 221
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 213
    :try_start_0
    iget-object p1, p0, Lcom/mob/commons/b/f$b;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
