.class public final synthetic Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$GdfTx117BGc99DdFv5qH5s-vfEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$GdfTx117BGc99DdFv5qH5s-vfEs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$GdfTx117BGc99DdFv5qH5s-vfEs;

    invoke-direct {v0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$GdfTx117BGc99DdFv5qH5s-vfEs;-><init>()V

    sput-object v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$GdfTx117BGc99DdFv5qH5s-vfEs;->INSTANCE:Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$GdfTx117BGc99DdFv5qH5s-vfEs;

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

    invoke-static {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->lambda$imitateLoadingProgress$5(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
