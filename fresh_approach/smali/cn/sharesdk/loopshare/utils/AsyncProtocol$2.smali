.class final Lcn/sharesdk/loopshare/utils/AsyncProtocol$2;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "AsyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(ILcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$Subscriber<",
        "Lcn/sharesdk/loopshare/beans/SceneData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$2;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/loopshare/beans/SceneData;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$2;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;->onReceiveData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Lcn/sharesdk/loopshare/beans/SceneData;

    invoke-virtual {p0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$2;->a(Lcn/sharesdk/loopshare/beans/SceneData;)V

    return-void
.end method
