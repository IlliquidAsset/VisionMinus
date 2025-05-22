.class public abstract Lcom/powervision/gcs/base/BaseCamreaFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseCamreaFragment.java"


# instance fields
.field protected inflater:Landroid/view/LayoutInflater;

.field protected isVisible:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mView:Landroid/view/View;

.field protected viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected findViewById(I)Landroid/view/View;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected initToolbar()V
    .locals 0

    return-void
.end method

.method protected abstract initView(Landroid/os/Bundle;)V
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mContext:Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 67
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->inflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p2, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->viewGroup:Landroid/view/ViewGroup;

    .line 70
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0, p3}, Lcom/powervision/gcs/base/BaseCamreaFragment;->initView(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/powervision/gcs/base/BaseCamreaFragment;->processLogic(Landroid/os/Bundle;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 76
    iget-object p2, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 219
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

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
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->viewGroup:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mView:Landroid/view/View;

    .line 85
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseCamreaFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->isVisible:Z

    .line 52
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseCamreaFragment;->onUserVisible()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->isVisible:Z

    .line 55
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseCamreaFragment;->onInvisible()V

    :goto_0
    return-void
.end method

.method protected startActiivty(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/base/BaseCamreaFragment;->startActivity(Ljava/lang/String;Landroid/os/Bundle;)V

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

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/base/BaseCamreaFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

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

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected startActivity(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mContext:Landroid/content/Context;

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

    .line 148
    invoke-virtual {p0, p1, v0, p2}, Lcom/powervision/gcs/base/BaseCamreaFragment;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

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

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mContext:Landroid/content/Context;

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

    .line 186
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 187
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseCamreaFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
