.class Lcom/powervision/condition/widget/MovingPointOverlay$c;
.super Ljava/lang/Object;
.source "MovingPointOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/condition/widget/MovingPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/widget/MovingPointOverlay;


# direct methods
.method private constructor <init>(Lcom/powervision/condition/widget/MovingPointOverlay;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/condition/widget/MovingPointOverlay;Lcom/powervision/condition/widget/MovingPointOverlay$1;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lcom/powervision/condition/widget/MovingPointOverlay$c;-><init>(Lcom/powervision/condition/widget/MovingPointOverlay;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$202(Lcom/powervision/condition/widget/MovingPointOverlay;J)J

    .line 325
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    sget-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->b:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    invoke-static {v0, v1}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$302(Lcom/powervision/condition/widget/MovingPointOverlay;Lcom/powervision/condition/widget/MovingPointOverlay$a;)Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 326
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    iget-object v0, v0, Lcom/powervision/condition/widget/MovingPointOverlay;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    iget-object v0, v0, Lcom/powervision/condition/widget/MovingPointOverlay;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-static {v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$400(Lcom/powervision/condition/widget/MovingPointOverlay;)I

    move-result v0

    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-static {v1}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$500(Lcom/powervision/condition/widget/MovingPointOverlay;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    .line 329
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-static {v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$700(Lcom/powervision/condition/widget/MovingPointOverlay;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 330
    :try_start_1
    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    iget-object v1, v1, Lcom/powervision/condition/widget/MovingPointOverlay;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    monitor-exit v0

    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-static {v1}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$300(Lcom/powervision/condition/widget/MovingPointOverlay;)Lcom/powervision/condition/widget/MovingPointOverlay$a;

    move-result-object v1

    sget-object v2, Lcom/powervision/condition/widget/MovingPointOverlay$a;->d:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    if-eq v1, v2, :cond_1

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-static {v3}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$200(Lcom/powervision/condition/widget/MovingPointOverlay;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 336
    iget-object v3, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-static {v3, v1, v2}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$800(Lcom/powervision/condition/widget/MovingPointOverlay;J)Lcom/powervision/base/nationmap/model/IPoint;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-static {v2}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$900(Lcom/powervision/condition/widget/MovingPointOverlay;)Lcom/powervision/condition/widget/NationMarker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/condition/widget/NationMarker;->setGeoPoint(Lcom/powervision/base/nationmap/model/IPoint;)V

    .line 338
    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    sget-object v2, Lcom/powervision/condition/widget/MovingPointOverlay$a;->c:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    invoke-static {v1, v2}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$302(Lcom/powervision/condition/widget/MovingPointOverlay;Lcom/powervision/condition/widget/MovingPointOverlay$a;)Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 340
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :try_start_2
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-static {v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$600(Lcom/powervision/condition/widget/MovingPointOverlay;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 340
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay$c;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    sget-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->e:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    invoke-static {v0, v1}, Lcom/powervision/condition/widget/MovingPointOverlay;->access$302(Lcom/powervision/condition/widget/MovingPointOverlay;Lcom/powervision/condition/widget/MovingPointOverlay$a;)Lcom/powervision/condition/widget/MovingPointOverlay$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
