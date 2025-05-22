.class public abstract Lcom/powervision/gcs/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected inflater:Landroid/view/LayoutInflater;

.field protected isVisible:Z

.field protected mActivity:Landroidx/fragment/app/FragmentActivity;

.field protected mContext:Landroid/content/Context;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected findViewById(I)Landroid/view/View;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected fragmentStartActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 173
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/powervision/gcs/base/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected initToolbar()V
    .locals 0

    return-void
.end method

.method protected abstract initView(Landroid/os/Bundle;)V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 55
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 75
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->inflater:Landroid/view/LayoutInflater;

    .line 77
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p0, p3}, Lcom/powervision/gcs/base/BaseFragment;->initView(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, p3}, Lcom/powervision/gcs/base/BaseFragment;->processLogic(Landroid/os/Bundle;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 83
    iget-object p2, p0, Lcom/powervision/gcs/base/BaseFragment;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 248
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method protected onInvisible()V
    .locals 0

    return-void
.end method

.method protected onUserVisible()V
    .locals 0

    return-void
.end method

.method protected abstract processLogic(Landroid/os/Bundle;)V
.end method

.method protected setContentView(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mView:Landroid/view/View;

    .line 93
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected setContentView(Landroid/view/View;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mView:Landroid/view/View;

    .line 98
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/powervision/gcs/base/BaseFragment;->isVisible:Z

    .line 64
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseFragment;->onUserVisible()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/powervision/gcs/base/BaseFragment;->isVisible:Z

    .line 67
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseFragment;->onInvisible()V

    :goto_0
    return-void
.end method

.method protected startActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/base/BaseFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected startActivity(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/base/BaseFragment;->startActivity(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected startActivity(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 241
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected startActivityForResult(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, p1, v0, p2}, Lcom/powervision/gcs/base/BaseFragment;->fragmentStartActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method protected startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected startToActivity(Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public switchBody(Z)V
    .locals 0

    return-void
.end method
