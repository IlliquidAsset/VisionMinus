.class public Lcom/lewis/edit/widgets/VideoSeparateLayout;
.super Landroid/widget/FrameLayout;
.source "VideoSeparateLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;
    }
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mDataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/VideoSeparateBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHadVideoPath:Ljava/lang/String;

.field private mIvCancel:Landroid/widget/ImageView;

.field private mIvConfirm:Landroid/widget/ImageView;

.field private mIvPart:Landroid/widget/ImageView;

.field private mIvRevert:Landroid/widget/ImageView;

.field private mLasTimeMs:I

.field private mRvImage:Landroidx/recyclerview/widget/RecyclerView;

.field private mSeparateAdapter:Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

.field private mSeparateNodeArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalTimeMs:I

.field private mTotalTimeS:I

.field private mTvTime1:Landroid/widget/TextView;

.field private mTvTime2:Landroid/widget/TextView;

.field private mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

.field private mViewTotalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mCurrentPosition:I

    const-string p2, ""

    .line 46
    iput-object p2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mHadVideoPath:Ljava/lang/String;

    .line 49
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mLasTimeMs:I

    .line 51
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTotalTimeS:I

    .line 53
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTotalTimeMs:I

    .line 55
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mViewTotalWidth:I

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mDataArray:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    .line 68
    invoke-direct {p0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/widgets/VideoSeparateLayout;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mDataArray:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/lewis/edit/widgets/VideoSeparateLayout;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/lewis/edit/widgets/VideoSeparateLayout;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lewis/edit/widgets/VideoSeparateLayout;ZZ)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->isShowSeparate(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/lewis/edit/widgets/VideoSeparateLayout;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->updateTime(I)V

    return-void
.end method

.method private initRecycleView()V
    .locals 3

    .line 93
    new-instance v0, Lcom/powervision/base/utils/ScreenUtils;

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 96
    iget-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mRvImage:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPaddingRelative(IIII)V

    .line 98
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 99
    iget-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mRvImage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mDataArray:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateAdapter:Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

    .line 103
    iget-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mRvImage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$layout;->edit_layout_video_separate:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    sget v1, Lcom/lewis/edit/R$id;->tv_vs_time_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTvTime1:Landroid/widget/TextView;

    .line 77
    sget v1, Lcom/lewis/edit/R$id;->tv_vs_time_2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTvTime2:Landroid/widget/TextView;

    .line 78
    sget v1, Lcom/lewis/edit/R$id;->rv_vs_video_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mRvImage:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    sget v1, Lcom/lewis/edit/R$id;->iv_vs_part:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvPart:Landroid/widget/ImageView;

    .line 80
    sget v1, Lcom/lewis/edit/R$id;->iv_vs_revert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvRevert:Landroid/widget/ImageView;

    .line 81
    sget v1, Lcom/lewis/edit/R$id;->iv_vs_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvCancel:Landroid/widget/ImageView;

    .line 82
    sget v1, Lcom/lewis/edit/R$id;->iv_vs_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvConfirm:Landroid/widget/ImageView;

    .line 84
    invoke-direct {p0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->initRecycleView()V

    .line 86
    invoke-direct {p0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->setListener()V

    return-void
.end method

.method private isShowRevert(Z)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvRevert:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private isShowSeparate(ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    .line 312
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvPart:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 313
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvPart:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    sget p2, Lcom/lewis/edit/R$mipmap;->edit_icon_vs_part:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/lewis/edit/R$mipmap;->edit_icon_vs_part_no:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvPart:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 316
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvPart:Landroid/widget/ImageView;

    sget p2, Lcom/lewis/edit/R$mipmap;->edit_icon_vs_part_no:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$setListener$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private setListener()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvPart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvRevert:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mIvConfirm:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mRvImage:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lcom/lewis/edit/widgets/-$$Lambda$VideoSeparateLayout$jpPDj96UesYXzp0-eUHur5yRu0Q;->INSTANCE:Lcom/lewis/edit/widgets/-$$Lambda$VideoSeparateLayout$jpPDj96UesYXzp0-eUHur5yRu0Q;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mRvImage:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/lewis/edit/widgets/VideoSeparateLayout$1;

    invoke-direct {v1, p0}, Lcom/lewis/edit/widgets/VideoSeparateLayout$1;-><init>(Lcom/lewis/edit/widgets/VideoSeparateLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private updateTime(I)V
    .locals 1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTvTime1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTvTime2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private workSeparateOrRevert(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 263
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    iget v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mCurrentPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    sget p1, Lcom/lewis/edit/R$string;->App_MediaLib_207:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    iget v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mCurrentPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    .line 269
    sget p1, Lcom/lewis/edit/R$string;->App_MediaLib_208:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 270
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mDataArray:Ljava/util/List;

    iget v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mCurrentPosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/model/entries/VideoSeparateBean;

    .line 274
    invoke-virtual {p1, v0}, Lcom/lewis/edit/model/entries/VideoSeparateBean;->setCutFlag(Z)V

    .line 275
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateAdapter:Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

    if-eqz p1, :cond_2

    .line 276
    iget v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mCurrentPosition:I

    invoke-virtual {p1, v1}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->notifyItemChanged(I)V

    .line 279
    :cond_2
    invoke-direct {p0, v0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->isShowRevert(Z)V

    goto :goto_1

    .line 281
    :cond_3
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 282
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    .line 283
    iget-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 284
    iget-object v2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mDataArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lewis/edit/model/entries/VideoSeparateBean;

    const/4 v3, 0x0

    .line 285
    invoke-virtual {v2, v3}, Lcom/lewis/edit/model/entries/VideoSeparateBean;->setCutFlag(Z)V

    .line 286
    iget-object v2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateAdapter:Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

    if-eqz v2, :cond_4

    .line 287
    invoke-virtual {v2, v1}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->notifyItemChanged(I)V

    .line 289
    :cond_4
    iget-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 290
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->isShowRevert(Z)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public initShowData(ILjava/lang/String;)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTotalTimeMs:I

    const/4 p1, 0x0

    .line 157
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mCurrentPosition:I

    .line 159
    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->updateTime(I)V

    .line 161
    iput-object p2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mHadVideoPath:Ljava/lang/String;

    .line 162
    iget p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTotalTimeMs:I

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTotalTimeS:I

    const/high16 p1, 0x42a00000    # 80.0f

    .line 164
    invoke-static {p1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result p1

    iget p2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTotalTimeS:I

    add-int/lit8 p2, p2, 0x1

    mul-int p1, p1, p2

    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mViewTotalWidth:I

    .line 166
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mDataArray:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mDataArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 172
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateAdapter:Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 222
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 226
    sget v0, Lcom/lewis/edit/R$id;->iv_vs_part:I

    if-ne v0, p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 229
    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->workSeparateOrRevert(Z)V

    .line 230
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

    invoke-interface {p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;->onVsPartClick()V

    goto :goto_0

    .line 232
    :cond_1
    sget v0, Lcom/lewis/edit/R$id;->iv_vs_revert:I

    if-ne v0, p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 235
    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->workSeparateOrRevert(Z)V

    .line 236
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

    invoke-interface {p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;->onVsRevertClick()V

    goto :goto_0

    .line 238
    :cond_2
    sget v0, Lcom/lewis/edit/R$id;->iv_vs_cancel:I

    if-ne v0, p1, :cond_3

    .line 240
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

    if-eqz p1, :cond_5

    .line 241
    invoke-interface {p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;->onVsCancelClick()V

    goto :goto_0

    .line 243
    :cond_3
    sget v0, Lcom/lewis/edit/R$id;->iv_vs_confirm:I

    if-ne v0, p1, :cond_5

    .line 245
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

    if-eqz p1, :cond_5

    .line 246
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 247
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 248
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mHadVideoPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateNodeArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;->onVsConfirmClick(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 250
    :cond_4
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

    invoke-interface {p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;->onVsCancelClick()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setVideoSeparateListener(Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mVideoSeparateListener:Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;

    return-void
.end method

.method public updateData(Lcom/lewis/edit/model/entries/VideoSeparateBean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mDataArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mSeparateAdapter:Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mDataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method public workRvScrollFun(I)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mRvImage:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 185
    iget v1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mLasTimeMs:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    .line 186
    iget v2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mTotalTimeMs:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 188
    iget v2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mViewTotalWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 191
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout;->mLasTimeMs:I

    :cond_0
    return-void
.end method
