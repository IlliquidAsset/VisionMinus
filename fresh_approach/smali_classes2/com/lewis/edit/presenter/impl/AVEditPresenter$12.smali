.class Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;
.super Lio/reactivex/observers/DefaultObserver;
.source "AVEditPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workVideoCopy(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

.field final synthetic val$toFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iput-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->val$toFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 786
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 787
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p1}, Lcom/lewis/edit/ui/view/IAVEditView;->cancelDialog()V

    .line 788
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->val$toFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/lewis/edit/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 776
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/ui/view/IAVEditView;

    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->val$toFilePath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/lewis/edit/ui/view/IAVEditView;->videoCopySuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p1}, Lcom/lewis/edit/ui/view/IAVEditView;->cancelDialog()V

    .line 779
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->val$toFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/lewis/edit/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 771
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
