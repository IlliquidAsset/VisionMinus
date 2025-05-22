.class Lcom/mob/commons/utag/TagRequester$2;
.super Lcom/mob/tools/RxMob$QuickSubscribe;
.source "TagRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/utag/TagRequester;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$QuickSubscribe<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/utag/TagRequester;


# direct methods
.method constructor <init>(Lcom/mob/commons/utag/TagRequester;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mob/commons/utag/TagRequester$2;->a:Lcom/mob/commons/utag/TagRequester;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$QuickSubscribe;-><init>()V

    return-void
.end method


# virtual methods
.method protected doNext(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/mob/commons/utag/TagRequester;->a()V

    .line 55
    invoke-static {}, Lcom/mob/commons/utag/TagRequester;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_0
    new-instance p1, Lcom/mob/commons/ForbThrowable;

    invoke-direct {p1}, Lcom/mob/commons/ForbThrowable;-><init>()V

    throw p1
.end method
