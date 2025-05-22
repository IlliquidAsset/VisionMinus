.class public Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "DelayCaptureControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDirectLayout:Landroid/widget/RelativeLayout;

.field private mDurationLayout:Landroid/widget/RelativeLayout;

.field private mDurationView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

.field private mImageMedia:Landroid/widget/ImageView;

.field private mImageMenuBack:Landroid/widget/ImageView;

.field private mImageSelect:Landroid/widget/ImageView;

.field private mImageShow:Landroid/widget/ImageView;

.field private mIntervalLayout:Landroid/widget/RelativeLayout;

.field private mIntervalView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

.field private mMenuSelectLayout:Landroid/widget/RelativeLayout;

.field private mNormalLayout:Landroid/widget/RelativeLayout;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mScrollLayout:Landroid/widget/RelativeLayout;

.field private mSelectLayout:Landroid/widget/LinearLayout;

.field private mSurroundLayout:Landroid/widget/RelativeLayout;

.field private mTextInterval:Landroid/widget/TextView;

.field private mTextLeft:Landroid/widget/TextView;

.field private mTextRight:Landroid/widget/TextView;

.field private mTextSelect:Landroid/widget/TextView;

.field private mTextTime:Landroid/widget/TextView;

.field private mTextTimeInfo:Landroid/widget/TextView;

.field private mTrackLayout:Landroid/widget/RelativeLayout;

.field private modeCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->modeCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextSelect:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mSelectLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private setTextInfoData()V
    .locals 4

    .line 157
    sget v0, Lcom/powervision/aircraft/R$string;->aircraft_delay_time_info:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "00:00:04"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "00:02:24"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "10"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "128"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextTimeInfo:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setWheelData()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getDurationList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v1, 0x1

    const/16 v2, 0x3c

    invoke-virtual {p0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getScrollDataList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDurationList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0.5"

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "1"

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "5"

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "10"

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "15"

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "20"

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "25"

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "30"

    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 47
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_delay_capture_control:I

    return v0
.end method

.method public getScrollDataList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "mode_delay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->modeCode:I

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->setWheelData()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    sget p1, Lcom/powervision/aircraft/R$id;->clips_media_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mImageMedia:Landroid/widget/ImageView;

    .line 53
    sget p1, Lcom/powervision/aircraft/R$id;->smart_clips_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mImageMenuBack:Landroid/widget/ImageView;

    .line 54
    sget p1, Lcom/powervision/aircraft/R$id;->surround_show_arrow_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mImageShow:Landroid/widget/ImageView;

    .line 55
    sget p1, Lcom/powervision/aircraft/R$id;->delay_capture_select_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mMenuSelectLayout:Landroid/widget/RelativeLayout;

    .line 56
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_delay_capture_menu:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 57
    sget p1, Lcom/powervision/aircraft/R$id;->delay_capture_select_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mImageSelect:Landroid/widget/ImageView;

    .line 58
    sget p1, Lcom/powervision/aircraft/R$id;->delay_capture_select_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextSelect:Landroid/widget/TextView;

    .line 59
    sget p1, Lcom/powervision/aircraft/R$id;->duration_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationLayout:Landroid/widget/RelativeLayout;

    .line 60
    sget p1, Lcom/powervision/aircraft/R$id;->text_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextTime:Landroid/widget/TextView;

    .line 61
    sget p1, Lcom/powervision/aircraft/R$id;->shutter_interval_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalLayout:Landroid/widget/RelativeLayout;

    .line 62
    sget p1, Lcom/powervision/aircraft/R$id;->text_interval:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextInterval:Landroid/widget/TextView;

    .line 63
    sget p1, Lcom/powervision/aircraft/R$id;->delay_capture_set_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mSelectLayout:Landroid/widget/LinearLayout;

    .line 64
    sget p1, Lcom/powervision/aircraft/R$id;->delay_capture_normal_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mNormalLayout:Landroid/widget/RelativeLayout;

    .line 65
    sget p1, Lcom/powervision/aircraft/R$id;->delay_capture_surround_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mSurroundLayout:Landroid/widget/RelativeLayout;

    .line 66
    sget p1, Lcom/powervision/aircraft/R$id;->delay_capture_direct_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDirectLayout:Landroid/widget/RelativeLayout;

    .line 67
    sget p1, Lcom/powervision/aircraft/R$id;->delay_capture_track_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTrackLayout:Landroid/widget/RelativeLayout;

    .line 68
    sget p1, Lcom/powervision/aircraft/R$id;->scroll_select_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    .line 69
    sget p1, Lcom/powervision/aircraft/R$id;->duration_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    .line 70
    sget p1, Lcom/powervision/aircraft/R$id;->interval_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    .line 71
    sget p1, Lcom/powervision/aircraft/R$id;->left_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextLeft:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/powervision/aircraft/R$id;->right_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextRight:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/powervision/aircraft/R$id;->text_time_info:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextTimeInfo:Landroid/widget/TextView;

    .line 75
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mImageMedia:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mImageMenuBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mImageShow:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mMenuSelectLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mNormalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mSurroundLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDirectLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTrackLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 168
    sget v0, Lcom/powervision/aircraft/R$id;->clips_media_img:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 170
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->smart_clips_back:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_1

    .line 171
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextTimeInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mImageShow:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 178
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 180
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->surround_show_arrow_bt:I

    if-ne p1, v0, :cond_2

    .line 181
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mImageShow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 183
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->delay_capture_select_layout:I

    if-ne p1, v0, :cond_4

    .line 184
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v1, 0x8

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 189
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 191
    :cond_4
    sget v0, Lcom/powervision/aircraft/R$id;->duration_layout:I

    const/4 v3, 0x4

    if-ne p1, v0, :cond_6

    .line 192
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 193
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 196
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 198
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 201
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setCurrentItem(I)V

    .line 205
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 208
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_circle_triang_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 210
    :cond_6
    sget v0, Lcom/powervision/aircraft/R$id;->shutter_interval_layout:I

    if-ne p1, v0, :cond_8

    .line 211
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 212
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 215
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 217
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 220
    :cond_7
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setCurrentItem(I)V

    .line 223
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mIntervalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_circle_triang_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 227
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mDurationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 229
    :cond_8
    sget v0, Lcom/powervision/aircraft/R$id;->delay_capture_normal_layout:I

    if-ne p1, v0, :cond_9

    const-string p1, ""

    .line 230
    invoke-static {v1, p1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->newInstance(ILjava/lang/String;)Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->setOnDialogClickListener(Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_9
    sget v0, Lcom/powervision/aircraft/R$id;->delay_capture_surround_layout:I

    if-ne p1, v0, :cond_a

    .line 248
    sget p1, Lcom/powervision/aircraft/R$string;->aircraft_delay_time_info:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "00:00:04"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "00:02:24"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "128"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextTimeInfo:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 251
    :cond_a
    sget v0, Lcom/powervision/aircraft/R$id;->delay_capture_direct_layout:I

    if-ne p1, v0, :cond_b

    .line 252
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->mTextTimeInfo:Landroid/widget/TextView;

    const-string v0, "\u751f\u6210\u89c6\u9891\u65f6\u957f  00:00:04"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_b
    sget p1, Lcom/powervision/aircraft/R$id;->delay_capture_track_layout:I

    :goto_0
    return-void
.end method
