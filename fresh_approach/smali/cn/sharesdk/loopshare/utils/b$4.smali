.class final Lcn/sharesdk/loopshare/utils/b$4;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "AsyncProtocolInMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/b;->a(Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$Subscriber<",
        "Lcn/sharesdk/loopshare/beans/ConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/b$4;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/loopshare/beans/ConfigData;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/b$4;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;->onReceiveData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcn/sharesdk/loopshare/beans/ConfigData;

    invoke-virtual {p0, p1}, Lcn/sharesdk/loopshare/utils/b$4;->a(Lcn/sharesdk/loopshare/beans/ConfigData;)V

    return-void
.end method
