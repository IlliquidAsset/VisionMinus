.class Lcom/powervision/base/rxbus/RxBus$3;
.super Ljava/lang/Object;
.source "RxBus.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/rxbus/RxBus;->toObservable(ILjava/lang/Class;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lcom/powervision/base/rxbus/RxBus$Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/rxbus/RxBus;

.field final synthetic val$code:I

.field final synthetic val$eventType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/powervision/base/rxbus/RxBus;ILjava/lang/Class;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/powervision/base/rxbus/RxBus$3;->this$0:Lcom/powervision/base/rxbus/RxBus;

    iput p2, p0, Lcom/powervision/base/rxbus/RxBus$3;->val$code:I

    iput-object p3, p0, Lcom/powervision/base/rxbus/RxBus$3;->val$eventType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/powervision/base/rxbus/RxBus$Message;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lcom/powervision/base/rxbus/RxBus$Message;->access$100(Lcom/powervision/base/rxbus/RxBus$Message;)I

    move-result v0

    iget v1, p0, Lcom/powervision/base/rxbus/RxBus$3;->val$code:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus$3;->val$eventType:Ljava/lang/Class;

    invoke-static {p1}, Lcom/powervision/base/rxbus/RxBus$Message;->access$000(Lcom/powervision/base/rxbus/RxBus$Message;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    check-cast p1, Lcom/powervision/base/rxbus/RxBus$Message;

    invoke-virtual {p0, p1}, Lcom/powervision/base/rxbus/RxBus$3;->test(Lcom/powervision/base/rxbus/RxBus$Message;)Z

    move-result p1

    return p1
.end method
