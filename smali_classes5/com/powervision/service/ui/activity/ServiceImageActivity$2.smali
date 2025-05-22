.class Lcom/powervision/service/ui/activity/ServiceImageActivity$2;
.super Lio/reactivex/observers/DefaultObserver;
.source "ServiceImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/service/ui/activity/ServiceImageActivity;->requestBasicPermission()V
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
.field final synthetic this$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;


# direct methods
.method constructor <init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity$2;->this$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onNext$0$ServiceImageActivity$2(Ljava/lang/Boolean;)V
    .locals 1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity$2;->this$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

    invoke-static {p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->access$000(Lcom/powervision/service/ui/activity/ServiceImageActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 166
    iget-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity$2;->this$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

    invoke-virtual {p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->onRefresh()V

    goto :goto_0

    .line 168
    :cond_0
    sget p1, Lcom/powervision/service/R$string;->AP03_MediaLib_55:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity$2;->this$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

    new-instance v1, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$2$LkaQBtHq07x-kRFnjTYt6FSwRkk;

    invoke-direct {v1, p0, p1}, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$2$LkaQBtHq07x-kRFnjTYt6FSwRkk;-><init>(Lcom/powervision/service/ui/activity/ServiceImageActivity$2;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity$2;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
