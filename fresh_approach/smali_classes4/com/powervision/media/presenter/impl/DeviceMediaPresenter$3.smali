.class Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;
.super Lio/reactivex/observers/DefaultObserver;
.source "DeviceMediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->generalNewListAfterDelete(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Lcom/powervision/localhttp/entity/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

.field final synthetic val$mediaType:I


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;I)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iput p2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;->val$mediaType:I

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    const-string v0, "media"

    .line 426
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "new onComplete="

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$2100(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {v0}, Lcom/powervision/media/ui/view/IDeviceMediaView;->deleteSuccess()V

    .line 428
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$702(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "media"

    .line 421
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

.method public onNext(Lcom/powervision/localhttp/entity/FileInfo;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$2000(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/model/impl/DeviceMediaModel;

    iget v1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;->val$mediaType:I

    invoke-virtual {v0, p1, v1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->generalListAfterDelete(Lcom/powervision/localhttp/entity/FileInfo;I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 413
    check-cast p1, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {p0, p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;->onNext(Lcom/powervision/localhttp/entity/FileInfo;)V

    return-void
.end method
