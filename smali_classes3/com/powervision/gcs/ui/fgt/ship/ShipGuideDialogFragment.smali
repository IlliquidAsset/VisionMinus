.class public Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ShipGuideDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$OnShipGuideListener;
    }
.end annotation


# static fields
.field public static final PARAM_GUIDE_LIST:Ljava/lang/String; = "param_guide_list"

.field private static final TAG:Ljava/lang/String; = "ShipGuideDialogFragment"


# instance fields
.field controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

.field private currentPosition:I

.field private listener:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$OnShipGuideListener;

.field mCheckBox:Landroid/widget/CheckBox;

.field mImageNext:Landroid/widget/ImageView;

.field mImagePre:Landroid/widget/ImageView;

.field mLayoutVideo:Landroid/widget/RelativeLayout;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;"
        }
    .end annotation
.end field

.field mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

.field mTextKnown:Landroid/widget/TextView;

.field mTextMode:Landroid/widget/TextView;

.field mTextModeTip:Landroid/widget/TextView;

.field private spHelperUtils:Lcom/powervision/base/utils/SPHelperUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    return p1
.end method

.method static synthetic access$108(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)I
    .locals 2

    .line 35
    iget v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;Lcom/powervision/gcs/model/ship/GuideBean;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setData(Lcom/powervision/gcs/model/ship/GuideBean;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 102
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->spHelperUtils:Lcom/powervision/base/utils/SPHelperUtils;

    .line 103
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiao/nicevideoplayer/VideoOnlyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->initBlackBackground()V

    .line 105
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mTextKnown:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipGuideDialogFragment$ldicyVXfyFQCsn7lNWojqvUC4JE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipGuideDialogFragment$ldicyVXfyFQCsn7lNWojqvUC4JE;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImageNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipGuideDialogFragment$nugd-c3a5H25YI6uqZGPwLJANqE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipGuideDialogFragment$nugd-c3a5H25YI6uqZGPwLJANqE;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImagePre:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipGuideDialogFragment$bLF5BTCnXJO-SEpim-j0YoTIGkU;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipGuideDialogFragment$bLF5BTCnXJO-SEpim-j0YoTIGkU;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->setOnVideoChangedListener(Lcom/xiao/nicevideoplayer/VideoOnlyController$OnVideoChangedListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 91
    sget v0, Lcom/powervision/gcs/R$id;->nice_video_player:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 92
    sget v0, Lcom/powervision/gcs/R$id;->text_known:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mTextKnown:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/powervision/gcs/R$id;->layout_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mLayoutVideo:Landroid/widget/RelativeLayout;

    .line 94
    sget v0, Lcom/powervision/gcs/R$id;->text_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mTextMode:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/powervision/gcs/R$id;->text_mode_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mTextModeTip:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/powervision/gcs/R$id;->check_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 97
    sget v0, Lcom/powervision/gcs/R$id;->image_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImageNext:Landroid/widget/ImageView;

    .line 98
    sget v0, Lcom/powervision/gcs/R$id;->image_pre:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImagePre:Landroid/widget/ImageView;

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;)",
            "Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "param_guide_list"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setData(Lcom/powervision/gcs/model/ship/GuideBean;)V
    .locals 4

    .line 205
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getRawId()I

    move-result v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->updateVideo(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getTitleId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setModeTitle(I)V

    .line 208
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getSubTitleTipId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getTitleTipId()I

    move-result v0

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getSubTitleTipId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setModeMultiTitleTip(II)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getTitleTipId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setModeTitleTip(I)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->isShowTip()Z

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    if-ne p1, v3, :cond_3

    .line 216
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_2

    .line 217
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 219
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :goto_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    if-nez v3, :cond_5

    .line 224
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_4

    .line 225
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 228
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 232
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private setDataList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    .line 173
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 176
    :cond_0
    iput v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    .line 177
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/GuideBean;

    .line 178
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setData(Lcom/powervision/gcs/model/ship/GuideBean;)V

    return-void
.end method

.method private setModeMultiTitleTip(II)V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mTextModeTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setModeTitle(I)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setModeTitleTip(I)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mTextModeTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateVideo(Ljava/lang/String;)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipGuideDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->releasePlayer()V

    .line 184
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setPlayerType(I)V

    .line 185
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    .line 186
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setLooping(Z)V

    .line 190
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$drawable;->video_black_background:I

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 192
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 193
    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->imageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 195
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    .line 196
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->start(J)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initListener$0$ShipGuideDialogFragment(Landroid/view/View;)V
    .locals 3

    .line 115
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->spHelperUtils:Lcom/powervision/base/utils/SPHelperUtils;

    sget-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/GuideBean;->getRawId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SPHelperUtils;->saveShowGuide(I)V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->listener:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$OnShipGuideListener;

    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$OnShipGuideListener;->onConfirm(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initListener$1$ShipGuideDialogFragment(Landroid/view/View;)V
    .locals 1

    .line 124
    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    .line 125
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setData(Lcom/powervision/gcs/model/ship/GuideBean;)V

    return-void
.end method

.method public synthetic lambda$initListener$2$ShipGuideDialogFragment(Landroid/view/View;)V
    .locals 1

    .line 128
    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->currentPosition:I

    .line 129
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setData(Lcom/powervision/gcs/model/ship/GuideBean;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_guide_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)V

    .line 72
    invoke-virtual {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 71
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    :cond_0
    const/4 p1, 0x0

    const v0, 0x103022f

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setStyle(II)V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 82
    sget p3, Lcom/powervision/gcs/R$layout;->dialog_fragment_ship_guide:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->initView(Landroid/view/View;)V

    .line 85
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->initData()V

    .line 86
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->initListener()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 159
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->suspendNiceVideoPlayer()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 153
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->resumeNiceVideoPlayer()V

    return-void
.end method

.method public setListener(Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$OnShipGuideListener;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->listener:Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$OnShipGuideListener;

    return-void
.end method

.method public updateDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->mList:Ljava/util/List;

    .line 110
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->setDataList(Ljava/util/List;)V

    return-void
.end method
