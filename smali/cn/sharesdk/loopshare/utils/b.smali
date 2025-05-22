.class public Lcn/sharesdk/loopshare/utils/b;
.super Ljava/lang/Object;
.source "AsyncProtocolInMain.java"


# direct methods
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

    .line 86
    new-instance v0, Lcn/sharesdk/loopshare/utils/b$7;

    invoke-direct {v0, p0}, Lcn/sharesdk/loopshare/utils/b$7;-><init>(I)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object p0

    .line 93
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 94
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 95
    new-instance v0, Lcn/sharesdk/loopshare/utils/b$8;

    invoke-direct {v0, p1}, Lcn/sharesdk/loopshare/utils/b$8;-><init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method

.method public static a(Lcn/sharesdk/loopshare/Scene;Lcn/sharesdk/loopshare/ActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/loopshare/Scene;",
            "Lcn/sharesdk/loopshare/ActionListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lcn/sharesdk/loopshare/utils/b$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/loopshare/utils/b$1;-><init>(Lcn/sharesdk/loopshare/Scene;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object p0

    .line 26
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 27
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 28
    new-instance v0, Lcn/sharesdk/loopshare/utils/b$2;

    invoke-direct {v0, p1}, Lcn/sharesdk/loopshare/utils/b$2;-><init>(Lcn/sharesdk/loopshare/ActionListener;)V

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method

.method public static a(Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener<",
            "Lcn/sharesdk/loopshare/beans/ConfigData;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lcn/sharesdk/loopshare/utils/b$3;

    invoke-direct {v0}, Lcn/sharesdk/loopshare/utils/b$3;-><init>()V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 51
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 52
    new-instance v1, Lcn/sharesdk/loopshare/utils/b$4;

    invoke-direct {v1, p0}, Lcn/sharesdk/loopshare/utils/b$4;-><init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener<",
            "Lcn/sharesdk/loopshare/beans/SceneData;",
            ">;)V"
        }
    .end annotation

    .line 63
    new-instance v0, Lcn/sharesdk/loopshare/utils/b$5;

    invoke-direct {v0, p0}, Lcn/sharesdk/loopshare/utils/b$5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object p0

    .line 70
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 71
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 72
    new-instance v0, Lcn/sharesdk/loopshare/utils/b$6;

    invoke-direct {v0, p1}, Lcn/sharesdk/loopshare/utils/b$6;-><init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method
