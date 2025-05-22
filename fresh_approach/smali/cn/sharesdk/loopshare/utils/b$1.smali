.class final Lcn/sharesdk/loopshare/utils/b$1;
.super Lcom/mob/tools/RxMob$QuickSubscribe;
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
        "Lcom/mob/tools/RxMob$QuickSubscribe<",
        "Lcn/sharesdk/loopshare/beans/LinkData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/Scene;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/Scene;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/b$1;->a:Lcn/sharesdk/loopshare/Scene;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$QuickSubscribe;-><init>()V

    return-void
.end method


# virtual methods
.method protected doNext(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "Lcn/sharesdk/loopshare/beans/LinkData;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/b$1;->a:Lcn/sharesdk/loopshare/Scene;

    invoke-virtual {v0}, Lcn/sharesdk/loopshare/Scene;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/b$1;->a:Lcn/sharesdk/loopshare/Scene;

    invoke-virtual {v1}, Lcn/sharesdk/loopshare/Scene;->getParams()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/loopshare/utils/h;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcn/sharesdk/loopshare/beans/LinkData;

    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
