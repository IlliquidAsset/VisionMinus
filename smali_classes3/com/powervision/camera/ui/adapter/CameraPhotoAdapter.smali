.class public Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "CameraPhotoAdapter.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;"
    }
.end annotation


# static fields
.field public static final CAMERA_PHOTO_LEVEL0_TYPE1:I = 0x0

.field public static final CAMERA_PHOTO_LEVEL0_TYPE2:I = 0x1

.field public static final CAMERA_PHOTO_LEVEL0_TYPE3:I = 0x2

.field public static final CAMERA_PHOTO_LEVEL0_TYPE4:I = 0x3

.field public static final CAMERA_PHOTO_LEVEL1_TYPE1:I = 0x4

.field public static final CAMERA_PHOTO_LEVEL1_TYPE2:I = 0x5

.field public static final CAMERA_PHOTO_LEVEL1_TYPE3:I = 0x6

.field public static final CAMERA_PHOTO_LEVEL1_TYPE4:I = 0x7

.field public static final CAMERA_PHOTO_LEVEL2_TYPE1:I = 0x8

.field public static final CAMERA_PHOTO_LEVEL2_TYPE2:I = 0x9

.field public static final CAMERA_PHOTO_LEVEL2_TYPE3:I = 0xa

.field public static final CAMERA_PHOTO_LEVEL2_TYPE4:I = 0xb


# instance fields
.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private isFollowOpen:Z

.field private mChildCount:I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandLevel3Pos:I

.field private mLastPos:I

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mLevel3Count:I

.field private mSelectCount:I

.field private mSelectIndex:I

.field private mSelectText:Landroid/widget/TextView;

.field private mText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

.field private styleType:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLastPos:I

    .line 117
    iput v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->styleType:I

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->isFollowOpen:Z

    .line 134
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mData:Ljava/util/List;

    .line 135
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_text_and_arrow:I

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 136
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_text_and_arrow:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 137
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_text_and_arrow:I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 138
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_text_and_arrow:I

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 139
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_left_image_text:I

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 140
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_text:I

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 141
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_photo_style_layout:I

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 142
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_left_image_text:I

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 143
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_photo_white_black_custom:I

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 144
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_photo_mode_level3:I

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 145
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_photo_mode_timed_shot:I

    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 146
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_photo_mode_timed_shot:I

    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->addItemType(II)V

    .line 147
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 149
    invoke-virtual {p0, p0}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 150
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;)Lcom/powervision/camera/camera/CameraManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    return-object p0
.end method

.method private expand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V
    .locals 3

    .line 634
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mExpandLevel3Pos:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0, v0, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->collapse(IZ)I

    .line 637
    :cond_0
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->isExpanded()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {p0, p2}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->collapse(I)I

    .line 639
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mChildCount:I

    .line 640
    iput v2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLastPos:I

    goto :goto_1

    .line 643
    :cond_1
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLastPos:I

    if-eq v0, p2, :cond_2

    if-eq v0, v2, :cond_2

    .line 644
    invoke-virtual {p0, v0}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->collapse(I)I

    .line 648
    :cond_2
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLastPos:I

    if-le v0, p2, :cond_3

    goto :goto_0

    .line 652
    :cond_3
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mChildCount:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLevel3Count:I

    sub-int/2addr p2, v0

    .line 654
    :goto_0
    invoke-virtual {p0, p2}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->expand(I)I

    .line 655
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mChildCount:I

    .line 656
    iput p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLastPos:I

    .line 658
    :goto_1
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLevel3Count:I

    .line 659
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mSelectIndex:I

    .line 660
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mExpandLevel3Pos:I

    return-void
.end method

.method private initCustomWBViews(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 5

    .line 378
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 379
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/lewis/camera/R$id;->wb_seek_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 380
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    const/4 v1, 0x1

    new-array v2, v1, [I

    sget v3, Lcom/lewis/camera/R$id;->wb_image_minus:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 381
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v1, v1, [I

    sget v2, Lcom/lewis/camera/R$id;->wb_image_plus:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 382
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    const/16 v2, 0x2710

    if-gt v0, v2, :cond_0

    sub-int/2addr v0, v1

    .line 384
    div-int/lit8 v4, v0, 0x64

    .line 388
    :cond_0
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  adapter  ....wbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current progress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter$1;

    invoke-direct {v0, p0}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter$1;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private initSytleItemStatus(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoChild3;)V
    .locals 8

    .line 413
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 414
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getStyleMode()I

    move-result p2

    .line 417
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLuminance()I

    move-result v0

    .line 418
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getContrast()I

    move-result v1

    .line 419
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getSaturation()I

    move-result v2

    .line 421
    sget v3, Lcom/lewis/camera/R$id;->layout_standard:I

    const v4, 0x106000d

    if-nez p2, :cond_0

    sget v5, Lcom/lewis/camera/R$color;->blue:I

    goto :goto_0

    :cond_0
    const v5, 0x106000d

    :goto_0
    invoke-virtual {p1, v3, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    sget v3, Lcom/lewis/camera/R$id;->layout_scape:I

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    sget v6, Lcom/lewis/camera/R$color;->blue:I

    goto :goto_1

    :cond_1
    const v6, 0x106000d

    .line 422
    :goto_1
    invoke-virtual {p1, v3, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    sget v3, Lcom/lewis/camera/R$id;->layout_neuter:I

    const/4 v6, 0x2

    if-ne p2, v6, :cond_2

    sget v7, Lcom/lewis/camera/R$color;->blue:I

    goto :goto_2

    :cond_2
    const v7, 0x106000d

    .line 423
    :goto_2
    invoke-virtual {p1, v3, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    sget v3, Lcom/lewis/camera/R$id;->layout_custom:I

    const/4 v7, 0x3

    if-ne p2, v7, :cond_3

    sget v4, Lcom/lewis/camera/R$color;->blue:I

    .line 424
    :cond_3
    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    sget v3, Lcom/lewis/camera/R$id;->custom_sharpness:I

    const-string v4, "0"

    if-ne p2, v7, :cond_4

    .line 427
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v4

    :goto_3
    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$id;->custom_contrast:I

    if-ne p2, v7, :cond_5

    .line 428
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v4

    :goto_4
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$id;->custom_saturation:I

    if-ne p2, v7, :cond_6

    .line 429
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    sget v1, Lcom/lewis/camera/R$id;->layout_standard:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 431
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    sget v1, Lcom/lewis/camera/R$id;->layout_scape:I

    aput v1, v0, v2

    .line 432
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    sget v1, Lcom/lewis/camera/R$id;->layout_neuter:I

    aput v1, v0, v2

    .line 433
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    sget v1, Lcom/lewis/camera/R$id;->layout_custom:I

    aput v1, v0, v2

    .line 434
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    sget v1, Lcom/lewis/camera/R$id;->custom_sharpness:I

    aput v1, v0, v2

    .line 436
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    sget v1, Lcom/lewis/camera/R$id;->custom_contrast:I

    aput v1, v0, v2

    .line 437
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    sget v1, Lcom/lewis/camera/R$id;->custom_saturation:I

    aput v1, v0, v2

    .line 438
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    sget v1, Lcom/lewis/camera/R$id;->style_minus_icon:I

    aput v1, v0, v2

    .line 440
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    sget v1, Lcom/lewis/camera/R$id;->style_image_plus_icon:I

    aput v1, v0, v2

    .line 441
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-nez p2, :cond_7

    .line 444
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/lewis/camera/R$id;->layout_standard:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    goto :goto_5

    :cond_7
    if-ne p2, v5, :cond_8

    .line 446
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/lewis/camera/R$id;->layout_scape:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    goto :goto_5

    :cond_8
    if-ne p2, v6, :cond_9

    .line 448
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/lewis/camera/R$id;->layout_neuter:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    goto :goto_5

    :cond_9
    if-ne p2, v7, :cond_a

    .line 450
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/lewis/camera/R$id;->layout_custom:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    :cond_a
    :goto_5
    return-void
.end method

.method private level3Expand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V
    .locals 2

    .line 670
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 671
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p0, p2, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->collapse(IZ)I

    .line 673
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLevel3Count:I

    .line 674
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mSelectCount:I

    goto :goto_0

    .line 677
    :cond_0
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mExpandLevel3Pos:I

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 678
    invoke-virtual {p0, v0, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->collapse(IZ)I

    .line 682
    :cond_1
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mExpandLevel3Pos:I

    if-ge v0, p2, :cond_2

    .line 683
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLevel3Count:I

    sub-int/2addr p2, v0

    .line 687
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->expand(IZ)I

    .line 688
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLevel3Count:I

    .line 689
    iput p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mExpandLevel3Pos:I

    .line 690
    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mSelectCount:I

    goto :goto_0

    .line 694
    :cond_3
    iget p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mExpandLevel3Pos:I

    if-eqz p1, :cond_4

    .line 695
    invoke-virtual {p0, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->collapse(IZ)I

    .line 696
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLevel3Count:I

    :cond_4
    :goto_0
    return-void
.end method

.method private setCustomBtnStatus(Landroid/view/View;ZZZ)V
    .locals 2

    .line 570
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    if-nez p2, :cond_0

    return-void

    .line 573
    :cond_0
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    const p3, 0x106000d

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eq p1, p2, :cond_4

    instance-of p2, p1, Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_4

    .line 574
    sget p2, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 575
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 576
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 578
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Lcom/lewis/camera/R$id;->layout_custom:I

    if-ne p2, p3, :cond_2

    .line 579
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p3, Lcom/lewis/camera/R$id;->custom_sharpness:I

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mSelectText:Landroid/widget/TextView;

    .line 580
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 581
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p3, Lcom/lewis/camera/R$id;->layout_custom_seek:I

    invoke-virtual {p2, p3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    .line 583
    :cond_2
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p3, Lcom/lewis/camera/R$id;->layout_custom_seek:I

    invoke-virtual {p2, p3, p4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 584
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mSelectText:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 585
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 p2, 0x0

    .line 586
    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mSelectText:Landroid/widget/TextView;

    .line 589
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    goto/16 :goto_1

    .line 590
    :cond_4
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mSelectText:Landroid/widget/TextView;

    if-eq p1, p2, :cond_7

    .line 592
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 593
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/lewis/camera/R$id;->layout_custom_seek:I

    invoke-virtual {p2, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 594
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mSelectText:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 595
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 597
    :cond_5
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget p4, Lcom/lewis/camera/R$id;->layout_custom:I

    if-eq p2, p4, :cond_6

    .line 598
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 600
    :cond_6
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p3, Lcom/lewis/camera/R$id;->layout_custom:I

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mView:Landroid/view/View;

    .line 601
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mViewHolder:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p3, Lcom/lewis/camera/R$id;->layout_custom:I

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 603
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mSelectText:Landroid/widget/TextView;

    .line 604
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 606
    instance-of p2, p1, Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_7

    .line 607
    check-cast p1, Landroid/widget/RelativeLayout;

    sget p2, Lcom/lewis/camera/R$id;->custom_sharpness:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 608
    sget p3, Lcom/lewis/camera/R$id;->custom_contrast:I

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 609
    sget p4, Lcom/lewis/camera/R$id;->custom_saturation:I

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 611
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/powervision/camera/camera/CameraManager;->getLuminance()I

    move-result p4

    .line 612
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getContrast()I

    move-result v0

    .line 613
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getSaturation()I

    move-result v1

    .line 614
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V
    .locals 7

    .line 166
    invoke-interface {p2}, Lcom/chad/library/adapter/base/entity/MultiItemEntity;->getItemType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 168
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;

    .line 169
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 170
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->getImageResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->image_arrow:I

    .line 171
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow_down:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 173
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$ikwZQBvW8X_eZU7jHB3JvaCkRZY;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$ikwZQBvW8X_eZU7jHB3JvaCkRZY;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_1
    if-nez v0, :cond_3

    .line 179
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    .line 180
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 181
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getItemValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->image_arrow:I

    .line 182
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow_down:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow:I

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 184
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getImageResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 185
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$HOFvCG6MxG8AKd5WcT0pa_QVi28;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$HOFvCG6MxG8AKd5WcT0pa_QVi28;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_3
    const/4 v1, 0x1

    if-ne v1, v0, :cond_5

    .line 191
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;

    .line 192
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 193
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getItemValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 194
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getImageResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->image_arrow:I

    .line 195
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow_down:I

    goto :goto_2

    :cond_4
    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow:I

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 197
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$_ES7ty9pZQGsG83BWp-CsuOnYK4;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$_ES7ty9pZQGsG83BWp-CsuOnYK4;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_5
    const/4 v2, 0x2

    if-ne v2, v0, :cond_7

    .line 203
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;

    .line 204
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 205
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->getItemValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->image_arrow:I

    .line 206
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow_down:I

    goto :goto_3

    :cond_6
    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow:I

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 208
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$anUA6CAV1E3-Z4QNsY97BpCwucs;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$anUA6CAV1E3-Z4QNsY97BpCwucs;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_7
    const/4 v3, 0x4

    const v4, 0x106000d

    if-ne v3, v0, :cond_9

    .line 214
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    .line 216
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_image:I

    .line 217
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->getItemImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_image:I

    .line 218
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->getImageResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_layout:I

    .line 219
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_8

    sget v4, Lcom/lewis/camera/R$color;->blue:I

    :cond_8
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 221
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mBtV_9qqCPfgwUO7myP1T8SeYSM;

    invoke-direct {v1, p0, p2, p1}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mBtV_9qqCPfgwUO7myP1T8SeYSM;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/powervision/camera/model/bean/CameraPhotoChild1;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_9
    const/4 v3, 0x7

    if-ne v3, v0, :cond_b

    .line 253
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    .line 255
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_image:I

    .line 256
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getImageResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_layout:I

    .line 257
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_a

    sget v4, Lcom/lewis/camera/R$color;->blue:I

    :cond_a
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 259
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$QKOR8keI9hXbT33xRF2qyGntk6A;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$QKOR8keI9hXbT33xRF2qyGntk6A;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoChild4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_b
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v3, v0, :cond_e

    .line 301
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoChild2;

    .line 303
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 304
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->getItemValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_layout:I

    .line 305
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->isSelect()Z

    move-result p2

    if-eqz p2, :cond_c

    sget v4, Lcom/lewis/camera/R$color;->blue:I

    :cond_c
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 306
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p2

    .line 307
    iget-boolean v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->isFollowOpen:Z

    if-eqz v0, :cond_d

    if-ne p2, v2, :cond_d

    .line 308
    sget p2, Lcom/lewis/camera/R$id;->item_name:I

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 309
    sget p2, Lcom/lewis/camera/R$id;->item_value:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_4

    .line 311
    :cond_d
    sget p2, Lcom/lewis/camera/R$id;->item_name:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 312
    sget p2, Lcom/lewis/camera/R$id;->item_value:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 314
    :goto_4
    iget-object p2, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$d_Cq3DrCb4sdgCWm_kLlC_Ffcyc;

    invoke-direct {v0, p0, p1}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$d_Cq3DrCb4sdgCWm_kLlC_Ffcyc;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_e
    const/4 v2, 0x6

    if-ne v2, v0, :cond_f

    .line 334
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoChild3;

    invoke-direct {p0, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->initSytleItemStatus(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoChild3;)V

    goto/16 :goto_7

    :cond_f
    const/16 v2, 0x8

    if-ne v2, v0, :cond_10

    .line 336
    invoke-direct {p0, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->initCustomWBViews(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    goto/16 :goto_7

    :cond_10
    const/16 v2, 0x9

    const/4 v3, -0x1

    if-ne v2, v0, :cond_14

    .line 337
    instance-of v2, p2, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    if-eqz v2, :cond_14

    .line 338
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    .line 339
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 340
    sget v2, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->getItemName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v5, Lcom/lewis/camera/R$id;->item_name:I

    .line 341
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->isSelect()Z

    move-result v6

    if-eqz v6, :cond_11

    move v3, v0

    :cond_11
    invoke-virtual {v2, v5, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v2, Lcom/lewis/camera/R$id;->item_image:I

    .line 342
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->getSelectResId()I

    move-result v3

    goto :goto_5

    .line 343
    :cond_12
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->getImageResId()I

    move-result v3

    .line 342
    :goto_5
    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v2, Lcom/lewis/camera/R$id;->item_image:I

    .line 344
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->getImageResId()I

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_6

    :cond_13
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 345
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$yk1cAu-YZqWE5CIsngBuOogdqI8;

    invoke-direct {v0, p0, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$yk1cAu-YZqWE5CIsngBuOogdqI8;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/powervision/camera/model/bean/CameraPhotoChildChild;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_14
    const/16 v1, 0xa

    if-ne v1, v0, :cond_16

    .line 351
    instance-of v1, p2, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-eqz v1, :cond_16

    .line 352
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    .line 353
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 354
    sget v1, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$id;->item_name:I

    .line 355
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_15

    move v3, v0

    :cond_15
    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 356
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$TgxBz1bOZ8m4gA7S22KmMeY-kiM;

    invoke-direct {v0, p0, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$TgxBz1bOZ8m4gA7S22KmMeY-kiM;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_16
    const/16 v1, 0xb

    if-ne v1, v0, :cond_18

    .line 364
    instance-of v0, p2, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;

    if-eqz v0, :cond_18

    .line 365
    check-cast p2, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;

    .line 366
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 367
    sget v1, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$id;->item_name:I

    .line 368
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_17

    move v3, v0

    :cond_17
    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 369
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mItDhYgz2pHMk82kWEQzBGMEQ-o;

    invoke-direct {v0, p0, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$mItDhYgz2pHMk82kWEQzBGMEQ-o;-><init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    :goto_7
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V

    return-void
.end method

.method public expandSelectedItem(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mData:Ljava/util/List;

    .line 160
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;

    .line 161
    invoke-direct {p0, v0, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->expand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    return-void
.end method

.method public synthetic lambda$convert$0$CameraPhotoAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup4;Landroid/view/View;)V
    .locals 0

    .line 174
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 175
    invoke-direct {p0, p2, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->expand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    return-void
.end method

.method public synthetic lambda$convert$1$CameraPhotoAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup1;Landroid/view/View;)V
    .locals 0

    .line 186
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 187
    invoke-direct {p0, p2, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->expand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    return-void
.end method

.method public synthetic lambda$convert$2$CameraPhotoAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup2;Landroid/view/View;)V
    .locals 1

    .line 198
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 199
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7167\u7247\u5c3a\u5bf81==>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "p_camera"

    invoke-static {v0, p3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p2, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->expand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    return-void
.end method

.method public synthetic lambda$convert$3$CameraPhotoAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoGroup3;Landroid/view/View;)V
    .locals 1

    .line 209
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 210
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u70b9\u51fb \u98ce\u683c pos="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "p_camera"

    invoke-static {v0, p3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p2, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->expand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    return-void
.end method

.method public synthetic lambda$convert$4$CameraPhotoAdapter(Lcom/powervision/camera/model/bean/CameraPhotoChild1;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V
    .locals 2

    .line 222
    invoke-virtual {p1}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->getItemImage()Ljava/lang/String;

    move-result-object p3

    .line 223
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p2

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->level3Expand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    .line 225
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p3, "s_camera"

    if-eqz p1, :cond_0

    add-int/lit8 p1, p2, -0x4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..set \u767d\u5e73\u8861 ---> pos= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ---> wbValue="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setWhiteBalance(I)V

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x3

    const/4 v0, 0x1

    if-ne p2, p1, :cond_2

    .line 231
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 233
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_77:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setPhotoFileFormat(I)V

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  ...  0   \u7167\u7247\u683c\u5f0f==> pos= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    .line 239
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setPhotoFileFormat(I)V

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " ...   1\u7167\u7247\u683c\u5f0f==> pos="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    .line 242
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 244
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_77:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 247
    :cond_4
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setPhotoFileFormat(I)V

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  ...2   \u7167\u7247\u683c\u5f0f==> pos="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic lambda$convert$5$CameraPhotoAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraPhotoChild4;Landroid/view/View;)V
    .locals 3

    .line 260
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 262
    invoke-direct {p0, p2, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->level3Expand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    .line 263
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   \u70b9\u51fbitem   pos="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "s_camera"

    invoke-static {v0, p3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-ne p1, p3, :cond_0

    .line 265
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, v1, v1}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(II)V

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " ...\u5355\u62cd    pos="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 268
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p3, v1}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(II)V

    .line 269
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getPhotoFormatType()I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getPhotoFormatType()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 270
    :cond_1
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p3}, Lcom/powervision/camera/camera/CameraManager;->setPhotoFileFormat(I)V

    .line 271
    sget p2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_76:I

    invoke-static {p2}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 273
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " ...HDR    pos="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 275
    :cond_3
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result p1

    const/4 p3, 0x0

    .line 276
    :goto_0
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    .line 277
    invoke-virtual {p2, p3}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    .line 278
    invoke-virtual {p2, p3}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->setSelect(Z)V

    goto :goto_1

    .line 279
    :cond_4
    invoke-virtual {p2, p3}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    .line 280
    invoke-virtual {p2, p3}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->setSelect(Z)V

    goto :goto_1

    .line 281
    :cond_5
    invoke-virtual {p2, p3}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    if-eqz v0, :cond_6

    if-eq p1, v2, :cond_6

    .line 282
    invoke-virtual {p2, p3}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->setSelect(Z)V

    :cond_6
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 285
    :cond_7
    invoke-virtual {p0}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method public synthetic lambda$convert$6$CameraPhotoAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V
    .locals 1

    .line 316
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/livestreaming/LiveStreaming;->isLiveRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 317
    sget p1, Lcom/lewis/camera/R$string;->AP03_DV_GeneralSetting_41_1:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 p2, 0x2

    const-string v0, "camera_check"

    if-ne p1, p2, :cond_2

    .line 322
    iget-boolean p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->isFollowOpen:Z

    if-eqz p1, :cond_1

    return-void

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setPhotoResolution(I)V

    const-string p1, "  set   \u8bbe\u7f6e setPhotoResolution= resolution=0"

    .line 326
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 328
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setPhotoResolution(I)V

    const-string p1, "  set   \u8bbe\u7f6e setPhotoResolution= resolution=1"

    .line 329
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$convert$7$CameraPhotoAdapter(Lcom/powervision/camera/model/bean/CameraPhotoChildChild;Landroid/view/View;)V
    .locals 1

    .line 347
    invoke-virtual {p1}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->getItemName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 348
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(II)V

    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " type =2  .....  value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "s_camera"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$convert$8$CameraPhotoAdapter(Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;Landroid/view/View;)V
    .locals 4

    .line 359
    invoke-virtual {p1}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->getItemName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "s"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 360
    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(II)V

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type =4   ..... value="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p1}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->getItemName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "s_camera"

    .line 361
    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$convert$9$CameraPhotoAdapter(Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;Landroid/view/View;)V
    .locals 1

    .line 370
    invoke-virtual {p1}, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->getItemName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 371
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(II)V

    .line 372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " aeb type =3    value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "s_camera"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    .line 463
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    .line 465
    sget p3, Lcom/lewis/camera/R$id;->layout_standard:I

    const-string v0, "s_camera"

    const/4 v1, 0x0

    if-ne p1, p3, :cond_0

    .line 466
    invoke-direct {p0, p2, v1, v1, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setCustomBtnStatus(Landroid/view/View;ZZZ)V

    .line 467
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, v1}, Lcom/powervision/camera/camera/CameraManager;->setPhotoStyle(I)V

    const-string p1, " ...setPhotoStyle   0\u3002\u3002\u3002"

    .line 468
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 469
    :cond_0
    sget p3, Lcom/lewis/camera/R$id;->layout_scape:I

    const/4 v2, 0x1

    if-ne p1, p3, :cond_1

    .line 470
    invoke-direct {p0, p2, v1, v1, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setCustomBtnStatus(Landroid/view/View;ZZZ)V

    .line 471
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, v2}, Lcom/powervision/camera/camera/CameraManager;->setPhotoStyle(I)V

    const-string p1, " ...setPhotoStyle  1\u3002\u3002\u3002  ;"

    .line 472
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 473
    :cond_1
    sget p3, Lcom/lewis/camera/R$id;->layout_neuter:I

    const/4 v3, 0x2

    if-ne p1, p3, :cond_2

    .line 474
    invoke-direct {p0, p2, v1, v1, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setCustomBtnStatus(Landroid/view/View;ZZZ)V

    .line 475
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, v3}, Lcom/powervision/camera/camera/CameraManager;->setPhotoStyle(I)V

    const-string p1, " ...setPhotoStyle  2 \u3002\u3002\u3002  "

    .line 476
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 477
    :cond_2
    sget p3, Lcom/lewis/camera/R$id;->layout_custom:I

    const/4 v4, 0x3

    if-ne p1, p3, :cond_3

    .line 478
    invoke-direct {p0, p2, v2, v1, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setCustomBtnStatus(Landroid/view/View;ZZZ)V

    .line 479
    sget p1, Lcom/lewis/camera/R$id;->custom_sharpness:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    .line 480
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->styleType:I

    .line 481
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, v4}, Lcom/powervision/camera/camera/CameraManager;->setPhotoStyle(I)V

    const-string p1, " ...setPhotoStyle  \u81ea\u5b9a\u4e49 "

    .line 482
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 483
    :cond_3
    sget p3, Lcom/lewis/camera/R$id;->custom_sharpness:I

    if-ne p1, p3, :cond_4

    .line 484
    invoke-direct {p0, p2, v2, v1, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setCustomBtnStatus(Landroid/view/View;ZZZ)V

    .line 485
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    .line 486
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->styleType:I

    .line 487
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, v4}, Lcom/powervision/camera/camera/CameraManager;->setPhotoStyle(I)V

    .line 488
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 491
    :cond_4
    sget p3, Lcom/lewis/camera/R$id;->custom_contrast:I

    if-ne p1, p3, :cond_5

    .line 492
    invoke-direct {p0, p2, v1, v2, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setCustomBtnStatus(Landroid/view/View;ZZZ)V

    .line 493
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    .line 494
    iput v2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->styleType:I

    .line 495
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, v4}, Lcom/powervision/camera/camera/CameraManager;->setPhotoStyle(I)V

    .line 496
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 499
    :cond_5
    sget p3, Lcom/lewis/camera/R$id;->custom_saturation:I

    if-ne p1, p3, :cond_6

    .line 500
    invoke-direct {p0, p2, v1, v1, v2}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setCustomBtnStatus(Landroid/view/View;ZZZ)V

    .line 501
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    .line 502
    iput v3, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->styleType:I

    .line 503
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, v4}, Lcom/powervision/camera/camera/CameraManager;->setPhotoStyle(I)V

    .line 504
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 507
    :cond_6
    sget p2, Lcom/lewis/camera/R$id;->style_image_plus_icon:I

    const-string p3, "cust_value"

    if-ne p1, p2, :cond_a

    const-string p1, " ..+++++...clicck  image_plus= "

    .line 508
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p1, v4, :cond_9

    add-int/lit8 p1, p1, 0x1

    .line 512
    iget p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->styleType:I

    if-nez p2, :cond_7

    .line 513
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setLuminance(I)V

    .line 514
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " +  0 ...setLuminance  value= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-ne p2, v2, :cond_8

    .line 516
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " +  1  setContrast.. value= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setContrast(I)V

    goto :goto_0

    :cond_8
    if-ne p2, v3, :cond_9

    .line 519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " +  2  ..setSaturation value= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setSaturation(I)V

    .line 523
    :cond_9
    :goto_0
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 524
    :cond_a
    sget p2, Lcom/lewis/camera/R$id;->style_minus_icon:I

    if-ne p1, p2, :cond_e

    .line 525
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x3

    if-le p1, p2, :cond_d

    add-int/lit8 p1, p1, -0x1

    .line 528
    iget p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->styleType:I

    if-nez p2, :cond_b

    .line 529
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " -  0  setLuminance.. value= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setLuminance(I)V

    goto :goto_1

    :cond_b
    if-ne p2, v2, :cond_c

    .line 532
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " -  1  setContrast .. value= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setContrast(I)V

    goto :goto_1

    :cond_c
    if-ne p2, v3, :cond_d

    .line 535
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " -  2  setSaturation.. value= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setSaturation(I)V

    .line 539
    :cond_d
    :goto_1
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 540
    :cond_e
    sget p2, Lcom/lewis/camera/R$id;->wb_image_minus:I

    const/16 p3, 0x7d0

    if-ne p1, p2, :cond_10

    .line 541
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result p1

    const/16 p2, 0x834

    if-lt p1, p2, :cond_f

    add-int/lit8 p3, p1, -0x64

    .line 547
    :cond_f
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, p3}, Lcom/powervision/camera/camera/CameraManager;->setWhiteBalance(I)V

    goto :goto_3

    .line 548
    :cond_10
    sget p2, Lcom/lewis/camera/R$id;->wb_image_plus:I

    if-ne p1, p2, :cond_13

    .line 549
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result p1

    const/16 p2, 0x2710

    if-lt p1, p2, :cond_11

    const/16 p3, 0x2710

    goto :goto_2

    :cond_11
    const/4 p2, 0x6

    if-ge p1, p2, :cond_12

    goto :goto_2

    :cond_12
    add-int/lit8 p3, p1, 0x64

    .line 557
    :goto_2
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, p3}, Lcom/powervision/camera/camera/CameraManager;->setWhiteBalance(I)V

    :cond_13
    :goto_3
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;)V"
        }
    .end annotation

    .line 622
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->mData:Ljava/util/List;

    .line 623
    invoke-virtual {p0}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFollowOpen(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->isFollowOpen:Z

    .line 123
    invoke-virtual {p0}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPhotoStyle(I)V
    .locals 0

    return-void
.end method
