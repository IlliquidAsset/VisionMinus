.class public Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ShipPhotoPreviewActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;


# static fields
.field public static final deleteSuccessIndexKey:Ljava/lang/String; = "index"

.field public static final deleteSuccessResultCode:I = 0x1

.field private static final downloadSuccessResultCode:I = 0x64


# instance fields
.field private PathAfter:Ljava/lang/String;

.field private backList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field checkBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdd3
    .end annotation
.end field

.field private currentIndex:I

.field public deleteSuccessIndexValues:I

.field private imageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field image_back:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdb8
    .end annotation
.end field

.field private index:I

.field private isDeleting:Z

.field layout_footer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf1d
    .end annotation
.end field

.field layout_header:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe36
    .end annotation
.end field

.field private mAdapter:Lcom/powervision/gcs/adapter/ShipPhotoPreAdatper;

.field mViewPager:Lcom/powervision/gcs/view/PhotoPrViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0xc0e
    .end annotation
.end field

.field pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field photo_num_all:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf12
    .end annotation
.end field

.field psb:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcb9
    .end annotation
.end field

.field roundProgressBar:Lcom/powervision/gcs/view/ship/ShipRoundProgress;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcf9
    .end annotation
.end field

.field text_delete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10df
    .end annotation
.end field

.field text_download:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10e1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->index:I

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->PathAfter:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->backList:Ljava/util/List;

    .line 81
    iput v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->currentIndex:I

    .line 174
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->index:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->index:I

    return p1
.end method

.method private hideHeaderAndFooter()V
    .locals 3

    .line 258
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 260
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 262
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_footer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private initheadAndFoot()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    :goto_0
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->photo_num_all:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private showHeaderAndFooter()V
    .locals 3

    .line 270
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 272
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_footer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 2

    .line 162
    new-instance v0, Lcom/powervision/base/model/ReSetEvent;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/powervision/base/model/ReSetEvent;-><init>(Ljava/util/List;)V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->finish()V

    return-void
.end method

.method protected getContentView()I
    .locals 1

    .line 89
    sget v0, Lcom/powervision/gcs/R$layout;->gcs_ship_photo_preview_activity:I

    return v0
.end method

.method protected getIntentData(Landroid/content/Intent;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->getIntentData(Landroid/content/Intent;)V

    const-string v0, "position"

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->index:I

    const-string v0, "imageList"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    return-void
.end method

.method image_back()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xdb8
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->back()V

    return-void
.end method

.method protected initSystemBar(IIF)V
    .locals 2

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 280
    invoke-static {}, Lcom/powervision/gcs/utils/SystemBarHelper;->isMIUI6Later()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/powervision/gcs/utils/SystemBarHelper;->isFlyme4Later()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/powervision/gcs/utils/SystemBarHelper;->tintStatusBar(Landroid/app/Activity;IF)V

    goto :goto_1

    .line 281
    :cond_1
    :goto_0
    invoke-static {p0, p1, p3}, Lcom/powervision/gcs/utils/SystemBarHelper;->tintStatusBar(Landroid/app/Activity;IF)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    sget p1, Lcom/powervision/gcs/R$color;->album_black:I

    sget v0, Lcom/powervision/gcs/R$color;->album_black:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->initSystemBar(IIF)V

    .line 102
    new-instance p1, Lcom/powervision/gcs/adapter/ShipPhotoPreAdatper;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Lcom/powervision/gcs/adapter/ShipPhotoPreAdatper;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->mAdapter:Lcom/powervision/gcs/adapter/ShipPhotoPreAdatper;

    .line 103
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->mViewPager:Lcom/powervision/gcs/view/PhotoPrViewPager;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/PhotoPrViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 106
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->mViewPager:Lcom/powervision/gcs/view/PhotoPrViewPager;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->mAdapter:Lcom/powervision/gcs/adapter/ShipPhotoPreAdatper;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/PhotoPrViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 107
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->mViewPager:Lcom/powervision/gcs/view/PhotoPrViewPager;

    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->index:I

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/PhotoPrViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 300
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/gcs/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->back()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 219
    iget-boolean p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->isDeleting:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 220
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->isDeleting:Z

    return-void

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->index:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p1, p2}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 226
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 227
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-lez p2, :cond_4

    const/4 p1, 0x1

    if-le p2, p1, :cond_3

    .line 234
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->text_delete:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 235
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->text_download:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 237
    :cond_3
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->text_download:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->text_delete:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 290
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    .line 292
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->backList:Ljava/util/List;

    .line 293
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSingleTap()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->hideHeaderAndFooter()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->showHeaderAndFooter()V

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 117
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->index:I

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->initheadAndFoot()V

    :cond_0
    return-void
.end method

.method text_delete()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x10df
        }
    .end annotation

    return-void
.end method

.method text_download()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x10e1
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->cameraFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_41:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->roundProgressBar:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    return-void
.end method
