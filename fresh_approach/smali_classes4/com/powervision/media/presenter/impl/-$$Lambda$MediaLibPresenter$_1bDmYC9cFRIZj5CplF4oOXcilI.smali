.class public final synthetic Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$_1bDmYC9cFRIZj5CplF4oOXcilI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$_1bDmYC9cFRIZj5CplF4oOXcilI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$_1bDmYC9cFRIZj5CplF4oOXcilI;

    invoke-direct {v0}, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$_1bDmYC9cFRIZj5CplF4oOXcilI;-><init>()V

    sput-object v0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$_1bDmYC9cFRIZj5CplF4oOXcilI;->INSTANCE:Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$_1bDmYC9cFRIZj5CplF4oOXcilI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    check-cast p2, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-static {p1, p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->lambda$handleData$1(Lcom/powervision/localhttp/entity/MediaLib;Lcom/powervision/localhttp/entity/MediaLib;)I

    move-result p1

    return p1
.end method
