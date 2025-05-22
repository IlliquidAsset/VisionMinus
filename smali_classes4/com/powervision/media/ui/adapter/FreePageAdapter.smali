.class public Lcom/powervision/media/ui/adapter/FreePageAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "FreePageAdapter.java"


# instance fields
.field private TITLES:[Ljava/lang/String;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/FreePageAdapter;->mFragments:Ljava/util/List;

    .line 24
    iput-object p3, p0, Lcom/powervision/media/ui/adapter/FreePageAdapter;->TITLES:[Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;->newInstance()Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/FreePageAdapter;->mFragments:Ljava/util/List;

    invoke-static {}, Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;->newInstance()Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/FreePageAdapter;->mFragments:Ljava/util/List;

    invoke-static {}, Lcom/powervision/media/ui/fragment/FreeEditLocalListFragment;->newInstance()Lcom/powervision/media/ui/fragment/FreeEditLocalListFragment;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/FreePageAdapter;->TITLES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/FreePageAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/FreePageAdapter;->TITLES:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
