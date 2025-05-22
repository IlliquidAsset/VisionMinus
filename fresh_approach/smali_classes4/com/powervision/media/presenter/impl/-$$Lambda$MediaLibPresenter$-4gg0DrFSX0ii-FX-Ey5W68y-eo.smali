.class public final synthetic Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$-4gg0DrFSX0ii-FX-Ey5W68y-eo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$-4gg0DrFSX0ii-FX-Ey5W68y-eo;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$-4gg0DrFSX0ii-FX-Ey5W68y-eo;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-static {v0, p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->lambda$handleData$3(Ljava/util/ArrayList;Lcom/powervision/localhttp/entity/MediaLib;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object p1

    return-object p1
.end method
