.class public Lcom/powervision/gcs/update/LowPowerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LowPowerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/update/LowPowerDialogFragment$OnClickListener;
    }
.end annotation


# static fields
.field public static final PARAM_ERROR_TYPE:Ljava/lang/String; = "param_error_type"

.field private static final TAG:Ljava/lang/String; = "FirmwareUpdateDialogFra"

.field public static final TYPE_DL01_UPGRADE_ERROR:I = 0x3

.field public static final TYPE_MCU_UPGRADE_ERROR:I = 0x1

.field public static final TYPE_VEH_UPGRADE_ERROR:I = 0x4

.field public static final TYPE_WIFI_UPGRADE_ERROR:I = 0x2


# instance fields
.field private mErrorType:I

.field private mListener:Lcom/powervision/gcs/update/LowPowerDialogFragment$OnClickListener;

.field private tv_cancel:Landroid/widget/TextView;

.field private tv_indicator:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->mErrorType:I

    return-void
.end method

.method private initData()V
    .locals 3

    .line 73
    iget v0, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->mErrorType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const-string v2, "\u56fe\u4f20\u6a21\u5757\u5347\u7ea7\u5f02\u5e38\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u5347\u7ea7\uff1f"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->tv_title:Landroid/widget/TextView;

    const-string v1, "WiFi\u6a21\u5757\u5347\u7ea7\u5f02\u5e38\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u5347\u7ea7\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u4e3b\u63a7\u6a21\u5757\u5347\u7ea7\u5f02\u5e38\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u5347\u7ea7\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private initListener()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->tv_cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$LowPowerDialogFragment$kSPDcpGAtmVk57LWrUtyu_Y8uXM;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$LowPowerDialogFragment$kSPDcpGAtmVk57LWrUtyu_Y8uXM;-><init>(Lcom/powervision/gcs/update/LowPowerDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(I)Lcom/powervision/gcs/update/LowPowerDialogFragment;
    .locals 3

    .line 33
    new-instance v0, Lcom/powervision/gcs/update/LowPowerDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/update/LowPowerDialogFragment;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param_error_type"

    .line 35
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/update/LowPowerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$initListener$0$LowPowerDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->mListener:Lcom/powervision/gcs/update/LowPowerDialogFragment$OnClickListener;

    invoke-interface {p1}, Lcom/powervision/gcs/update/LowPowerDialogFragment$OnClickListener;->onCancel()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/powervision/gcs/update/LowPowerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/powervision/gcs/update/LowPowerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_error_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->mErrorType:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    sget p3, Lcom/powervision/gcs/R$layout;->fragment_low_power:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/powervision/gcs/update/LowPowerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 57
    sget p2, Lcom/powervision/gcs/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->tv_title:Landroid/widget/TextView;

    .line 58
    sget p2, Lcom/powervision/gcs/R$id;->tv_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->tv_cancel:Landroid/widget/TextView;

    .line 59
    sget p2, Lcom/powervision/gcs/R$id;->tv_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->tv_indicator:Landroid/widget/TextView;

    .line 61
    invoke-direct {p0}, Lcom/powervision/gcs/update/LowPowerDialogFragment;->initData()V

    .line 62
    invoke-direct {p0}, Lcom/powervision/gcs/update/LowPowerDialogFragment;->initListener()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public setOnClickListener(Lcom/powervision/gcs/update/LowPowerDialogFragment$OnClickListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/powervision/gcs/update/LowPowerDialogFragment;->mListener:Lcom/powervision/gcs/update/LowPowerDialogFragment$OnClickListener;

    return-void
.end method
