.class public Lcom/powervision/media/ui/activity/FreeEditActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FreeEditActivity.java"


# static fields
.field public static allSize:I


# instance fields
.field private allInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private badgeSize:[I

.field private fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

.field private imageSelectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private localSelectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextEdit:Landroid/widget/TextView;

.field private mTotalSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private navigatorAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

.field private videoSelectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->imageSelectList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->videoSelectList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->localSelectList:Ljava/util/List;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 64
    iput-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->badgeSize:[I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTotalSelectList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->allInfo:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/activity/FreeEditActivity;)Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/activity/FreeEditActivity;)[I
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->badgeSize:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/activity/FreeEditActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private initMagicIndicator()V
    .locals 3

    .line 149
    sget v0, Lcom/powervision/media/R$id;->magic_indicator:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 150
    new-instance v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    invoke-direct {v1, p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 151
    invoke-virtual {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdjustMode(Z)V

    .line 152
    new-instance v2, Lcom/powervision/media/ui/activity/FreeEditActivity$2;

    invoke-direct {v2, p0}, Lcom/powervision/media/ui/activity/FreeEditActivity$2;-><init>(Lcom/powervision/media/ui/activity/FreeEditActivity;)V

    iput-object v2, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->navigatorAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    .line 199
    invoke-virtual {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 200
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 202
    iget-object v1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lnet/lucode/hackware/magicindicator/ViewPagerHelper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method private manageEdit()V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->videoSelectList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->imageSelectList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->localSelectList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTextEdit:Landroid/widget/TextView;

    sget v3, Lcom/powervision/media/R$color;->light_gray_color:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTextEdit:Landroid/widget/TextView;

    sget v3, Lcom/powervision/media/R$color;->color_f0:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 253
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTextEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 247
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTextEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTextEdit:Landroid/widget/TextView;

    sget v3, Lcom/powervision/media/R$color;->white:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTextEdit:Landroid/widget/TextView;

    sget v3, Lcom/powervision/media/R$color;->color_3A75F2:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->videoSelectList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->videoSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 260
    :goto_2
    iget-object v3, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->imageSelectList:Ljava/util/List;

    invoke-static {v3}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    iget-object v3, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->imageSelectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 263
    :cond_3
    iget-object v3, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->localSelectList:Ljava/util/List;

    invoke-static {v3}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    iget-object v3, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->localSelectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    if-lez v0, :cond_5

    .line 267
    iget-object v3, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v5, Lcom/powervision/media/R$string;->App_MediaLib_18:I

    invoke-virtual {p0, v5}, Lcom/powervision/media/ui/activity/FreeEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_11:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleText(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 86
    sget v0, Lcom/powervision/media/R$layout;->media_free_edit_activity:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 137
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->initData()V

    .line 138
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    new-array v0, v1, [Ljava/lang/String;

    .line 139
    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_5:I

    invoke-virtual {p0, v1}, Lcom/powervision/media/ui/activity/FreeEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_4:I

    invoke-virtual {p0, v1}, Lcom/powervision/media/ui/activity/FreeEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_60:I

    invoke-virtual {p0, v1}, Lcom/powervision/media/ui/activity/FreeEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 140
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mDataList:Ljava/util/List;

    .line 142
    new-instance v1, Lcom/powervision/media/ui/adapter/FreePageAdapter;

    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lcom/powervision/media/ui/adapter/FreePageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;[Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 145
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->initMagicIndicator()V

    return-void
.end method

.method protected initToolbar()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_11:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleText(I)V

    .line 125
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$mipmap;->back_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    new-instance v1, Lcom/powervision/media/ui/activity/FreeEditActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/FreeEditActivity$1;-><init>(Lcom/powervision/media/ui/activity/FreeEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setDelegate(Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    sget p1, Lcom/powervision/media/R$id;->fs_titlebar:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/FreeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/FSTitlebar;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    .line 92
    sget p1, Lcom/powervision/media/R$id;->view_pager:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/FreeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 93
    sget p1, Lcom/powervision/media/R$id;->text_edit:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/FreeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTextEdit:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->initToolbar()V

    return-void
.end method

.method public synthetic lambda$setListener$0$FreeEditActivity(Landroid/view/View;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->allInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->allInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->allInfo:Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->videoSelectList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->allInfo:Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->localSelectList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTotalSelectList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTotalSelectList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->allInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 113
    iget-object v1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTotalSelectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/edit/aVEditActivity"

    .line 117
    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTotalSelectList:Ljava/util/ArrayList;

    const-string v1, "video_path_array"

    .line 118
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 119
    invoke-virtual {p1, p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 79
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 80
    sput v0, Lcom/powervision/media/ui/activity/FreeEditActivity;->allSize:I

    return-void
.end method

.method public selectImage(Lcom/powervision/base/model/SelectModel;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe3
    .end annotation

    .line 207
    iget-object p1, p1, Lcom/powervision/base/model/SelectModel;->infos:Ljava/util/List;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->imageSelectList:Ljava/util/List;

    .line 208
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "showPop 1 null"

    .line 209
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->badgeSize:[I

    const/4 v1, 0x0

    aput v1, p1, v0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->badgeSize:[I

    iget-object v1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->imageSelectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput v1, p1, v0

    .line 214
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->navigatorAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->notifyDataSetChanged()V

    .line 215
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->manageEdit()V

    return-void
.end method

.method public selectLocal(Lcom/powervision/base/model/SelectModel;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe5
    .end annotation

    .line 234
    iget-object p1, p1, Lcom/powervision/base/model/SelectModel;->infos:Ljava/util/List;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->localSelectList:Ljava/util/List;

    .line 235
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->badgeSize:[I

    const/4 v1, 0x0

    aput v1, p1, v0

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->badgeSize:[I

    iget-object v1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->localSelectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput v1, p1, v0

    .line 240
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->navigatorAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->notifyDataSetChanged()V

    .line 242
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->manageEdit()V

    return-void
.end method

.method public selectVideo(Lcom/powervision/base/model/SelectModel;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe4
    .end annotation

    .line 220
    iget-object p1, p1, Lcom/powervision/base/model/SelectModel;->infos:Ljava/util/List;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->videoSelectList:Ljava/util/List;

    .line 221
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "showPop 0 null"

    .line 222
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->badgeSize:[I

    aput v0, p1, v0

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->badgeSize:[I

    iget-object v1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->videoSelectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput v1, p1, v0

    .line 228
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->navigatorAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->notifyDataSetChanged()V

    .line 229
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/FreeEditActivity;->manageEdit()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 100
    iget-object v0, p0, Lcom/powervision/media/ui/activity/FreeEditActivity;->mTextEdit:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$FreeEditActivity$itOqbdImr3NwcEvp_YTOiODZFzo;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$FreeEditActivity$itOqbdImr3NwcEvp_YTOiODZFzo;-><init>(Lcom/powervision/media/ui/activity/FreeEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
