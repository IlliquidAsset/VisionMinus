.class public Lcom/powervision/media/ui/activity/PreviewActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "PreviewActivity.java"

# interfaces
.implements Lcom/powervision/media/ui/view/IPreviewView;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/media/presenter/impl/PreviewPresenter;",
        "Lcom/powervision/media/model/impl/PreviewModel;",
        ">;",
        "Lcom/powervision/media/ui/view/IPreviewView;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;"
    }
.end annotation


# instance fields
.field private mPreviewAdapter:Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;

.field private mPreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectIndex:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 39
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PreviewActivity;->systemFullScreen()V

    .line 40
    sget v0, Lcom/powervision/media/R$layout;->media_preview_activity:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mSelectIndex:I

    .line 66
    :cond_0
    new-instance v0, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;

    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PreviewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mPreviewAdapter:Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;

    .line 67
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 49
    sget p1, Lcom/powervision/media/R$id;->preview_viewpager:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 111
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public refreshAdapter(Landroid/util/SparseArray;)V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PreviewActivity;->finish()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mPreviewAdapter:Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;

    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
