.class public Lcn/sharesdk/loopshare/utils/AsyncProtocol;
.super Ljava/lang/Object;
.source "AsyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;,
        Lcn/sharesdk/loopshare/utils/AsyncProtocol$OnGetSceneListner;,
        Lcn/sharesdk/loopshare/utils/AsyncProtocol$OnGetConfigListener;,
        Lcn/sharesdk/loopshare/utils/AsyncProtocol$a;,
        Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;
    }
.end annotation


# direct methods
.method public static a()Lcn/sharesdk/loopshare/beans/ConfigData;
    .locals 1

    .line 75
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->b()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener<",
            "Lcn/sharesdk/loopshare/beans/SceneData;",
            ">;)V"
        }
    .end annotation

    .line 198
    new-instance v0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$1;-><init>(I)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object p0

    .line 205
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 206
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 207
    new-instance v0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$2;

    invoke-direct {v0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$2;-><init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 1

    .line 83
    new-instance v0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;-><init>(Ljava/lang/String;II)V

    .line 84
    invoke-virtual {v0}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->a()V

    return-void
.end method

.method public static b()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {v0, v1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(ILcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V

    return-void
.end method
