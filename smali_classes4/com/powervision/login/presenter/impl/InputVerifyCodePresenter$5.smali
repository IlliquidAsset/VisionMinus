.class Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;
.super Ljava/lang/Object;
.source "InputVerifyCodePresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->umRnrQueryHadDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/powervision/user/bean/UrnRegisterBean;",
        ">;"
    }
.end annotation


# instance fields
.field disposable:Lio/reactivex/disposables/Disposable;

.field final synthetic this$0:Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;


# direct methods
.method constructor <init>(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->this$0:Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onNext(Lcom/powervision/user/bean/UrnRegisterBean;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/powervision/user/bean/UrnRegisterBean;->getUserDeviceList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/user/bean/UrnRegisterItemBean;

    .line 160
    invoke-virtual {v1}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getRealRegisterNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getDevicePsn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "AP03_FLY_UAS_ID_PSN_CODE"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 170
    iget-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p1, Lcom/powervision/user/bean/UrnRegisterBean;

    invoke-virtual {p0, p1}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->onNext(Lcom/powervision/user/bean/UrnRegisterBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
