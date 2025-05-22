.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;
.super Ljava/lang/Object;
.source "ShipCommonControlFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dl01BSOper(IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9065\u63a7\u5668\u8bbe\u7f6eSSID\u6210\u529f Dl01BSOperListenerImp  dl01BSOper  command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", status="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShipCommonControlFr"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$1$I7NSkqBhzegt20wAx5QBssz12Sk;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$1$I7NSkqBhzegt20wAx5QBssz12Sk;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    const-wide/16 p2, 0x5

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p3, v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->take(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 580
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 581
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1$1;

    invoke-direct {p3, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    .line 579
    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->access$402(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;

    .line 590
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->reStartWifi()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$dl01BSOper$0$ShipCommonControlFragment$1()V
    .locals 2

    .line 571
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_23:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 572
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;)Landroidx/core/widget/ContentLoadingProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShipCommonControlFr"

    const-string v1, "seekerPair: 6"

    .line 573
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;)Landroidx/core/widget/ContentLoadingProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
