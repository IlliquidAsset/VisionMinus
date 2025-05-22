.class public Lcom/powervision/media/ui/fragment/MediaFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "MediaFragment.java"


# instance fields
.field private mImageIn:Landroid/widget/ImageView;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mTextCover:Landroid/widget/TextView;

.field private mViewPager:Lcom/powervision/base/views/ScrollControlVP;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/fragment/MediaFragment;)Lcom/powervision/base/views/ScrollControlVP;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    return-object p0
.end method

.method public static newInstance()Lcom/powervision/media/ui/fragment/MediaFragment;
    .locals 1

    .line 45
    new-instance v0, Lcom/powervision/media/ui/fragment/MediaFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/MediaFragment;-><init>()V

    return-object v0
.end method

.method private showBottomDialog()V
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_bottom_select:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 156
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 158
    sget v2, Lcom/powervision/media/R$id;->media_channel_img:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 159
    sget v3, Lcom/powervision/media/R$id;->media_channel_video:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    new-instance v3, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$DU2O2aMoXfvGXWwnuznFccyMQuM;

    invoke-direct {v3, p0, v1}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$DU2O2aMoXfvGXWwnuznFccyMQuM;-><init>(Lcom/powervision/media/ui/fragment/MediaFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v2, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$o_ZSITiz7n_nY7IDb_Ogzh_OSxg;

    invoke-direct {v2, p0, v1}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$o_ZSITiz7n_nY7IDb_Ogzh_OSxg;-><init>(Lcom/powervision/media/ui/fragment/MediaFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/powervision/base/views/ScrollControlVP;->getCurrentItem()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 62
    sget v0, Lcom/powervision/media/R$layout;->media_fragment_media:I

    return v0
.end method

.method protected initData()V
    .locals 9

    .line 79
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 83
    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_4:I

    invoke-virtual {p0, v3}, Lcom/powervision/media/ui/fragment/MediaFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_5:I

    invoke-virtual {p0, v3}, Lcom/powervision/media/ui/fragment/MediaFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 84
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    new-instance v5, Lcom/powervision/media/ui/adapter/MediaFragmentAdapter;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/powervision/media/ui/adapter/MediaFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Lcom/powervision/base/views/ScrollControlVP;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 85
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 86
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v3, Lcom/powervision/media/ui/fragment/MediaFragment$1;

    invoke-direct {v3, p0}, Lcom/powervision/media/ui/fragment/MediaFragment$1;-><init>(Lcom/powervision/media/ui/fragment/MediaFragment;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 129
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mImageIn:Landroid/widget/ImageView;

    new-instance v3, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$etDlrRS1o2oTRGstmr46It3SXNQ;

    invoke-direct {v3, p0}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$etDlrRS1o2oTRGstmr46It3SXNQ;-><init>(Lcom/powervision/media/ui/fragment/MediaFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 131
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/powervision/media/R$layout;->media_tab_item_layout:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 135
    sget v6, Lcom/powervision/media/R$id;->tab_title:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 136
    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    sget v8, Lcom/powervision/media/R$color;->white:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    sget v7, Lcom/powervision/media/R$drawable;->media_tab_left_select_bg:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    sget v8, Lcom/powervision/media/R$color;->gray_color:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    sget v7, Lcom/powervision/media/R$drawable;->media_tab_right_normal_bg:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    :goto_1
    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    invoke-virtual {v0, v4}, Lcom/powervision/base/views/ScrollControlVP;->setCurrentItem(I)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    sget p1, Lcom/powervision/media/R$id;->media_tablayout:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 68
    sget p1, Lcom/powervision/media/R$id;->media_viewpager:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/ScrollControlVP;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    .line 69
    sget p1, Lcom/powervision/media/R$id;->image_in:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mImageIn:Landroid/widget/ImageView;

    .line 70
    sget p1, Lcom/powervision/media/R$id;->text_cover:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mTextCover:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$initData$0$MediaFragment(Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaFragment;->showBottomDialog()V

    return-void
.end method

.method public synthetic lambda$showBottomDialog$1$MediaFragment(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/powervision/base/views/ScrollControlVP;->setCurrentItem(I)V

    .line 163
    const-class p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-virtual {p0, p2}, Lcom/powervision/media/ui/fragment/MediaFragment;->startActivity(Ljava/lang/Class;)V

    .line 164
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showBottomDialog$2$MediaFragment(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1

    .line 168
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/powervision/base/views/ScrollControlVP;->setCurrentItem(I)V

    .line 169
    const-class p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity;

    invoke-virtual {p0, p2}, Lcom/powervision/media/ui/fragment/MediaFragment;->startActivity(Ljava/lang/Class;)V

    .line 170
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 57
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public setPage(Landroid/util/SparseIntArray;)V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe0
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/ScrollControlVP;->setCurrentItem(I)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/ScrollControlVP;->setCurrentItem(I)V

    :goto_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mTextCover:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mTextCover:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/ScrollControlVP;->setIsCanScroll(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaFragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    check-cast v0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->setScrollable(Z)V

    return-void
.end method
