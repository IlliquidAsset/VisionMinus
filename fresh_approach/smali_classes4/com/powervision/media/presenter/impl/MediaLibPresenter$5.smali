.class Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;
.super Lio/reactivex/observers/DefaultObserver;
.source "MediaLibPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/presenter/impl/MediaLibPresenter;->handleData(Ljava/util/List;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Lcom/powervision/localhttp/entity/MediaLib;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$3800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "media--"

    .line 665
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-virtual {v2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getListData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$3900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {v0}, Lcom/powervision/media/ui/view/IMediaLibView;->notifyData()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "media--"

    .line 659
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$3600(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$3700(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/model/impl/MediaLibModel;

    invoke-virtual {v0, p1}, Lcom/powervision/media/model/impl/MediaLibModel;->generalList(Lcom/powervision/localhttp/entity/MediaLib;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 649
    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p0, p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;->onNext(Lcom/powervision/localhttp/entity/MediaLib;)V

    return-void
.end method
