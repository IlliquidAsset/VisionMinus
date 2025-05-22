.class Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$2;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "AsyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$Subscriber<",
        "Lcn/sharesdk/loopshare/beans/LogData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$2;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method

.method private b(Lcn/sharesdk/loopshare/beans/LogData;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    .line 156
    invoke-virtual {p1}, Lcn/sharesdk/loopshare/beans/LogData;->h()I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 157
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$2;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;

    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->b(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/loopshare/beans/LogData;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$2;->b(Lcn/sharesdk/loopshare/beans/LogData;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$2;->b(Lcn/sharesdk/loopshare/beans/LogData;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Lcn/sharesdk/loopshare/beans/LogData;

    invoke-virtual {p0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$2;->a(Lcn/sharesdk/loopshare/beans/LogData;)V

    return-void
.end method
