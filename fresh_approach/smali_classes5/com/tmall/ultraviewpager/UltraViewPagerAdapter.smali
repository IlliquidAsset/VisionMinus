.class public Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "UltraViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;
    }
.end annotation


# static fields
.field private static final INFINITE_RATIO:I = 0x190


# instance fields
.field private adapter:Landroidx/viewpager/widget/PagerAdapter;

.field private centerListener:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;

.field private enableLoop:Z

.field private hasCentered:Z

.field private infiniteRatio:I

.field private multiScrRatio:F

.field private scrWidth:I

.field private viewArray:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 56
    iput v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->multiScrRatio:F

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->viewArray:Landroid/util/SparseArray;

    .line 65
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    const/16 p1, 0x190

    .line 66
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->infiniteRatio:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->enableLoop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    rem-int/2addr p2, v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->isEnableMultiScr()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 144
    check-cast p3, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 146
    iget-object p3, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p3, p1, p2, v0}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->viewArray:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .line 161
    iget-boolean v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->hasCentered:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->centerListener:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;

    invoke-interface {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;->center()V

    :cond_0
    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->hasCentered:Z

    .line 167
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->enableLoop:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->infiniteRatio:I

    mul-int v0, v0, v1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 193
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    return p1
.end method

.method public getRealCount()I
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getViewAtPosition(I)Landroid/view/View;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->viewArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 89
    iget-boolean v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->enableLoop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    rem-int/2addr p2, v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 97
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 98
    :cond_1
    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_2

    .line 99
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 101
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 103
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 104
    invoke-virtual {p0, v4, v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    iget-object v2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->viewArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->isEnableMultiScr()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 111
    iget p2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->scrWidth:I

    if-nez p2, :cond_5

    .line 112
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->scrWidth:I

    .line 114
    :cond_5
    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 117
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->scrWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->multiScrRatio:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 121
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 126
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2

    :cond_7
    return-object v0
.end method

.method public isEnableLoop()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->enableLoop:Z

    return v0
.end method

.method public isEnableMultiScr()Z
    .locals 2

    .line 258
    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->multiScrRatio:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->multiScrRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 218
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 219
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setCenterListener(Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->centerListener:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;

    return-void
.end method

.method public setEnableLoop(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->enableLoop:Z

    .line 237
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->notifyDataSetChanged()V

    if-nez p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->centerListener:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;

    invoke-interface {p1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;->resetPosition()V

    :cond_0
    return-void
.end method

.method public setInfiniteRatio(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->infiniteRatio:I

    return-void
.end method

.method public setMultiScrRatio(F)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->multiScrRatio:F

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
