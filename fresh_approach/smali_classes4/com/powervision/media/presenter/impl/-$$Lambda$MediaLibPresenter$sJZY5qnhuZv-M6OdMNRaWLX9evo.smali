.class public final synthetic Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$sJZY5qnhuZv-M6OdMNRaWLX9evo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$sJZY5qnhuZv-M6OdMNRaWLX9evo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$sJZY5qnhuZv-M6OdMNRaWLX9evo;

    invoke-direct {v0}, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$sJZY5qnhuZv-M6OdMNRaWLX9evo;-><init>()V

    sput-object v0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$sJZY5qnhuZv-M6OdMNRaWLX9evo;->INSTANCE:Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$sJZY5qnhuZv-M6OdMNRaWLX9evo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->lambda$handleData$2(Lcom/powervision/localhttp/entity/MediaLib;)Z

    move-result p1

    return p1
.end method
