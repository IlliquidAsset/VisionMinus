.class public Lcom/powervision/media/ui/activity/PhotoPreviewActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "PhotoPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/powervision/media/widgets/MatrixImageView$OnSingleTapListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/media/presenter/impl/PreviewPresenter;",
        "Lcom/powervision/media/model/impl/PreviewModel;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/powervision/media/widgets/MatrixImageView$OnSingleTapListener;"
    }
.end annotation


# static fields
.field private static final RESULT_OK:I = 0x3e8


# instance fields
.field private dbHelper:Lcom/powervision/base/utils/DbHelper;

.field private imageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private isDeleting:Z

.field private mAdapter:Lcom/powervision/media/ui/adapter/PhotoPreAdatper;

.field private mAlbumViewpager:Lcom/powervision/media/widgets/PhotoPrViewPager;

.field private mImageBack:Landroid/widget/ImageView;

.field private mImageSelect:Landroid/widget/CheckBox;

.field private mLayoutHeader:Landroid/widget/RelativeLayout;

.field private mPhotoNumAll:Landroid/widget/TextView;

.field private mPreviewLayoutFooter:Landroid/widget/LinearLayout;

.field private mTextDelete:Landroid/widget/TextView;

.field private mTextEdit:Landroid/widget/TextView;

.field private mTextShare:Landroid/widget/TextView;

.field pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->index:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$3;-><init>(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->deleteSelect()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Lcom/powervision/media/widgets/PhotoPrViewPager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAlbumViewpager:Lcom/powervision/media/widgets/PhotoPrViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->index:I

    return p0
.end method

.method static synthetic access$302(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->index:I

    return p1
.end method

.method static synthetic access$400(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPhotoNumAll:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mImageSelect:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextDelete:Landroid/widget/TextView;

    return-object p0
.end method

.method private delete()V
    .locals 2

    .line 239
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_190:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/powervision/media/widgets/AlbumDialog;

    invoke-direct {v1, p0, v0}, Lcom/powervision/media/widgets/AlbumDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;

    invoke-direct {v0, p0, v1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;-><init>(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;Lcom/powervision/media/widgets/AlbumDialog;)V

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/AlbumDialog;->setClickListener(Lcom/powervision/media/widgets/AlbumDialog$ClickListener;)V

    .line 257
    invoke-virtual {v1}, Lcom/powervision/media/widgets/AlbumDialog;->show()V

    return-void
.end method

.method private deleteSelect()V
    .locals 6

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->isDeleting:Z

    .line 263
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAlbumViewpager:Lcom/powervision/media/widgets/PhotoPrViewPager;

    invoke-virtual {v1}, Lcom/powervision/media/widgets/PhotoPrViewPager;->getCurrentItem()I

    move-result v1

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget-object v3, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    .line 267
    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 268
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p0, v4}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->deleteByImagePath(Lcom/powervision/base/model/MediaModel;)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 276
    invoke-virtual {v1, v0}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 277
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p0, v1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->deleteByImagePath(Lcom/powervision/base/model/MediaModel;)V

    :cond_2
    const/4 v1, 0x0

    .line 282
    iput-boolean v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->isDeleting:Z

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    .line 286
    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 287
    iget-object v4, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 291
    iget-object v2, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/PhotoPreAdatper;

    iget-object v3, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->checkDate(Ljava/util/ArrayList;)V

    .line 292
    iget-object v2, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAlbumViewpager:Lcom/powervision/media/widgets/PhotoPrViewPager;

    invoke-virtual {v2}, Lcom/powervision/media/widgets/PhotoPrViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v0

    .line 293
    iget-object v3, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPhotoNumAll:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v2, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const-string v0, "%d/%d"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextDelete:Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_35:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mImageSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 297
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->finish()V

    :goto_2
    return-void
.end method

.method private hideHeaderAndFooter()V
    .locals 3

    .line 378
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 379
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 380
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mLayoutHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 381
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPreviewLayoutFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 382
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPreviewLayoutFooter:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mLayoutHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private initThreadAndFoot()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 134
    :goto_0
    iget-object v3, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

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

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPhotoNumAll:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v0

    iget-object v7, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "%d/%d"

    invoke-static {v3, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mImageSelect:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextDelete:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextDelete:Landroid/widget/TextView;

    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_35:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$sharePath$0(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getJpgImagePath()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lcom/powervision/base/utils/FileUtils;->compressAndSaveImage(Ljava/io/File;Ljava/lang/String;I)V

    .line 171
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 172
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method private openEdit()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".DNG"

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".RAW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "image_path"

    .line 202
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 204
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 205
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 207
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 209
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_189:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v1

    const-string v3, "/edit/imageEditActivity"

    .line 212
    invoke-virtual {v1, v3}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    :goto_0
    return-void

    .line 198
    :cond_2
    :goto_1
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_205:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void
.end method

.method private sharePath(Ljava/lang/String;)V
    .locals 1

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$PhotoPreviewActivity$Stv--HQoYwOlws2-PJWqsz_zSL4;

    invoke-direct {v0, p1}, Lcom/powervision/media/ui/activity/-$$Lambda$PhotoPreviewActivity$Stv--HQoYwOlws2-PJWqsz_zSL4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 173
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 174
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$1;-><init>(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)V

    .line 175
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method private showHeaderAndFooter()V
    .locals 3

    .line 390
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 392
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mLayoutHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 393
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPreviewLayoutFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPreviewLayoutFooter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mLayoutHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 4

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    .line 221
    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 223
    invoke-virtual {v2, v3}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 224
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "selects"

    .line 228
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 229
    invoke-virtual {p0, v0, v1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 230
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->finish()V

    return-void
.end method

.method public deleteByImagePath(Lcom/powervision/base/model/MediaModel;)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    const-class v1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/DbHelper;->searchImageByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    .line 408
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getMainPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-static {v0}, Lcom/powervision/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    const-string v1, "NewVisionPlus"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->TAG:Ljava/lang/String;

    const-string v2, "dbDelete: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {p0, v0}, Lcom/powervision/base/utils/FileUtils;->deleteImage(Landroid/content/Context;Ljava/lang/String;)I

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/DbHelper;->delete(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 90
    sget v0, Lcom/powervision/media/R$layout;->media_photo_preview_activity:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 119
    iget v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->index:I

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->initThreadAndFoot()V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    sget p1, Lcom/powervision/media/R$id;->album_viewpager:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/PhotoPrViewPager;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAlbumViewpager:Lcom/powervision/media/widgets/PhotoPrViewPager;

    .line 96
    sget p1, Lcom/powervision/media/R$id;->image_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mImageBack:Landroid/widget/ImageView;

    .line 97
    sget p1, Lcom/powervision/media/R$id;->photo_num_all:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPhotoNumAll:Landroid/widget/TextView;

    .line 98
    sget p1, Lcom/powervision/media/R$id;->image_select:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mImageSelect:Landroid/widget/CheckBox;

    .line 99
    sget p1, Lcom/powervision/media/R$id;->layout_header:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mLayoutHeader:Landroid/widget/RelativeLayout;

    .line 100
    sget p1, Lcom/powervision/media/R$id;->text_edit:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextEdit:Landroid/widget/TextView;

    .line 101
    sget p1, Lcom/powervision/media/R$id;->text_share:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextShare:Landroid/widget/TextView;

    .line 102
    sget p1, Lcom/powervision/media/R$id;->text_delete:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextDelete:Landroid/widget/TextView;

    .line 103
    sget p1, Lcom/powervision/media/R$id;->preview_layout_footer:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPreviewLayoutFooter:Landroid/widget/LinearLayout;

    .line 105
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->index:I

    .line 106
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "imageList"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    .line 108
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    .line 109
    new-instance p1, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/PhotoPreAdatper;

    .line 110
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mImageSelect:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mImageSelect:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAlbumViewpager:Lcom/powervision/media/widgets/PhotoPrViewPager;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/PhotoPrViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 113
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAlbumViewpager:Lcom/powervision/media/widgets/PhotoPrViewPager;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/PhotoPreAdatper;

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/PhotoPrViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 114
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mAlbumViewpager:Lcom/powervision/media/widgets/PhotoPrViewPager;

    iget v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->index:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/PhotoPrViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->back()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .line 338
    iget-boolean p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->isDeleting:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 339
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->isDeleting:Z

    return-void

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->index:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p1, p2}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 345
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

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

    .line 346
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-lez p2, :cond_4

    .line 351
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextDelete:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%d/%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-le p2, v4, :cond_3

    .line 353
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextShare:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 354
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextEdit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 356
    :cond_3
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextEdit:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 357
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextShare:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 360
    :cond_4
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextDelete:Landroid/widget/TextView;

    sget p2, Lcom/powervision/media/R$string;->App_MediaLib_35:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 151
    sget v0, Lcom/powervision/media/R$id;->image_back:I

    if-ne p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->back()V

    goto :goto_0

    .line 154
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->text_delete:I

    if-ne p1, v0, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->delete()V

    goto :goto_0

    .line 156
    :cond_1
    sget v0, Lcom/powervision/media/R$id;->text_edit:I

    if-ne p1, v0, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->openEdit()V

    goto :goto_0

    .line 158
    :cond_2
    sget v0, Lcom/powervision/media/R$id;->text_share:I

    if-ne p1, v0, :cond_3

    .line 159
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "ap03_photo_share"

    invoke-static {p0, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 160
    iget-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->index:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->sharePath(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 400
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->imageList:Ljava/util/ArrayList;

    .line 402
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public onSingleTap()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mLayoutHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mPreviewLayoutFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->hideHeaderAndFooter()V

    goto :goto_0

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->showHeaderAndFooter()V

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mImageBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextEdit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextShare:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
