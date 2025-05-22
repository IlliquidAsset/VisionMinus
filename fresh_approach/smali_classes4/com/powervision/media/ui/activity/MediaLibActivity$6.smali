.class Lcom/powervision/media/ui/activity/MediaLibActivity$6;
.super Lio/reactivex/observers/DefaultObserver;
.source "MediaLibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/MediaLibActivity;->doDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Ljava/util/ArrayList<",
        "Lcom/powervision/localhttp/entity/MediaLib;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 824
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$1100(Lcom/powervision/media/ui/activity/MediaLibActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 825
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    .line 826
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ap03_device_media_video_download"

    .line 825
    invoke-static {v0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 816
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-virtual {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$900(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$900(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 817
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$900(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 797
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->onNext(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onNext(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 801
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$900(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setValue(I)V

    .line 804
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$900(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setCloseIsShow(Z)V

    .line 805
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$1000(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-virtual {v0, p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->download(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string p1, "media---"

    .line 807
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error"

    invoke-interface {p1, v1, v0}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-virtual {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$900(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$900(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 809
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$6;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$900(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
