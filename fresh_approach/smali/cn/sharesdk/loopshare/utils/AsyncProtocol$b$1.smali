.class Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$1;
.super Lcom/mob/tools/RxMob$QuickSubscribe;
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
        "Lcom/mob/tools/RxMob$QuickSubscribe<",
        "Lcn/sharesdk/loopshare/beans/LogData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$1;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$QuickSubscribe;-><init>()V

    return-void
.end method


# virtual methods
.method protected doNext(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "Lcn/sharesdk/loopshare/beans/LogData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$1;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->a(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$1;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;

    iget v1, v1, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->b:I

    iget-object v2, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$1;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;

    iget v2, v2, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->c:I

    invoke-static {v0, v1, v2}, Lcn/sharesdk/loopshare/utils/h;->a(Ljava/lang/String;II)Lcn/sharesdk/loopshare/beans/LogData;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
