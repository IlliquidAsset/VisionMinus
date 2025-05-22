.class Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;
.super Lio/reactivex/observers/DefaultObserver;
.source "DeviceMediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->handleData(Ljava/util/List;I)V
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

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;I)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iput p2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->val$type:I

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$2700(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    .line 506
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceMediaPresenter onComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget v3, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->val$type:I

    invoke-virtual {v2, v3}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getListByType(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$2800(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {v0}, Lcom/powervision/media/ui/view/IDeviceMediaView;->notifyData()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "media"

    .line 500
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceMediaPresenter onError="

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

    const-string v0, "media3"

    .line 492
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$2400(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$2500(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$2600(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/model/impl/DeviceMediaModel;

    iget v1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->val$type:I

    invoke-virtual {v0, p1, v1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->generalList(Lcom/powervision/localhttp/entity/FileInfo;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 489
    check-cast p1, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {p0, p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;->onNext(Lcom/powervision/localhttp/entity/FileInfo;)V

    return-void
.end method
