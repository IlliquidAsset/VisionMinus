.class public Lcom/powervision/gcs/view/SonarParamQuickSetView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SonarParamQuickSetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/SonarParamQuickSetView$OnSonarParamChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SonarParamQuickSetView"


# instance fields
.field private isDetachFromWindow:Z

.field leftLayout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe4f
    .end annotation
.end field

.field public mOnSonarParamChangedListener:Lcom/powervision/gcs/view/SonarParamQuickSetView$OnSonarParamChangedListener;

.field private mStartCenterX:I

.field private mStartCenterY:I

.field private mStartRadius:F

.field muteContent:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xed3
    .end annotation
.end field

.field muteTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xed6
    .end annotation
.end field

.field paramClose:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xef8
    .end annotation
.end field

.field paramLayoutTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xefa
    .end annotation
.end field

.field paramSensorContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xefb
    .end annotation
.end field

.field paramSensorLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xefc
    .end annotation
.end field

.field paramSensorMax:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xefd
    .end annotation
.end field

.field paramSensorMin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xefe
    .end annotation
.end field

.field paramSensorTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xeff
    .end annotation
.end field

.field rightLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf6b
    .end annotation
.end field

.field sensorSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfc3
    .end annotation
.end field

.field showFishContent:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x106f
    .end annotation
.end field

.field showFishTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1071
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/SonarParamQuickSetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/SonarParamQuickSetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0}, Lcom/powervision/gcs/view/SonarParamQuickSetView;->initView()V

    .line 76
    invoke-direct {p0}, Lcom/powervision/gcs/view/SonarParamQuickSetView;->setListener()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarParamQuickSetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->view_sonar_param_quick_set:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramClose:Landroid/view/View;

    new-instance v1, Lcom/powervision/gcs/view/SonarParamQuickSetView$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarParamQuickSetView$1;-><init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->rightLayout:Landroid/view/View;

    new-instance v1, Lcom/powervision/gcs/view/SonarParamQuickSetView$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarParamQuickSetView$2;-><init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/16 v0, 0x8

    .line 146
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/SonarParamQuickSetView;->setVisibility(I)V

    return-void
.end method

.method public setIsMute(Z)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->muteContent:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 201
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->muteContent:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/powervision/gcs/view/SonarParamQuickSetView$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/SonarParamQuickSetView$5;-><init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setOnSonarParamChangedListener(Lcom/powervision/gcs/view/SonarParamQuickSetView$OnSonarParamChangedListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->mOnSonarParamChangedListener:Lcom/powervision/gcs/view/SonarParamQuickSetView$OnSonarParamChangedListener;

    return-void
.end method

.method public setSeekBarProgress(I)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorContent:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->sensorSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 153
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->sensorSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v0, Lcom/powervision/gcs/view/SonarParamQuickSetView$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/SonarParamQuickSetView$3;-><init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setShowFish(Z)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->showFishContent:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 177
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->showFishContent:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/powervision/gcs/view/SonarParamQuickSetView$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/SonarParamQuickSetView$4;-><init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public show(III)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->mStartCenterX:I

    .line 105
    iput p2, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->mStartCenterY:I

    int-to-float p1, p3

    .line 106
    iput p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->mStartRadius:F

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SonarParamQuickSetView;->setVisibility(I)V

    const/high16 p1, 0x420c0000    # 35.0f

    .line 109
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SonarParamQuickSetView;->setZ(F)V

    return-void
.end method
