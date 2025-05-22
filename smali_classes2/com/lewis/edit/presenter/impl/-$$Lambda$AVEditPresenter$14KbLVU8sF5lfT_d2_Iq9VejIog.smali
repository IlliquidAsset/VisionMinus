.class public final synthetic Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$14KbLVU8sF5lfT_d2_Iq9VejIog;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$14KbLVU8sF5lfT_d2_Iq9VejIog;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$14KbLVU8sF5lfT_d2_Iq9VejIog;

    invoke-direct {v0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$14KbLVU8sF5lfT_d2_Iq9VejIog;-><init>()V

    sput-object v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$14KbLVU8sF5lfT_d2_Iq9VejIog;->INSTANCE:Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$14KbLVU8sF5lfT_d2_Iq9VejIog;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->lambda$controlWatermarkShow$7(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
