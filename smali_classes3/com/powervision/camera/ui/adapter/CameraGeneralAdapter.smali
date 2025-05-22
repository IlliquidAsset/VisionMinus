.class public Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "CameraGeneralAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;,
        Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;,
        Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final LEVEL0_TYPE1:I = 0x0

.field public static final LEVEL0_TYPE2:I = 0x1

.field public static final LEVEL0_TYPE3:I = 0x2

.field public static final LEVEL1_TYPE1:I = 0x3

.field public static final LEVEL1_TYPE2:I = 0x4

.field public static final LEVEL1_TYPE3:I = 0x5


# instance fields
.field private activity:Landroidx/fragment/app/FragmentActivity;

.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;

.field private mChangeListener:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;

.field private mChildCount:I

.field private mLastPos:I

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mSelectPos:I

.field private mView:Landroid/view/View;

.field private showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;",
            "Landroidx/fragment/app/FragmentActivity;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mLastPos:I

    .line 78
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_toggle_button:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->addItemType(II)V

    .line 79
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_text_and_arrow:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->addItemType(II)V

    .line 80
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_text_and_arrow:I

    invoke-virtual {p0, v1, v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->addItemType(II)V

    .line 81
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_text_layout:I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->addItemType(II)V

    .line 82
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_left_image_text:I

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->addItemType(II)V

    .line 83
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_camera_gesture_control_layout:I

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->addItemType(II)V

    .line 84
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 86
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 87
    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mChangeListener:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    return-object p0
.end method

.method private disableItemClick(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 7

    .line 273
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/lewis/camera/R$id;->toggle_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-nez p2, :cond_1

    .line 276
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p2

    if-nez p2, :cond_0

    .line 278
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 280
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 283
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 284
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_1
    if-ne p2, v4, :cond_4

    .line 287
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p2

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cameraCurrentStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 290
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 292
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 294
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result p2

    if-nez p2, :cond_3

    .line 296
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 298
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 301
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 302
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x4

    if-ne p2, v5, :cond_6

    .line 306
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p2

    if-nez p2, :cond_5

    .line 308
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 310
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 312
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 314
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 317
    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 318
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 319
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V
    .locals 6

    .line 94
    invoke-interface {p2}, Lcom/chad/library/adapter/base/entity/MultiItemEntity;->getItemType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_9

    .line 96
    check-cast p2, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;

    .line 97
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 102
    sget v1, Lcom/lewis/camera/R$id;->toggle_button:I

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_3

    :cond_0
    if-nez v1, :cond_8

    .line 104
    sget v1, Lcom/lewis/camera/R$id;->toggle_button:I

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_3

    :cond_1
    if-ne v0, v3, :cond_2

    .line 107
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "AP03_RECORD_NOISE_SWITCH"

    invoke-virtual {v1, v2, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 109
    sget v2, Lcom/lewis/camera/R$id;->toggle_button:I

    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_3

    :cond_2
    if-ne v0, v2, :cond_4

    .line 116
    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getIsSavePhoto()I

    move-result v1

    .line 117
    sget v2, Lcom/lewis/camera/R$id;->toggle_button:I

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_3

    :cond_4
    const-string v2, "general_init"

    if-ne v0, v1, :cond_6

    .line 119
    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getHeadlightState()I

    move-result v1

    .line 120
    sget v5, Lcom/lewis/camera/R$id;->toggle_button:I

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v5, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  333333333  headlightState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 123
    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getWaterMarkType()I

    move-result v1

    .line 124
    sget v5, Lcom/lewis/camera/R$id;->toggle_button:I

    if-ne v1, v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v5, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  44444444444  waterMarkType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_8
    :goto_3
    sget v1, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;->getItemName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->disableItemClick(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    .line 129
    sget p2, Lcom/lewis/camera/R$id;->toggle_button:I

    new-instance v0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;-><init>(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_7

    :cond_9
    if-ne v0, v3, :cond_b

    .line 158
    check-cast p2, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    .line 159
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 160
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getItemValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 161
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getBackRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->image_arrow:I

    .line 162
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow_down:I

    goto :goto_4

    :cond_a
    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow:I

    :goto_4
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 165
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraGeneralAdapter$kXYYh7v27uBpXBooGNoDgMLP6VU;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraGeneralAdapter$kXYYh7v27uBpXBooGNoDgMLP6VU;-><init>(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneraGroup2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_b
    if-ne v0, v2, :cond_e

    .line 188
    check-cast p2, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;

    .line 189
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 191
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_59:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 192
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 193
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$color;->white_alpha_80:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_5

    .line 195
    :cond_c
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_5

    .line 198
    :cond_d
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 200
    :goto_5
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraGeneralAdapter$F6fB8PSwGYHa9yWCS-nGPZp_TmQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraGeneralAdapter$F6fB8PSwGYHa9yWCS-nGPZp_TmQ;-><init>(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneraGroup3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_e
    if-ne v0, v1, :cond_10

    .line 214
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    check-cast p2, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    .line 216
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 217
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_image:I

    .line 218
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getImage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_layout:I

    .line 219
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lcom/lewis/camera/R$color;->blue:I

    goto :goto_6

    :cond_f
    const v2, 0x106000d

    :goto_6
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 221
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraGeneralAdapter$39Lkje7Oygh_lApsbZpLNK9RWfc;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraGeneralAdapter$39Lkje7Oygh_lApsbZpLNK9RWfc;-><init>(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneralChild1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    :goto_7
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V

    return-void
.end method

.method public synthetic lambda$convert$0$CameraGeneralAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneraGroup2;Landroid/view/View;)V
    .locals 2

    .line 166
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 167
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->isExpanded()Z

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->collapse(I)I

    .line 169
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mChildCount:I

    .line 170
    iput v0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mLastPos:I

    goto :goto_1

    .line 172
    :cond_0
    iget p3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mLastPos:I

    if-eq p3, p1, :cond_1

    if-eq p3, v0, :cond_1

    .line 173
    invoke-virtual {p0, p3}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->collapse(I)I

    .line 176
    :cond_1
    iget p3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mLastPos:I

    if-le p3, p1, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    iget p3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mChildCount:I

    sub-int/2addr p1, p3

    .line 181
    :goto_0
    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->expand(I)I

    .line 182
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mChildCount:I

    .line 183
    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mLastPos:I

    .line 185
    :goto_1
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mSelectPos:I

    return-void
.end method

.method public synthetic lambda$convert$1$CameraGeneralAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneraGroup3;Landroid/view/View;)V
    .locals 1

    .line 201
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    .line 202
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;

    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_56:I

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;->showResetCamera()V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_59:I

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 206
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result p1

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;->showFormatSdCard()V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget p3, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_61:I

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;->showFormatEmmc()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$convert$2$CameraGeneralAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneralChild1;Landroid/view/View;)V
    .locals 4

    .line 222
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 223
    iget p3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mSelectPos:I

    if-eq p3, p1, :cond_c

    .line 224
    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mSelectPos:I

    .line 225
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    const-string v1, "s_camera"

    if-eqz p3, :cond_2

    .line 226
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 232
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/powervision/camera/camera/CameraManager;->setCurrentStorageDevice(I)V

    const-string p3, " setCurrentStorageDevice  0  "

    .line 233
    invoke-static {v1, p3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v3, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 235
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getEmmcAllCapacity()I

    move-result p3

    if-nez p3, :cond_3

    return-void

    .line 238
    :cond_3
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result p3

    if-nez p3, :cond_4

    return-void

    .line 241
    :cond_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/powervision/camera/camera/CameraManager;->setCurrentStorageDevice(I)V

    const-string p3, " setCurrentStorageDevice  1  "

    .line 242
    invoke-static {v1, p3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getModeType()I

    move-result p3

    if-eqz p3, :cond_6

    .line 245
    new-instance p3, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {p3, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 246
    iget v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mLastPos:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getImage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p3}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 250
    :cond_6
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;

    if-eqz p1, :cond_c

    .line 251
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_49:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 252
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getModeType()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 253
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;->showNone()V

    goto :goto_1

    .line 254
    :cond_7
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getModeType()I

    move-result p1

    if-nez p1, :cond_c

    .line 255
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;->onCloseAF()V

    goto :goto_1

    .line 257
    :cond_8
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_51:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 258
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;->showGrid()V

    goto :goto_1

    .line 259
    :cond_9
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_52:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 260
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;->showGridAndDiagonal()V

    goto :goto_1

    .line 261
    :cond_a
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "50Hz"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 262
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;->onSwitch50()V

    goto :goto_1

    .line 263
    :cond_b
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "60Hz"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 264
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;->onSwitch60()V

    :cond_c
    :goto_1
    return-void
.end method

.method public setCheckedChangeListener(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->mChangeListener:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;

    return-void
.end method

.method public setGridAndDiagonalCallBack(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;

    return-void
.end method

.method public setShowDialogCallBack(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;

    return-void
.end method
