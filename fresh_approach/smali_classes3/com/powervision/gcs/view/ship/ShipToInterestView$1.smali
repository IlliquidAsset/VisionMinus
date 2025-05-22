.class Lcom/powervision/gcs/view/ship/ShipToInterestView$1;
.super Ljava/lang/Object;
.source "ShipToInterestView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipToInterestView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipToInterestView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 119
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_hide:I

    if-ne p1, v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$000(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$000(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;->hide()V

    goto :goto_1

    .line 124
    :cond_0
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_pause:I

    if-ne p1, v0, :cond_2

    .line 125
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$000(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    iget-object p1, p1, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->getInstance()Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->getSailMode()I

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 130
    invoke-static {p1}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    const-wide/16 v0, 0x3

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->take(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 135
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 136
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/view/ship/ShipToInterestView$1$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/ShipToInterestView$1$1;-><init>(Lcom/powervision/gcs/view/ship/ShipToInterestView$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 134
    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->access$102(Lcom/powervision/gcs/view/ship/ShipToInterestView;Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    :goto_1
    return-void
.end method
