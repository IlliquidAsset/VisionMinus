.class public Lcom/powervision/gcs/view/RockerCalibrateFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RockerCalibrateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RockerCalibrateFragment"


# instance fields
.field confirmView:Lcom/powervision/gcs/view/ship/ConfirmView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xca0
    .end annotation
.end field

.field public isTouchEnable:Z

.field ivClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdf7
    .end annotation
.end field

.field private mListener:Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;

.field onTouchListener:Landroid/view/View$OnTouchListener;

.field rlRoot:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf84
    .end annotation
.end field

.field private startDistance:F

.field private startYPosition:F

.field public status:I

.field tvCalibrate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1158
    .end annotation
.end field

.field tvIndicator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1183
    .end annotation
.end field

.field tvPercent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1190
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11a8
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->isTouchEnable:Z

    .line 163
    new-instance v0, Lcom/powervision/gcs/view/RockerCalibrateFragment$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/RockerCalibrateFragment$4;-><init>(Lcom/powervision/gcs/view/RockerCalibrateFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/RockerCalibrateFragment;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->startYPosition:F

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/view/RockerCalibrateFragment;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->startYPosition:F

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/RockerCalibrateFragment;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->startDistance:F

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/RockerCalibrateFragment;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->startDistance:F

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/RockerCalibrateFragment;)Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->mListener:Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;

    return-object p0
.end method

.method private initListener()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->rlRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/powervision/gcs/view/RockerCalibrateFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/RockerCalibrateFragment$1;-><init>(Lcom/powervision/gcs/view/RockerCalibrateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/-$$Lambda$RockerCalibrateFragment$p6adSpNoAStuHlRIKzjp5xXlPlE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/-$$Lambda$RockerCalibrateFragment$p6adSpNoAStuHlRIKzjp5xXlPlE;-><init>(Lcom/powervision/gcs/view/RockerCalibrateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->confirmView:Lcom/powervision/gcs/view/ship/ConfirmView;

    new-instance v1, Lcom/powervision/gcs/view/RockerCalibrateFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/RockerCalibrateFragment$2;-><init>(Lcom/powervision/gcs/view/RockerCalibrateFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ConfirmView;->setListener(Lcom/powervision/gcs/view/ship/ConfirmView$OnConfirmViewListener;)V

    .line 127
    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvCalibrate:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/RockerCalibrateFragment$3;-><init>(Lcom/powervision/gcs/view/RockerCalibrateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/powervision/gcs/view/RockerCalibrateFragment;
    .locals 2

    .line 64
    new-instance v0, Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/view/RockerCalibrateFragment;-><init>()V

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$initListener$0$RockerCalibrateFragment(Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x103022f

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->setStyle(II)V

    .line 75
    invoke-virtual {p0}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->getArguments()Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 82
    sget p3, Lcom/powervision/gcs/R$layout;->fragment_rocker_calibrate:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->unbinder:Lbutterknife/Unbinder;

    .line 84
    invoke-direct {p0}, Lcom/powervision/gcs/view/RockerCalibrateFragment;->initListener()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 183
    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->mListener:Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;

    return-void
.end method

.method public setmListener(Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->mListener:Lcom/powervision/gcs/view/RockerCalibrateFragment$OnFragmentInteractionListener;

    return-void
.end method
