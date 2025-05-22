.class public abstract Lcom/powervision/base/base/BaseFragment;
.super Lcom/trello/rxlifecycle4/components/support/RxFragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/powervision/base/base/BasePresenter;",
        "M::",
        "Lcom/powervision/base/base/BaseModel;",
        ">",
        "Lcom/trello/rxlifecycle4/components/support/RxFragment;",
        "Lcom/powervision/base/base/BaseView;"
    }
.end annotation


# instance fields
.field private isLazyLoaded:Z

.field private isPrepared:Z

.field protected mContentView:Landroid/view/View;

.field protected mModel:Lcom/powervision/base/base/BaseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field protected mPresenter:Lcom/powervision/base/base/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/trello/rxlifecycle4/components/support/RxFragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/powervision/base/base/BaseFragment;->isPrepared:Z

    .line 29
    iput-boolean v0, p0, Lcom/powervision/base/base/BaseFragment;->isLazyLoaded:Z

    return-void
.end method

.method private lazyLoad()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/base/base/BaseFragment;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/base/base/BaseFragment;->isLazyLoaded:Z

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseFragment;->onLazyLoad()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/powervision/base/base/BaseFragment;->isLazyLoaded:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/powervision/base/base/BaseFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getLayoutResId()I
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method protected abstract initData()V
.end method

.method protected abstract initView(Landroid/os/Bundle;)V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle4/components/support/RxFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/powervision/base/base/BaseFragment;->isPrepared:Z

    .line 46
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;->lazyLoad()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle4/components/support/RxFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 34
    invoke-static {p0, p1}, Lcom/powervision/base/utils/MVPUtils;->getT(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/base/BasePresenter;

    iput-object p1, p0, Lcom/powervision/base/base/BaseFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    const/4 p1, 0x1

    .line 35
    invoke-static {p0, p1}, Lcom/powervision/base/utils/MVPUtils;->getT(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/base/BaseModel;

    iput-object p1, p0, Lcom/powervision/base/base/BaseFragment;->mModel:Lcom/powervision/base/base/BaseModel;

    .line 36
    iget-object v0, p0, Lcom/powervision/base/base/BaseFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p0, p1, p0}, Lcom/powervision/base/base/BasePresenter;->attachView(Lcom/powervision/base/base/BaseView;Lcom/powervision/base/base/BaseModel;Lcom/trello/rxlifecycle4/LifecycleProvider;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/powervision/base/base/BaseFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseFragment;->getLayoutResId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/base/BaseFragment;->mContentView:Landroid/view/View;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseFragment;->init()V

    .line 77
    invoke-virtual {p0, p3}, Lcom/powervision/base/base/BaseFragment;->initView(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseFragment;->initData()V

    .line 79
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 80
    iget-object p1, p0, Lcom/powervision/base/base/BaseFragment;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/powervision/base/base/BaseFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/powervision/base/base/BasePresenter;->detachView()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/powervision/base/base/BaseFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/trello/rxlifecycle4/components/support/RxFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 146
    invoke-super {p0}, Lcom/trello/rxlifecycle4/components/support/RxFragment;->onDestroyView()V

    return-void
.end method

.method protected onLazyLoad()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle4/components/support/RxFragment;->setUserVisibleHint(Z)V

    .line 53
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;->lazyLoad()V

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/powervision/base/base/BaseFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/base/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/base/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/high16 p2, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method
