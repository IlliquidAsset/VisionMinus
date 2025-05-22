.class Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;
.super Lio/reactivex/observers/DefaultObserver;
.source "DeviceMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/DeviceMediaActivity;->doDownload()V
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
.field final synthetic this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->access$000(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ap03_device_media_video_download"

    invoke-static {v0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 3

    .line 491
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 492
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->access$200(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->getSelectList()Ljava/util/ArrayList;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_48:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 499
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    new-instance v1, Lcom/powervision/media/widgets/DownloadDialog;

    iget-object v2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-direct {v1, v2, v2}, Lcom/powervision/media/widgets/DownloadDialog;-><init>(Landroid/content/Context;Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;)V

    invoke-static {p1, v1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->access$302(Lcom/powervision/media/ui/activity/DeviceMediaActivity;Lcom/powervision/media/widgets/DownloadDialog;)Lcom/powervision/media/widgets/DownloadDialog;

    .line 501
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->access$300(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setValue(I)V

    .line 502
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->access$300(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)Lcom/powervision/media/widgets/DownloadDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->showNoBar()V

    .line 503
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->access$400(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-virtual {p1, v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->download(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const-string p1, "media"

    .line 506
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error"

    invoke-interface {p1, v1, v0}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 488
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
