.class public Lcom/lewis/edit/ui/activity/ImageEditActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "ImageEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdjustTv:Landroid/widget/TextView;

.field private mCropTv:Landroid/widget/TextView;

.field private mFilterTv:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;

.field private mImagePath:Ljava/lang/String;

.field private mRotationTv:Landroid/widget/TextView;

.field private mSaveText:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method private advancedConfig(Lcom/yalantis/ucrop/UCrop;Ljava/lang/String;I)Lcom/yalantis/ucrop/UCrop;
    .locals 3

    .line 245
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    .line 246
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    const/16 v1, 0x5a

    .line 247
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionQuality(I)V

    const/4 v1, 0x0

    .line 248
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setHideBottomControls(Z)V

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 250
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCrop$Options;->setFreeStyleCropEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 252
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setFreeStyleCropEnabled(Z)V

    .line 254
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, p3}, Lcom/yalantis/ucrop/UCrop$Options;->setEditType(I)V

    .line 256
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 5

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCropError(Landroid/content/Intent;)V
    .locals 0

    .line 228
    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_0
    sget p1, Lcom/lewis/edit/R$string;->AP03_MediaLib_49:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleCropResult(Landroid/content/Intent;)V
    .locals 1

    .line 218
    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mUri:Landroid/net/Uri;

    .line 221
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ImageUtil;->getSimpleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 223
    :cond_0
    sget p1, Lcom/lewis/edit/R$string;->AP03_MediaLib_51:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleEditResult(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "tempUri"

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mUri:Landroid/net/Uri;

    .line 211
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ImageUtil;->getSimpleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 213
    :cond_0
    sget p1, Lcom/lewis/edit/R$string;->AP03_MediaLib_51:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private savePicture(Ljava/lang/String;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewis/edit/utils/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p0, v0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->scanFile(Landroid/content/Context;Ljava/io/File;)V

    .line 147
    new-instance v0, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v0}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 149
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 150
    invoke-virtual {v0, p1}, Lcom/powervision/base/model/MediaModel;->setImagePath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 151
    invoke-virtual {v0, p1}, Lcom/powervision/base/model/MediaModel;->setPlatform(I)V

    const/4 p1, 0x0

    .line 152
    invoke-virtual {v0, p1}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    .line 153
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/DbHelper;->save(Ljava/lang/Object;)Z

    return-void
.end method

.method private scanFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private toFilterAdjustActivity(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fileName"

    .line 184
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "image_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "type"

    .line 186
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "title"

    .line 187
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0xc8

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private toUCropActivity(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mUri:Landroid/net/Uri;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lcom/yalantis/ucrop/UCrop;->useSourceImageAspectRatio()Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->advancedConfig(Lcom/yalantis/ucrop/UCrop;Ljava/lang/String;I)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 179
    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 59
    sget v0, Lcom/lewis/edit/R$layout;->edit_image_activity:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/lewis/edit/R$mipmap;->back_icon:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 79
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 80
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mImagePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/powervision/base/utils/UriUtil;->getImageContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mUri:Landroid/net/Uri;

    .line 85
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "image_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mImagePath:Ljava/lang/String;

    .line 67
    :cond_0
    sget p1, Lcom/lewis/edit/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 68
    sget p1, Lcom/lewis/edit/R$id;->image:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mImage:Landroid/widget/ImageView;

    .line 69
    sget p1, Lcom/lewis/edit/R$id;->save:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mSaveText:Landroid/widget/TextView;

    .line 70
    sget p1, Lcom/lewis/edit/R$id;->tv_crop:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mCropTv:Landroid/widget/TextView;

    .line 71
    sget p1, Lcom/lewis/edit/R$id;->tv_rotate:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mRotationTv:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/lewis/edit/R$id;->tv_adjust:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mAdjustTv:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/lewis/edit/R$id;->tv_filter:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mFilterTv:Landroid/widget/TextView;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 193
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 v0, 0x45

    if-ne p1, v0, :cond_0

    .line 196
    invoke-direct {p0, p3}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->handleCropResult(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 198
    invoke-direct {p0, p3}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->handleEditResult(Landroid/content/Intent;)V

    .line 200
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mSaveText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const/16 p1, 0x60

    if-ne p2, p1, :cond_3

    .line 203
    invoke-direct {p0, p3}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->handleCropError(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 119
    sget v0, Lcom/lewis/edit/R$id;->save:I

    if-ne p1, v0, :cond_0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getImageDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->savePicture(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_photo_share"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/share/shareActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    const-string v1, "image_path"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_0
    sget v0, Lcom/lewis/edit/R$id;->tv_crop:I

    const-string v1, "SampleEditImage.jpg"

    if-ne p1, v0, :cond_1

    .line 125
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "ap03_photo_clip"

    invoke-static {p0, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    sget p1, Lcom/lewis/edit/R$string;->App_MediaLib_132:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->toUCropActivity(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 127
    :cond_1
    sget v0, Lcom/lewis/edit/R$id;->tv_rotate:I

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    .line 128
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "ap03_photo_rotation"

    invoke-static {p0, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    sget p1, Lcom/lewis/edit/R$string;->App_MediaLib_133:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v2}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->toUCropActivity(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 130
    :cond_2
    sget v0, Lcom/lewis/edit/R$id;->tv_adjust:I

    if-ne p1, v0, :cond_3

    .line 131
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "ap03_photo_adjust"

    invoke-static {p0, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    sget p1, Lcom/lewis/edit/R$string;->App_MediaLib_134:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v2}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->toFilterAdjustActivity(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 133
    :cond_3
    sget v0, Lcom/lewis/edit/R$id;->tv_filter:I

    if-ne p1, v0, :cond_4

    .line 134
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "ap03_photo_filter"

    invoke-static {p0, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    sget p1, Lcom/lewis/edit/R$string;->App_MediaLib_135:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->toFilterAdjustActivity(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/ImageEditActivity;->finish()V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected setListener()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mAdjustTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mFilterTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mRotationTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mCropTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/ImageEditActivity;->mSaveText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
