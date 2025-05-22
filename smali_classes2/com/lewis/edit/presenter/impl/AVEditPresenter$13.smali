.class Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;
.super Lio/microshow/rxffmpeg/RxFFmpegSubscriber;
.source "AVEditPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workWatermark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

.field final synthetic val$currentPath:Ljava/lang/String;

.field final synthetic val$finishEditVideoPath:Ljava/lang/String;

.field final synthetic val$logoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iput-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$currentPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$logoPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$finishEditVideoPath:Ljava/lang/String;

    invoke-direct {p0}, Lio/microshow/rxffmpeg/RxFFmpegSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "edit watermark cancel"

    .line 953
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit watermark error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$5000(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editFailure(Ljava/lang/String;)V

    .line 962
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$5100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 963
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$5200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/model/impl/AVEditModel;

    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$5100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 4

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit watermark success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$currentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4500(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    .line 927
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4600(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$currentPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lewis/edit/ui/view/IAVEditView;->editSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$finishEditVideoPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$currentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$logoPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4700(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgress(IJ)V
    .locals 0

    .line 938
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "edit watermark progress = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    iget-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 940
    iget-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->val$logoPath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 941
    iget-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4800(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p2, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x63

    if-ge p1, p2, :cond_1

    .line 945
    iget-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$4900(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p2, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
