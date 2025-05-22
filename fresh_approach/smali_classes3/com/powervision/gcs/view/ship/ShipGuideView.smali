.class public Lcom/powervision/gcs/view/ship/ShipGuideView;
.super Landroid/widget/RelativeLayout;
.source "ShipGuideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipGuideView$OnGuideListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipGuideView"


# instance fields
.field private currentPosition:I

.field private listener:Lcom/powervision/gcs/view/ship/ShipGuideView$OnGuideListener;

.field mCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0xc7e
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mImageNext:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdc7
    .end annotation
.end field

.field mImagePre:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdca
    .end annotation
.end field

.field mLayoutVideo:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe48
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;"
        }
    .end annotation
.end field

.field mTextKnown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10f0
    .end annotation
.end field

.field mTextMode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10f4
    .end annotation
.end field

.field mTextModeTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10f5
    .end annotation
.end field

.field mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x106a
    .end annotation
.end field

.field private spHelperUtils:Lcom/powervision/base/utils/SPHelperUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 105
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    .line 64
    sget p2, Lcom/powervision/gcs/R$layout;->layout_guide_view:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->spHelperUtils:Lcom/powervision/base/utils/SPHelperUtils;

    .line 67
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 68
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/ShipGuideView;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/ShipGuideView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/ship/ShipGuideView;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    return p1
.end method

.method static synthetic access$108(Lcom/powervision/gcs/view/ship/ShipGuideView;)I
    .locals 2

    .line 31
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/ShipGuideView;Lcom/powervision/gcs/model/ship/GuideBean;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setData(Lcom/powervision/gcs/model/ship/GuideBean;)V

    return-void
.end method

.method private getChecked()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextKnown:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/ship/-$$Lambda$ShipGuideView$l6iU3vdXZGjxVU09tvfQ7aXUXZw;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/-$$Lambda$ShipGuideView$l6iU3vdXZGjxVU09tvfQ7aXUXZw;-><init>(Lcom/powervision/gcs/view/ship/ShipGuideView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImageNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/ship/-$$Lambda$ShipGuideView$ohZpXuNVTINWKm6lyXPMqF-WCqg;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/-$$Lambda$ShipGuideView$ohZpXuNVTINWKm6lyXPMqF-WCqg;-><init>(Lcom/powervision/gcs/view/ship/ShipGuideView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImagePre:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/ship/-$$Lambda$ShipGuideView$BjQBTYpM3kTCrUj_mVKaIsRqpnM;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/-$$Lambda$ShipGuideView$BjQBTYpM3kTCrUj_mVKaIsRqpnM;-><init>(Lcom/powervision/gcs/view/ship/ShipGuideView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget-object v0, Lcom/powervision/gcs/view/ship/-$$Lambda$ShipGuideView$z5R498enWtiOKLf9qcZnSPbFP2c;->INSTANCE:Lcom/powervision/gcs/view/ship/-$$Lambda$ShipGuideView$z5R498enWtiOKLf9qcZnSPbFP2c;

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setZOrderMediaOverlay(Z)V

    return-void
.end method

.method static synthetic lambda$init$3(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private setData(Lcom/powervision/gcs/model/ship/GuideBean;)V
    .locals 4

    .line 123
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getRawId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setVideoRes(I)V

    .line 124
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getTitleId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setModeTitle(I)V

    .line 125
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getSubTitleTipId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getTitleTipId()I

    move-result v0

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getSubTitleTipId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setModeMultiTitleTip(II)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/GuideBean;->getTitleTipId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setModeTitleTip(I)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mCheck:Landroid/widget/CheckBox;

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

    .line 132
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    if-ne p1, v3, :cond_3

    .line 133
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_2

    .line 134
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    :goto_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    if-nez v3, :cond_5

    .line 141
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_4

    .line 142
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 145
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 150
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImagePre:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private setModeMultiTitleTip(II)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextModeTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setModeTitle(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setModeTitleTip(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextModeTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setVideoRes(I)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 158
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->start()V

    .line 160
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    new-instance v0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/ShipGuideView$1;-><init>(Lcom/powervision/gcs/view/ship/ShipGuideView;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 177
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    new-instance v0, Lcom/powervision/gcs/view/ship/ShipGuideView$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/ShipGuideView$2;-><init>(Lcom/powervision/gcs/view/ship/ShipGuideView;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/16 v0, 0x8

    .line 197
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->suspend()V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$init$0$ShipGuideView(Landroid/view/View;)V
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->getChecked()Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->spHelperUtils:Lcom/powervision/base/utils/SPHelperUtils;

    sget-object v1, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-virtual {v2}, Lcom/powervision/gcs/model/ship/GuideBean;->getRawId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/powervision/base/utils/SPHelperUtils;->saveShowGuide(I)V

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->listener:Lcom/powervision/gcs/view/ship/ShipGuideView$OnGuideListener;

    if-eqz p1, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->getChecked()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/powervision/gcs/view/ship/ShipGuideView$OnGuideListener;->click(Z)V

    .line 85
    :cond_2
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->suspend()V

    .line 87
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$init$1$ShipGuideView(Landroid/view/View;)V
    .locals 1

    .line 91
    iget p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setData(Lcom/powervision/gcs/model/ship/GuideBean;)V

    return-void
.end method

.method public synthetic lambda$init$2$ShipGuideView(Landroid/view/View;)V
    .locals 1

    .line 95
    iget p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setData(Lcom/powervision/gcs/model/ship/GuideBean;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public reStart()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipVideoView;->start()V

    :cond_0
    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/GuideBean;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mList:Ljava/util/List;

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 111
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setVisibility(I)V

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setVisibility(I)V

    .line 117
    iput v1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->currentPosition:I

    .line 118
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/GuideBean;

    .line 119
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->setData(Lcom/powervision/gcs/model/ship/GuideBean;)V

    return-void
.end method

.method public setListener(Lcom/powervision/gcs/view/ship/ShipGuideView$OnGuideListener;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView;->listener:Lcom/powervision/gcs/view/ship/ShipGuideView$OnGuideListener;

    return-void
.end method
