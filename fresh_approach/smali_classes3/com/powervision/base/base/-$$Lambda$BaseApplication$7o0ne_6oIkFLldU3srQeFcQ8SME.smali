.class public final synthetic Lcom/powervision/base/base/-$$Lambda$BaseApplication$7o0ne_6oIkFLldU3srQeFcQ8SME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/powervision/base/base/-$$Lambda$BaseApplication$7o0ne_6oIkFLldU3srQeFcQ8SME;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powervision/base/base/-$$Lambda$BaseApplication$7o0ne_6oIkFLldU3srQeFcQ8SME;

    invoke-direct {v0}, Lcom/powervision/base/base/-$$Lambda$BaseApplication$7o0ne_6oIkFLldU3srQeFcQ8SME;-><init>()V

    sput-object v0, Lcom/powervision/base/base/-$$Lambda$BaseApplication$7o0ne_6oIkFLldU3srQeFcQ8SME;->INSTANCE:Lcom/powervision/base/base/-$$Lambda$BaseApplication$7o0ne_6oIkFLldU3srQeFcQ8SME;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/powervision/base/base/BaseApplication;->lambda$setRxJavaErrorHandler$0(Ljava/lang/Throwable;)V

    return-void
.end method
