.class Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;
.super Lio/microshow/rxffmpeg/RxFFmpegSubscriber;
.source "AVEditPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/presenter/impl/AVEditPresenter;->addText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

.field final synthetic val$outPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iput-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->val$outPath:Ljava/lang/String;

    invoke-direct {p0}, Lio/microshow/rxffmpeg/RxFFmpegSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "edit text cancel"

    .line 570
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit text error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$3500(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit text success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->val$outPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$3100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    .line 554
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$3200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->val$outPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lewis/edit/ui/view/IAVEditView;->editSuccess(Ljava/lang/String;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$3300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->val$outPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(IJ)V
    .locals 0

    .line 562
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "edit text progress = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    iget-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 564
    iget-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$3400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p2, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    :cond_0
    return-void
.end method
