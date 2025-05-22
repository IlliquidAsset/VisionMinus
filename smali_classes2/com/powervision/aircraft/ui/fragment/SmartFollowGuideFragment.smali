.class public Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "SmartFollowGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;


# static fields
.field public static final LOCK:I = 0x3

.field public static final NORMAL:I = 0x1

.field public static final PARALLEL:I = 0x2

.field public static final WATER:I = 0x4


# instance fields
.field ap03SetGetParamResultListener:Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;

.field private avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

.field private followMode:I

.field private followSubmode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private followType:I

.field private mCheck:Landroid/widget/CheckBox;

.field private mCurrentMode:I

.field private mImageView:Landroid/widget/ImageView;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextContent:Landroid/widget/TextView;

.field private mTextOK:Landroid/widget/TextView;

.field private mTextSubTitle:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 170
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 254
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCurrentMode:I

    .line 328
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->ap03SetGetParamResultListener:Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->setFollowMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)Lcom/powervision/base/dialog/AvoidanceDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->showCloseDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->startNormalMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followType:I

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followType:I

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->showAvoidanceDialog(I)V

    return-void
.end method

.method public static newInstance(II)Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;
    .locals 3

    .line 52
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "follow_mode"

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "follow_type"

    .line 55
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setDataByType()V
    .locals 3

    .line 96
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextTitle:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_4:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followType:I

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mImageView:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_normal_follow_guide_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextSubTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_8:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextContent:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_9:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mImageView:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_paralle_follow_select_mode_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextSubTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_11:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextContent:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_12:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 107
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mImageView:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_lock_follow_select_mode_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextSubTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_13:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextContent:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_14:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 113
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_25:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mImageView:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_noraml_water_follow_select_mode_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextSubTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_26_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextContent:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_26_1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextCancel:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_10:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextOK:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_49:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCheck:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setFollowMode(I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 173
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCurrentMode:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFollowMode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "helin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCurrentMode:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 176
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followMode:I

    const/16 v2, 0x15

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 180
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_normal_follow"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 185
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followMode:I

    const/16 v2, 0x16

    if-nez p1, :cond_3

    .line 186
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    .line 189
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 192
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_parallel_follow"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    .line 194
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followMode:I

    const/16 v2, 0x17

    if-nez p1, :cond_6

    .line 195
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-ne p1, v0, :cond_7

    .line 198
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 201
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_lock_follow"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_9
    return-void
.end method

.method private showAvoidanceDialog(I)V
    .locals 2

    .line 268
    new-instance v0, Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/AvoidanceDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    .line 269
    invoke-virtual {v0}, Lcom/powervision/base/dialog/AvoidanceDialog;->show()V

    .line 271
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setToggleChecked(Z)V

    .line 272
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;I)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setSelectListener(Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;)V

    return-void
.end method

.method private showCloseDialog()V
    .locals 2

    .line 308
    new-instance v0, Lcom/powervision/base/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setSingle(Z)Lcom/powervision/base/dialog/CommonDialog;

    .line 310
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_210:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setMessage(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 311
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_1:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setDialogTitle(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 312
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setPositive(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 313
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$4;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;Lcom/powervision/base/dialog/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setOnClickBottomListener(Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;)Lcom/powervision/base/dialog/CommonDialog;

    .line 325
    invoke-virtual {v0}, Lcom/powervision/base/dialog/CommonDialog;->show()V

    return-void
.end method

.method private startNormalMode()V
    .locals 5

    .line 257
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followMode:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 258
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    new-array v4, v3, [I

    aput v3, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 260
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    new-array v4, v3, [I

    aput v2, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 262
    :cond_1
    :goto_0
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCurrentMode:I

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 63
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_smart_follow_guide_video_layout:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "follow_mode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followMode:I

    .line 81
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "follow_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followType:I

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->setDataByType()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    sget p1, Lcom/powervision/aircraft/R$id;->smart_cancle_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextCancel:Landroid/widget/TextView;

    .line 69
    sget p1, Lcom/powervision/aircraft/R$id;->smart_ok_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextOK:Landroid/widget/TextView;

    .line 70
    sget p1, Lcom/powervision/aircraft/R$id;->check_box:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCheck:Landroid/widget/CheckBox;

    .line 71
    sget p1, Lcom/powervision/aircraft/R$id;->smart_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextTitle:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/powervision/aircraft/R$id;->smart_title_under:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextSubTitle:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/powervision/aircraft/R$id;->text_content:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextContent:Landroid/widget/TextView;

    .line 74
    sget p1, Lcom/powervision/aircraft/R$id;->smart_video_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 128
    sget v0, Lcom/powervision/aircraft/R$id;->smart_cancle_bt:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 133
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-ne p1, v0, :cond_1

    .line 129
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followMode:I

    if-nez p1, :cond_0

    .line 130
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 131
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    goto/16 :goto_2

    .line 133
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string v0, "SMART_FOLLOW_REMINDER_WATER"

    invoke-virtual {p1, v0, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v0, v3, [I

    aput v2, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 135
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCurrentMode:I

    goto/16 :goto_2

    .line 137
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->smart_ok_bt:I

    if-ne p1, v0, :cond_8

    .line 139
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followType:I

    const/4 v0, 0x3

    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    const-string p1, "SMART_FOLLOW_REMINDER_P"

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const-string p1, "SMART_FOLLOW_REMINDER_L"

    goto :goto_0

    :cond_3
    const-string p1, "SMART_FOLLOW_REMINDER"

    .line 146
    :goto_0
    iget v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followMode:I

    if-nez v6, :cond_7

    .line 147
    iget v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->followType:I

    const-string v7, "helin"

    if-ne v6, v3, :cond_4

    const-string v0, "onClick: \u666e\u901a"

    .line 148
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-ne v6, v5, :cond_5

    const-string v0, "onClick: \u5e73\u884c"

    .line 151
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    new-array v3, v3, [I

    aput v5, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 153
    iput v5, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCurrentMode:I

    goto :goto_1

    :cond_5
    if-ne v6, v0, :cond_6

    const-string v5, "onClick: \u9501\u5b9a"

    .line 155
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v5

    new-array v3, v3, [I

    aput v0, v3, v1

    invoke-virtual {v5, v2, v3}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 157
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCurrentMode:I

    .line 159
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-ne v6, v3, :cond_8

    .line 163
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v0, v3, [I

    aput v2, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 164
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mCurrentMode:I

    :cond_8
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 247
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    const-string v0, "helin"

    const-string v1, "onDestroy: guide"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->removeListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V

    .line 250
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->ap03SetGetParamResultListener:Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 251
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->removeListener()V

    return-void
.end method

.method public onSetParmasResultFailed(II)V
    .locals 0

    const-string p1, "helin"

    const-string p2, "onSetParmasResultFailed: "

    .line 221
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$2;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetParmasResultSuccess(II)V
    .locals 1

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSetParmasResultSuccess: type = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "helin"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;I)V

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSmartFunctionActuaHight(F)V
    .locals 0

    return-void
.end method

.method public onSmartFunctionActuaSpeed(F)V
    .locals 0

    return-void
.end method

.method public onSmartFunctionData(FFFFI)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->mTextOK:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->initSDK()V

    .line 91
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setOnSetFollowParmasListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V

    .line 92
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->ap03SetGetParamResultListener:Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    return-void
.end method
