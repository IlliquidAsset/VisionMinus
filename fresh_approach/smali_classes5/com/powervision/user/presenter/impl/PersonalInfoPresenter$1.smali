.class Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$1;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "PersonalInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->uploadPicture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Lcom/powervision/base/model/UploadModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->access$200(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IPersonalInfoView;

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IPersonalInfoView;->failure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/powervision/base/model/UploadModel;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcom/powervision/base/model/UploadModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://gcsbucket.oss-cn-hongkong.aliyuncs.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->access$000(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IPersonalInfoView;

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IPersonalInfoView;->updateNetAvatarPath(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->access$100(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/ui/view/IPersonalInfoView;

    const/16 v0, 0x12c

    invoke-interface {p1, v0}, Lcom/powervision/user/ui/view/IPersonalInfoView;->success(I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    check-cast p1, Lcom/powervision/base/model/UploadModel;

    invoke-virtual {p0, p1}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$1;->onSuccess(Lcom/powervision/base/model/UploadModel;)V

    return-void
.end method
