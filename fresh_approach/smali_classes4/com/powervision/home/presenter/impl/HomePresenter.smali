.class public Lcom/powervision/home/presenter/impl/HomePresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "HomePresenter.java"

# interfaces
.implements Lcom/powervision/home/presenter/IHomePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/home/ui/view/IHomeView;",
        "Lcom/powervision/home/model/impl/HomeModel;",
        ">;",
        "Lcom/powervision/home/presenter/IHomePresenter;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final WAIT_TIME:J = 0x7d0L


# instance fields
.field private mExistTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public exist()V
    .locals 5

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/home/presenter/impl/HomePresenter;->mExistTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 56
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 58
    :cond_0
    sget v0, Lcom/powervision/home/R$string;->exist:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/home/presenter/impl/HomePresenter;->mExistTime:J

    :goto_0
    return-void
.end method

.method public getFragmentPager()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomePresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/home/model/impl/HomeModel;

    invoke-virtual {v0}, Lcom/powervision/home/model/impl/HomeModel;->getFragments()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public switchFragmentPager(I)V
    .locals 1

    .line 31
    sget v0, Lcom/powervision/home/R$id;->tab_menu_album:I

    if-ne p1, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/powervision/home/presenter/impl/HomePresenter;->getFragmentPager()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 33
    :cond_0
    sget v0, Lcom/powervision/home/R$id;->tab_menu_discovery:I

    if-ne p1, v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/powervision/home/presenter/impl/HomePresenter;->getFragmentPager()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 35
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->tab_menu_profile:I

    if-ne p1, v0, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/powervision/home/presenter/impl/HomePresenter;->getFragmentPager()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/home/presenter/impl/HomePresenter;->getFragmentPager()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeView;

    invoke-interface {v0, p1}, Lcom/powervision/home/ui/view/IHomeView;->showFragmentPager(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
