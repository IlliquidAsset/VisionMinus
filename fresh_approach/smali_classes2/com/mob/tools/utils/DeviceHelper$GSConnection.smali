.class Lcom/mob/tools/utils/DeviceHelper$GSConnection;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/DeviceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GSConnection"
.end annotation


# instance fields
.field got:Z

.field private final iBinders:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mob/tools/utils/DeviceHelper;


# direct methods
.method private constructor <init>(Lcom/mob/tools/utils/DeviceHelper;)V
    .locals 0

    .line 4892
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->this$0:Lcom/mob/tools/utils/DeviceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4893
    iput-boolean p1, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->got:Z

    .line 4894
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->iBinders:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/utils/DeviceHelper;Lcom/mob/tools/utils/DeviceHelper$1;)V
    .locals 0

    .line 4892
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/DeviceHelper$GSConnection;-><init>(Lcom/mob/tools/utils/DeviceHelper;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 4898
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->iBinders:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4900
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public takeBinder()Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 4909
    iget-boolean v0, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->got:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4913
    iput-boolean v0, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->got:Z

    .line 4916
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->iBinders:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x5dc

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    .line 4910
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
