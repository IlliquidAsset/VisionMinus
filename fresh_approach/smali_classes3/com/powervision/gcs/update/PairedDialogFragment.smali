.class public Lcom/powervision/gcs/update/PairedDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PairedDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;
    }
.end annotation


# static fields
.field public static final PARAM_ERROR_TYPE:Ljava/lang/String; = "param_error_type"

.field private static final TAG:Ljava/lang/String; = "FirmwareUpdateDialogFra"

.field public static final TYPE_REMOTE_PAIRED_SUCCEED:I = 0x1

.field public static final TYPE_USB_INSERT:I = 0x2


# instance fields
.field private fl_indicator:Landroid/widget/FrameLayout;

.field private iv_close:Landroid/widget/ImageView;

.field private mErrorType:I

.field private mListener:Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;

.field private tv_indicator:Landroid/widget/TextView;

.field private tv_sure:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->mErrorType:I

    return-void
.end method

.method private initData()V
    .locals 3

    .line 103
    iget v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->mErrorType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->W4_ConnectGuide_51:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/PairedDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_indicator:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_58:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/PairedDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->fl_indicator:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_23:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/PairedDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_indicator:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_65:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/PairedDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->fl_indicator:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initListener()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_sure:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$PairedDialogFragment$YeSqi__WYNJt3v-le61vqzhIIQc;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$PairedDialogFragment$YeSqi__WYNJt3v-le61vqzhIIQc;-><init>(Lcom/powervision/gcs/update/PairedDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->iv_close:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$PairedDialogFragment$RgbDeMrQ2o_u38ikkn7v-9rIQ2M;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$PairedDialogFragment$RgbDeMrQ2o_u38ikkn7v-9rIQ2M;-><init>(Lcom/powervision/gcs/update/PairedDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(I)Lcom/powervision/gcs/update/PairedDialogFragment;
    .locals 3

    .line 43
    new-instance v0, Lcom/powervision/gcs/update/PairedDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/update/PairedDialogFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param_error_type"

    .line 45
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/update/PairedDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$initListener$0$PairedDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->mListener:Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->mListener:Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;

    invoke-interface {p1}, Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;->onPositive()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initListener$1$PairedDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PairedDialogFragment;->dismissAllowingStateLoss()V

    .line 131
    iget-object p1, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->mListener:Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->mListener:Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;

    invoke-interface {p1}, Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PairedDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PairedDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_error_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->mErrorType:I

    :cond_0
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/update/PairedDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 65
    sget p3, Lcom/powervision/gcs/R$layout;->fragment_dialog_paired:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PairedDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 68
    sget p2, Lcom/powervision/gcs/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_title:Landroid/widget/TextView;

    .line 69
    sget p2, Lcom/powervision/gcs/R$id;->tv_sure:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_sure:Landroid/widget/TextView;

    .line 70
    sget p2, Lcom/powervision/gcs/R$id;->fl_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->fl_indicator:Landroid/widget/FrameLayout;

    .line 71
    sget p2, Lcom/powervision/gcs/R$id;->tv_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->tv_indicator:Landroid/widget/TextView;

    .line 72
    sget p2, Lcom/powervision/gcs/R$id;->iv_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->iv_close:Landroid/widget/ImageView;

    .line 74
    invoke-direct {p0}, Lcom/powervision/gcs/update/PairedDialogFragment;->initData()V

    .line 75
    invoke-direct {p0}, Lcom/powervision/gcs/update/PairedDialogFragment;->initListener()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 98
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 82
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PairedDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PairedDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 90
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x43960000    # 300.0f

    .line 92
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setOnClickListener(Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/powervision/gcs/update/PairedDialogFragment;->mListener:Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;

    return-void
.end method
