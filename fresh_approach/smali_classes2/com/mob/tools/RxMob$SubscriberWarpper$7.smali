.class Lcom/mob/tools/RxMob$SubscriberWarpper$7;
.super Ljava/lang/Object;
.source "RxMob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$SubscriberWarpper;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$SubscriberWarpper;Ljava/lang/Throwable;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$7;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    iput-object p2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$7;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 373
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 374
    check-cast p1, Lcom/mob/tools/RxMob$Subscriber;

    if-eqz p1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$7;->val$t:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 377
    iget-object p1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$7;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-virtual {p1}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "[UIThread/onError] Network request interrupted as Subscriber is null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/mob/tools/log/NLog;->crash(Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 382
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->crash(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
