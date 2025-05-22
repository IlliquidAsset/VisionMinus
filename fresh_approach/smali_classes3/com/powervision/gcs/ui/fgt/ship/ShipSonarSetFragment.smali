.class public Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "ShipSonarSetFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ShipSonarSetFragment"


# instance fields
.field private MODE:I

.field airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

.field color_content:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf33
    .end annotation
.end field

.field data_store:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcd2
    .end annotation
.end field

.field data_store_location:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcd3
    .end annotation
.end field

.field data_swtich:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcd4
    .end annotation
.end field

.field depthMaxNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcd9
    .end annotation
.end field

.field private depthMaxProgress:I

.field depthMinNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcdb
    .end annotation
.end field

.field private depthMinProgress:I

.field depth_max_view:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcd8
    .end annotation
.end field

.field depth_min_text_view:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcda
    .end annotation
.end field

.field imageArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdb3
    .end annotation
.end field

.field private isAirCheckOk:Z

.field layoutSonar:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x107c
    .end annotation
.end field

.field light_switch:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe59
    .end annotation
.end field

.field private mEditPsn:Landroid/widget/EditText;

.field private mLayoutQR:Landroid/widget/LinearLayout;

.field private mPairProgressBar:Landroidx/core/widget/ContentLoadingProgressBar;

.field private mPopupwindowRootLayout:Landroid/widget/FrameLayout;

.field private mRlPair:Landroid/widget/RelativeLayout;

.field private mTextPair:Landroid/widget/TextView;

.field private mTextScan:Landroid/widget/TextView;

.field private mTextTips:Landroid/widget/TextView;

.field manutal_Deep_View:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf35
    .end annotation
.end field

.field manutal_content:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe98
    .end annotation
.end field

.field manutal_divider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe99
    .end annotation
.end field

.field manutal_title:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe9a
    .end annotation
.end field

.field maual_arrow:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xffe
    .end annotation
.end field

.field notifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

.field private oriUnit:[Ljava/lang/String;

.field private psn:Ljava/lang/String;

.field seebarDepthMax:Landroidx/appcompat/widget/AppCompatSeekBar;

.field seebarDepthMin:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private final seebar_depth_min_distance:I

.field private sonarPairView:Landroid/view/View;

.field sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1081
    .end annotation
.end field

.field tg_auto:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xc19
    .end annotation
.end field

.field private unitArray:[Ljava/lang/String;

.field viewStub:Landroid/view/ViewStub;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1083
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->isAirCheckOk:Z

    const/4 v1, 0x5

    .line 151
    iput v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebar_depth_min_distance:I

    .line 152
    iput v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxProgress:I

    .line 153
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinProgress:I

    .line 263
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->notifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    .line 308
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    .line 660
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->MODE:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->showPopupWindow(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroidx/core/widget/ContentLoadingProgressBar;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPairProgressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;IZ)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->changeUnitArray(IZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->isAirCheckOk:Z

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->showSonarProgressBar()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->hideSonarProgressBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seekerPair()V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/TextView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)[Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)[Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->oriUnit:[Ljava/lang/String;

    return-object p0
.end method

.method private changeUnitArray(IZ)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 665
    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    sget v4, Lcom/powervision/gcs/R$string;->PVW4_Sonar_12:I

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 666
    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    sget v4, Lcom/powervision/gcs/R$string;->PVW4_Sonar_13:I

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 667
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    sget v3, Lcom/powervision/gcs/R$string;->PVW4_Sonar_14:I

    invoke-virtual {p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 668
    sput v1, Lcom/powervision/gcs/utils/SonarStateHelper;->color_Style:I

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 671
    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    sget v4, Lcom/powervision/gcs/R$string;->PVW4_Sonar_13:I

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 672
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    sget v3, Lcom/powervision/gcs/R$string;->PVW4_Sonar_14:I

    invoke-virtual {p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 673
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    sget v3, Lcom/powervision/gcs/R$string;->PVW4_Sonar_12:I

    invoke-virtual {p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 674
    sput v2, Lcom/powervision/gcs/utils/SonarStateHelper;->color_Style:I

    goto :goto_0

    .line 677
    :cond_1
    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    sget v4, Lcom/powervision/gcs/R$string;->PVW4_Sonar_14:I

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 678
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    sget v3, Lcom/powervision/gcs/R$string;->PVW4_Sonar_12:I

    invoke-virtual {p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 679
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Sonar_13:I

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 680
    sput v0, Lcom/powervision/gcs/utils/SonarStateHelper;->color_Style:I

    .line 682
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqColor"

    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->MODE:I

    if-eqz p2, :cond_2

    .line 685
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/model/event/ColorModeChange;

    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->color_Style:I

    invoke-direct {p2, v0}, Lcom/powervision/gcs/model/event/ColorModeChange;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private hideSonarProgressBar()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipSonarSetFragment$ihD9FZjKCEJgjbaZHUjiNbgrQps;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipSonarSetFragment$ihD9FZjKCEJgjbaZHUjiNbgrQps;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initViewValue()V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 176
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Sonar_12:I

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Sonar_13:I

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Sonar_14:I

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 177
    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Sonar_12:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Sonar_13:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Sonar_14:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->oriUnit:[Ljava/lang/String;

    .line 178
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->color_Style:I

    invoke-direct {p0, v0, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->changeUnitArray(IZ)V

    .line 179
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->color_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->up:F

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinProgress:I

    .line 182
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->down:F

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxProgress:I

    .line 183
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setDepthMax()V

    .line 184
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setDepthMin()V

    .line 185
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->tg_auto:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 188
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->getSonarMcuState()V

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->light_switch:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_swtich:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/powervision/gcs/utils/GeoLogUtils;->isLogEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_swtich:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 211
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMax:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMin:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMax:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMin:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_title:Landroid/view/View;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private seekerPair()V
    .locals 4

    const-string v0, "ShipSonarSetFragment"

    const-string v1, "seekerPair: 0"

    .line 505
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPairProgressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPairProgressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {v1}, Landroidx/core/widget/ContentLoadingProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "seekerPair: 1"

    .line 508
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 512
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "seekerPair: 3"

    .line 514
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget v0, Lcom/powervision/gcs/R$string;->MediaLib_7:I

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sendToast(I)V

    return-void

    .line 519
    :cond_1
    iget-boolean v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->isAirCheckOk:Z

    if-nez v1, :cond_2

    return-void

    .line 526
    :cond_2
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mEditPsn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->psn:Ljava/lang/String;

    .line 527
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v2, -0x10000

    if-eqz v1, :cond_3

    .line 529
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextTips:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_87:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 530
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 534
    :cond_3
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->psn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xe

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->psn:Ljava/lang/String;

    const-string v3, "200CAAP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 541
    :cond_4
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextTips:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_85:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 542
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextTips:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->psn:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->psn:Ljava/lang/String;

    .line 549
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STA_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->psn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->setSonarPair(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPairProgressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "seekerPair: 6"

    .line 551
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPairProgressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    :cond_5
    return-void

    .line 536
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextTips:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_87:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private sendToast(I)V
    .locals 3

    .line 425
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private setDepthMax()V
    .locals 6

    .line 394
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMax:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxProgress:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 395
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxNum:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/powervision/gcs/R$string;->depth_num:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxProgress:I

    .line 396
    invoke-static {v4}, Lcom/powervision/gcs/utils/SonarStateHelper;->getSonarSeekNumber(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/powervision/gcs/utils/SonarStateHelper;->getUnit()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 395
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDepthMin()V
    .locals 6

    .line 403
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMin:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinProgress:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 404
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinNum:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/powervision/gcs/R$string;->depth_num:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinProgress:I

    .line 405
    invoke-static {v4}, Lcom/powervision/gcs/utils/SonarStateHelper;->getSonarSeekNumber(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/powervision/gcs/utils/SonarStateHelper;->getUnit()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 404
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPopupWindow(Landroid/widget/TextView;)V
    .locals 12

    .line 696
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 697
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 699
    sget v1, Lcom/powervision/gcs/R$layout;->window_pvsonar_select_mode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 702
    sget v1, Lcom/powervision/gcs/R$id;->tv1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 703
    sget v2, Lcom/powervision/gcs/R$id;->tv2:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 704
    sget v3, Lcom/powervision/gcs/R$id;->tv3:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unitArray  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    iget-object v6, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lzqColor"

    invoke-static {v5, v4}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unitArray:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/powervision/gcs/R$color;->color_4374E6:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 719
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 720
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-array v7, v7, [I

    .line 725
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 726
    aget v9, v7, v5

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v10, v11}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v10

    sub-int/2addr v9, v10

    aput v9, v7, v5

    .line 727
    aget v6, v7, v6

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v7, v9}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v8, v5, v6, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v5, 0xb

    .line 728
    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 729
    invoke-virtual {v4, v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 731
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$10;

    invoke-direct {v0, p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$10;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$11;

    invoke-direct {v0, p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$11;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;

    invoke-direct {v0, p0, p1, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$13;

    invoke-direct {v0, p0, p1, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$13;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showSonarProgressBar()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipSonarSetFragment$K9FsuxQHDsY3ckPHGjZ10CdGYEo;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipSonarSetFragment$K9FsuxQHDsY3ckPHGjZ10CdGYEo;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public auto_deep_toggle(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
        value = {
            0xc19
        }
    .end annotation

    if-nez p2, :cond_0

    .line 566
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depth_max_view:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 567
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depth_min_text_view:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_Deep_View:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 570
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMax:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 572
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMin:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depth_max_view:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depth_min_text_view:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_Deep_View:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 578
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 579
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMax:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 580
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMin:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 583
    :goto_0
    sput-boolean p2, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    return-void
.end method

.method public changeUnit()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf5
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6539\u53d8\u5355\u4f4d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqCir"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setDepthMax()V

    .line 170
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setDepthMin()V

    return-void
.end method

.method public getSonarLightState(Lcom/powervision/gcs/model/event/SonarLight;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->light_switch:Landroid/widget/ToggleButton;

    iget-boolean p1, p1, Lcom/powervision/gcs/model/event/SonarLight;->isOn:Z

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method protected initListener()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMax:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 240
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMin:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 242
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01AirConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V

    .line 246
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->notifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->addAirOpListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;)V

    .line 252
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->color_content:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "lzqCir"

    const-string v1, "initViews"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 157
    sget p1, Lcom/powervision/gcs/R$layout;->fragment_sonar_pvw4_set:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setContentView(I)V

    .line 158
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 159
    sget p1, Lcom/powervision/gcs/R$id;->seebar_depth_max:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMax:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 160
    sget p1, Lcom/powervision/gcs/R$id;->seebar_depth_min:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->seebarDepthMin:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 161
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_store_location:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_store_location:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/sdcard/NewVisionPlus/BathyLog/..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->initViewValue()V

    .line 163
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->initListener()V

    return-void
.end method

.method public synthetic lambda$hideSonarProgressBar$1$ShipSonarSetFragment()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showSonarProgressBar$0$ShipSonarSetFragment()V
    .locals 2

    .line 368
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onClick()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 436
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 437
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->initAirConnectUsb1()V

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->initAirConnect()V

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->viewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    .line 443
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->imageArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    sget v1, Lcom/powervision/gcs/R$id;->edit_psn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mEditPsn:Landroid/widget/EditText;

    .line 445
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    sget v1, Lcom/powervision/gcs/R$id;->rl_pair:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mRlPair:Landroid/widget/RelativeLayout;

    .line 446
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    sget v1, Lcom/powervision/gcs/R$id;->text_pair:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextPair:Landroid/widget/TextView;

    .line 447
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    sget v1, Lcom/powervision/gcs/R$id;->pair_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPairProgressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 448
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    sget v1, Lcom/powervision/gcs/R$id;->layout_qr:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mLayoutQR:Landroid/widget/LinearLayout;

    .line 449
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    sget v1, Lcom/powervision/gcs/R$id;->text_scan:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextScan:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    sget v1, Lcom/powervision/gcs/R$id;->text_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextTips:Landroid/widget/TextView;

    .line 452
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPairProgressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->gcs_firmware_update_sure_bg:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 454
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mRlPair:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$7;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$7;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mTextScan:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$8;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$8;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mEditPsn:Landroid/widget/EditText;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 487
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->imageArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 492
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->initAirConnect()V

    .line 493
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->imageArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonarPairView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->imageArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 812
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroy()V

    const-string v0, "lzqLight"

    const-string v1, "onDestory = "

    .line 813
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 805
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroyView()V

    const-string v0, "lzqW4_dl01_air"

    const-string v1, "onDestroyView"

    .line 806
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->unregister()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 818
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onPause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 589
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    .line 590
    sget p3, Lcom/powervision/gcs/R$id;->seebar_depth_max:I

    const/4 v0, 0x5

    if-ne p1, p3, :cond_2

    if-ge p2, v0, :cond_0

    const/4 p2, 0x5

    :cond_0
    const/16 p1, 0x32

    if-le p2, p1, :cond_1

    const/16 p2, 0x32

    .line 598
    :cond_1
    iput p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxProgress:I

    .line 599
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setDepthMax()V

    .line 600
    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinProgress:I

    add-int/2addr p1, v0

    iget p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxProgress:I

    if-le p1, p2, :cond_5

    sub-int/2addr p2, v0

    .line 601
    iput p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinProgress:I

    .line 602
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setDepthMin()V

    goto :goto_0

    .line 604
    :cond_2
    sget p3, Lcom/powervision/gcs/R$id;->seebar_depth_min:I

    if-ne p1, p3, :cond_5

    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    const/16 p1, 0x2d

    if-le p2, p1, :cond_4

    const/16 p2, 0x2d

    .line 614
    :cond_4
    iput p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinProgress:I

    .line 615
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setDepthMin()V

    .line 617
    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxProgress:I

    sub-int/2addr p1, v0

    iget p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinProgress:I

    if-ge p1, p2, :cond_5

    add-int/2addr p2, v0

    .line 618
    iput p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxProgress:I

    .line 619
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setDepthMax()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 636
    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinProgress:I

    int-to-float p1, p1

    sput p1, Lcom/powervision/gcs/utils/SonarStateHelper;->up:F

    .line 637
    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxProgress:I

    int-to-float p1, p1

    sput p1, Lcom/powervision/gcs/utils/SonarStateHelper;->down:F

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setRootLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public showScanResult(Lcom/powervision/gcs/model/event/SeekerScanEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->mEditPsn:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/powervision/gcs/model/event/SeekerScanEvent;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public sonar_layout()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x107c
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->onClick()V

    return-void
.end method

.method public unregister()V
    .locals 3

    .line 795
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 796
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 797
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeDl01AirConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V

    .line 800
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postAirStatus(II)V

    return-void
.end method
