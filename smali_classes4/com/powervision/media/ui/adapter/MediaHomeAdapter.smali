.class public Lcom/powervision/media/ui/adapter/MediaHomeAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "MediaHomeAdapter.java"


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
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;->mFragments:Ljava/util/List;

    new-array p1, v0, [Ljava/lang/String;

    .line 27
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_1:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_2:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;->TITLES:[Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;->mFragments:Ljava/util/List;

    invoke-static {}, Lcom/powervision/media/ui/fragment/MediaFragment;->newInstance()Lcom/powervision/media/ui/fragment/MediaFragment;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;->mFragments:Ljava/util/List;

    invoke-static {}, Lcom/powervision/media/ui/fragment/WorksFragment;->newInstance()Lcom/powervision/media/ui/fragment/WorksFragment;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;->TITLES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;->TITLES:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
