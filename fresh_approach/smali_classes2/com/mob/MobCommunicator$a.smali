.class Lcom/mob/MobCommunicator$a;
.super Lcom/mob/tools/RxMob$QuickSubscribe;
.source "MobCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobCommunicator;->request(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/MobCommunicator$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$QuickSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/mob/MobCommunicator;


# direct methods
.method constructor <init>(Lcom/mob/MobCommunicator;ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/MobCommunicator$a;->f:Lcom/mob/MobCommunicator;

    iput-boolean p2, p0, Lcom/mob/MobCommunicator$a;->a:Z

    iput-object p3, p0, Lcom/mob/MobCommunicator$a;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/mob/MobCommunicator$a;->c:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/mob/MobCommunicator$a;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/mob/MobCommunicator$a;->e:Z

    invoke-direct {p0}, Lcom/mob/tools/RxMob$QuickSubscribe;-><init>()V

    return-void
.end method


# virtual methods
.method protected doNext(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->isFor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mob/MobCommunicator$a;->f:Lcom/mob/MobCommunicator;

    iget-boolean v2, p0, Lcom/mob/MobCommunicator$a;->a:Z

    iget-object v3, p0, Lcom/mob/MobCommunicator$a;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mob/MobCommunicator$a;->c:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/mob/MobCommunicator$a;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/mob/MobCommunicator$a;->e:Z

    invoke-virtual/range {v1 .. v6}, Lcom/mob/MobCommunicator;->requestSynchronized(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
