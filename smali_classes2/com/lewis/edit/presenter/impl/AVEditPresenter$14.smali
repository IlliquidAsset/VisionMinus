.class Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;
.super Lio/microshow/rxffmpeg/RxFFmpegSubscriber;
.source "AVEditPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workVideoSpeed(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

.field final synthetic val$currentPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iput-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;->val$currentPath:Ljava/lang/String;

    invoke-direct {p0}, Lio/microshow/rxffmpeg/RxFFmpegSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "edit speed cancel"

    .line 1103
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit speed error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$5400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p1}, Lcom/lewis/edit/ui/view/IAVEditView;->cancelDialog()V

    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit speed success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;->val$currentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1091
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$5300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;->val$currentPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lewis/edit/ui/view/IAVEditView;->videoSpeedSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(IJ)V
    .locals 0

    .line 1098
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "edit speed progress = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
