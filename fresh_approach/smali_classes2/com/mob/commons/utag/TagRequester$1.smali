.class Lcom/mob/commons/utag/TagRequester$1;
.super Lcom/mob/tools/RxMob$Subscriber;
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
        "Lcom/mob/tools/RxMob$Subscriber<",
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

    .line 57
    iput-object p1, p0, Lcom/mob/commons/utag/TagRequester$1;->a:Lcom/mob/commons/utag/TagRequester;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/mob/commons/utag/TagRequester$1;->a:Lcom/mob/commons/utag/TagRequester;

    invoke-static {v0}, Lcom/mob/commons/utag/TagRequester;->a(Lcom/mob/commons/utag/TagRequester;)Lcom/mob/commons/utag/TagRequester$UserTagsResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mob/commons/utag/TagRequester$1;->a:Lcom/mob/commons/utag/TagRequester;

    invoke-static {v0}, Lcom/mob/commons/utag/TagRequester;->a(Lcom/mob/commons/utag/TagRequester;)Lcom/mob/commons/utag/TagRequester$UserTagsResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/commons/utag/TagRequester$UserTagsResponse;->onResponse(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mob/commons/utag/TagRequester$1;->a:Lcom/mob/commons/utag/TagRequester;

    invoke-static {v0}, Lcom/mob/commons/utag/TagRequester;->b(Lcom/mob/commons/utag/TagRequester;)Lcom/mob/commons/utag/UserTagError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mob/commons/utag/TagRequester$1;->a:Lcom/mob/commons/utag/TagRequester;

    invoke-static {v0}, Lcom/mob/commons/utag/TagRequester;->b(Lcom/mob/commons/utag/TagRequester;)Lcom/mob/commons/utag/UserTagError;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/commons/utag/UserTagError;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/mob/commons/utag/TagRequester$1;->a(Ljava/util/HashMap;)V

    return-void
.end method
