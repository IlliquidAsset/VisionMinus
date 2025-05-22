.class public final synthetic Lcom/powervision/base/utils/-$$Lambda$RxUtils$yJ2jTgyYaYsFbQquP0bxYNnmKQM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/FlowableTransformer;


# static fields
.field public static final synthetic INSTANCE:Lcom/powervision/base/utils/-$$Lambda$RxUtils$yJ2jTgyYaYsFbQquP0bxYNnmKQM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powervision/base/utils/-$$Lambda$RxUtils$yJ2jTgyYaYsFbQquP0bxYNnmKQM;

    invoke-direct {v0}, Lcom/powervision/base/utils/-$$Lambda$RxUtils$yJ2jTgyYaYsFbQquP0bxYNnmKQM;-><init>()V

    sput-object v0, Lcom/powervision/base/utils/-$$Lambda$RxUtils$yJ2jTgyYaYsFbQquP0bxYNnmKQM;->INSTANCE:Lcom/powervision/base/utils/-$$Lambda$RxUtils$yJ2jTgyYaYsFbQquP0bxYNnmKQM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 0

    invoke-static {p1}, Lcom/powervision/base/utils/RxUtils;->lambda$rxSchedulerHelper$0(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method
