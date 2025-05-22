.class Lcom/powervision/base/rxbus/RxBus$4;
.super Ljava/lang/Object;
.source "RxBus.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/rxbus/RxBus;->addSubscriber(Lcom/powervision/base/rxbus/SubscriberMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/rxbus/RxBus;

.field final synthetic val$subscriberMethod:Lcom/powervision/base/rxbus/SubscriberMethod;


# direct methods
.method constructor <init>(Lcom/powervision/base/rxbus/RxBus;Lcom/powervision/base/rxbus/SubscriberMethod;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/powervision/base/rxbus/RxBus$4;->this$0:Lcom/powervision/base/rxbus/RxBus;

    iput-object p2, p0, Lcom/powervision/base/rxbus/RxBus$4;->val$subscriberMethod:Lcom/powervision/base/rxbus/SubscriberMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus$4;->this$0:Lcom/powervision/base/rxbus/RxBus;

    iget-object v1, p0, Lcom/powervision/base/rxbus/RxBus$4;->val$subscriberMethod:Lcom/powervision/base/rxbus/SubscriberMethod;

    invoke-static {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->access$200(Lcom/powervision/base/rxbus/RxBus;Lcom/powervision/base/rxbus/SubscriberMethod;Ljava/lang/Object;)V

    return-void
.end method
