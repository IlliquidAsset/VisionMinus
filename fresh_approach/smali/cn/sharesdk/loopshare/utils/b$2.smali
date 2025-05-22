.class final Lcn/sharesdk/loopshare/utils/b$2;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "AsyncProtocolInMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/b;->a(Lcn/sharesdk/loopshare/Scene;Lcn/sharesdk/loopshare/ActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$Subscriber<",
        "Lcn/sharesdk/loopshare/beans/LinkData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/ActionListener;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/ActionListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/b$2;->a:Lcn/sharesdk/loopshare/ActionListener;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/loopshare/beans/LinkData;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/b$2;->a:Lcn/sharesdk/loopshare/ActionListener;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {p1}, Lcn/sharesdk/loopshare/beans/ServerData;->a(Lcn/sharesdk/loopshare/beans/ServerData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p1}, Lcn/sharesdk/loopshare/beans/LinkData;->a()Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/b$2;->a:Lcn/sharesdk/loopshare/ActionListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/loopshare/ActionListener;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/b$2;->a:Lcn/sharesdk/loopshare/ActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcn/sharesdk/loopshare/beans/LinkData;->i()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/loopshare/ActionListener;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcn/sharesdk/loopshare/beans/LinkData;

    invoke-virtual {p0, p1}, Lcn/sharesdk/loopshare/utils/b$2;->a(Lcn/sharesdk/loopshare/beans/LinkData;)V

    return-void
.end method
