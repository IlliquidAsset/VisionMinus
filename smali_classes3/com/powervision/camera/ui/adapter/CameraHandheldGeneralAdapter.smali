.class public Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "CameraHandheldGeneralAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;,
        Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;,
        Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;
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

.field private audioStatus:I

.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

.field private mChangeListener:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;

.field private mChildCount:I

.field private mLastPos:I

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mSelectPos:I

.field private mView:Landroid/view/View;

.field private offSet:I

.field private preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/fragment/app/FragmentActivity;)V
    .locals 3
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

    .line 81
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mLastPos:I

    const/4 v0, 0x3

    .line 72
    iput v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->offSet:I

    .line 82
    sget v1, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_toggle_button:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->addItemType(II)V

    .line 83
    sget v1, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_text_and_arrow:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->addItemType(II)V

    .line 84
    sget v1, Lcom/lewis/camera/R$layout;->aircraft_left_text_right_text_and_arrow:I

    invoke-virtual {p0, v2, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->addItemType(II)V

    .line 85
    sget v1, Lcom/lewis/camera/R$layout;->aircraft_text_layout:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->addItemType(II)V

    .line 86
    sget v1, Lcom/lewis/camera/R$layout;->aircraft_left_image_text:I

    invoke-virtual {p0, v0, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->addItemType(II)V

    .line 87
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_camera_gesture_control_layout:I

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->addItemType(II)V

    .line 88
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 90
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 91
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 92
    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mChangeListener:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/base/utils/SharedPreferencesUtils;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-object p0
.end method

.method private disableItemClick(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 4

    .line 267
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/lewis/camera/R$id;->toggle_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 268
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne p2, v3, :cond_1

    .line 270
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p2

    if-nez p2, :cond_0

    .line 272
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 274
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 276
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x3ecccccd    # 0.4f

    .line 277
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 278
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 283
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mContext:Landroid/content/Context;

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

    .line 99
    invoke-interface {p2}, Lcom/chad/library/adapter/base/entity/MultiItemEntity;->getItemType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_9

    .line 101
    check-cast p2, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;

    .line 102
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 104
    sget v1, Lcom/lewis/camera/R$id;->toggle_button:I

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getGestureState()I

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_4

    :cond_1
    if-ne v0, v3, :cond_2

    .line 106
    sget v1, Lcom/lewis/camera/R$id;->toggle_button:I

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v3, "AP03_MIRROR_REVERSE_SWITCH"

    .line 107
    invoke-virtual {v2, v3, v5}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 106
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_4

    :cond_2
    if-ne v0, v2, :cond_4

    .line 109
    sget v1, Lcom/lewis/camera/R$id;->toggle_button:I

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getIsSavePhoto()I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_4

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 113
    sget v1, Lcom/lewis/camera/R$id;->toggle_button:I

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getHeadlightState()I

    move-result v2

    if-ne v2, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_4

    :cond_6
    if-ne v0, v1, :cond_8

    .line 115
    sget v1, Lcom/lewis/camera/R$id;->toggle_button:I

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getWaterMarkType()I

    move-result v2

    if-ne v2, v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 117
    :cond_8
    :goto_4
    sget v1, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;->getItemName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->disableItemClick(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    .line 119
    sget p2, Lcom/lewis/camera/R$id;->toggle_button:I

    new-instance v0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;-><init>(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_8

    :cond_9
    if-ne v0, v4, :cond_b

    .line 146
    check-cast p2, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    .line 147
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 148
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getItemValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 149
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getBackRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->image_arrow:I

    .line 150
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow_down:I

    goto :goto_5

    :cond_a
    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow:I

    :goto_5
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 153
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraHandheldGeneralAdapter$5EtfEdL3mqYFtCu_Ey52wd_zpvk;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraHandheldGeneralAdapter$5EtfEdL3mqYFtCu_Ey52wd_zpvk;-><init>(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneraGroup2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_b
    if-ne v0, v3, :cond_e

    .line 176
    check-cast p2, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;

    .line 177
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 179
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_59:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 180
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

    .line 181
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$color;->white_alpha_80:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_6

    .line 183
    :cond_c
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_6

    .line 186
    :cond_d
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 189
    :goto_6
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraHandheldGeneralAdapter$PmKH-2G-crceeu0-fuwD8Ux0Yn0;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraHandheldGeneralAdapter$PmKH-2G-crceeu0-fuwD8Ux0Yn0;-><init>(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneraGroup3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_e
    if-ne v0, v2, :cond_10

    .line 203
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    check-cast p2, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    .line 205
    sget v0, Lcom/lewis/camera/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_value:I

    .line 206
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_image:I

    .line 207
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getImage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->item_layout:I

    .line 208
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lcom/lewis/camera/R$color;->blue:I

    goto :goto_7

    :cond_f
    const v2, 0x106000d

    :goto_7
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 210
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraHandheldGeneralAdapter$Bl9YzlFwwyqYUUlWIxC0cWBIZNY;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraHandheldGeneralAdapter$Bl9YzlFwwyqYUUlWIxC0cWBIZNY;-><init>(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneralChild1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_10
    if-ne v0, v1, :cond_11

    .line 262
    sget p2, Lcom/lewis/camera/R$id;->text_intro:I

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_91:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_11
    :goto_8
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V

    return-void
.end method

.method public synthetic lambda$convert$0$CameraHandheldGeneralAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneraGroup2;Landroid/view/View;)V
    .locals 2

    .line 154
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 155
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->isExpanded()Z

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->collapse(I)I

    .line 157
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mChildCount:I

    .line 158
    iput v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mLastPos:I

    goto :goto_1

    .line 160
    :cond_0
    iget p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mLastPos:I

    if-eq p3, p1, :cond_1

    if-eq p3, v0, :cond_1

    .line 161
    invoke-virtual {p0, p3}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->collapse(I)I

    .line 164
    :cond_1
    iget p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mLastPos:I

    if-le p3, p1, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    iget p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mChildCount:I

    sub-int/2addr p1, p3

    .line 169
    :goto_0
    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->expand(I)I

    .line 170
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mChildCount:I

    .line 171
    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mLastPos:I

    .line 173
    :goto_1
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mSelectPos:I

    return-void
.end method

.method public synthetic lambda$convert$1$CameraHandheldGeneralAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneraGroup3;Landroid/view/View;)V
    .locals 1

    .line 190
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    .line 191
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;

    if-eqz p1, :cond_2

    .line 192
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_56:I

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;->showResetCamera()V

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_59:I

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;->showFormatSdCard()V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget p3, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_61:I

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 198
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;->showFormatEmmc()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$convert$2$CameraHandheldGeneralAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraGeneralChild1;Landroid/view/View;)V
    .locals 4

    .line 211
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 212
    iget p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mSelectPos:I

    if-eq p3, p1, :cond_d

    .line 213
    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mSelectPos:I

    .line 214
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    const-string v1, "s_camera"

    if-eqz p3, :cond_2

    .line 215
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 221
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/powervision/camera/camera/CameraManager;->setCurrentStorageDevice(I)V

    const-string p3, " setCurrentStorageDevice  0  "

    .line 222
    invoke-static {v1, p3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v3, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 224
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getEmmcAllCapacity()I

    move-result p3

    if-nez p3, :cond_3

    return-void

    .line 227
    :cond_3
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result p3

    if-nez p3, :cond_4

    return-void

    .line 230
    :cond_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/powervision/camera/camera/CameraManager;->setCurrentStorageDevice(I)V

    const-string p3, " setCurrentStorageDevice  1  "

    .line 231
    invoke-static {v1, p3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getModeType()I

    move-result p3

    if-eqz p3, :cond_6

    .line 235
    new-instance p3, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {p3, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 236
    iget v1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mLastPos:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getImage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p3}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 240
    :cond_6
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

    if-eqz p1, :cond_d

    .line 241
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_49:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 242
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getModeType()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 243
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;->showNone()V

    goto/16 :goto_1

    .line 244
    :cond_7
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getModeType()I

    move-result p1

    if-nez p1, :cond_d

    .line 245
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;->onCloseAF()V

    goto/16 :goto_1

    .line 247
    :cond_8
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_18:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 248
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;->showAutoGrid()V

    goto :goto_1

    .line 249
    :cond_9
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_51:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 250
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;->showGrid()V

    goto :goto_1

    .line 251
    :cond_a
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_52:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 252
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;->showGridAndDiagonal()V

    goto :goto_1

    .line 253
    :cond_b
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "50Hz"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 254
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;->onSwitch50()V

    goto :goto_1

    .line 255
    :cond_c
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->getItemName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "60Hz"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 256
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

    invoke-interface {p1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;->onSwitch60()V

    :cond_d
    :goto_1
    return-void
.end method

.method public setCheckedChangeListener(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->mChangeListener:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;

    return-void
.end method

.method public setGridAndDiagonalCallBack(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->gridAndDiagonalCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;

    return-void
.end method

.method public setShowDialogCallBack(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->showDialogCallBack:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;

    return-void
.end method
