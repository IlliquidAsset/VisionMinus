.class public Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FirmwareUpdateRemindDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment$OnDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FirmwareUpdateRemindDia"


# instance fields
.field private contentLowPower:Landroid/widget/RelativeLayout;

.field private contentNotRemind:Landroid/widget/RelativeLayout;

.field private doubleBtnContaner:Landroid/widget/LinearLayout;

.field private doubleCancelBtn:Landroid/widget/TextView;

.field private doubleSureBtn:Landroid/widget/TextView;

.field public mOnDialogListener:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment$OnDialogListener;

.field private mShipBodyFirmwareUpdateHelper:Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelper;

.field private selectBtn:Landroid/widget/ImageButton;

.field private singleCancelBtn:Landroid/widget/TextView;

.field private singleSureBtn:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private hideAllBtns()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->doubleBtnContaner:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->contentLowPower:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->contentNotRemind:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->initMt03RemoteControlBatterySurplusListener(Landroidx/fragment/app/FragmentActivity;)V

    .line 123
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->initSystemStatusListener(Landroidx/fragment/app/FragmentActivity;)V

    .line 125
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->hideAllBtns()V

    .line 126
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->showDoubleBtn()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->selectBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$GCNGbWmXZSOwNX1AxCRTcnT8uzA;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$GCNGbWmXZSOwNX1AxCRTcnT8uzA;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->doubleCancelBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$RqpjDXTu_b-hQZPtJhrr9VBV-X4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$RqpjDXTu_b-hQZPtJhrr9VBV-X4;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->doubleSureBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$EQhbcx-6nysC-zFfBr1irGzP5f4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$EQhbcx-6nysC-zFfBr1irGzP5f4;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$x-INreUjDp5LNpzlDEQoLyDca3A;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$x-INreUjDp5LNpzlDEQoLyDca3A;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$ilIjNr5tlh26yOTSlVIaM0E1tm8;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateRemindDialogFragment$ilIjNr5tlh26yOTSlVIaM0E1tm8;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initMt03RemoteControlBatterySurplusListener(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method private initSystemStatusListener(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method private isNotRemindSelect()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method private showSingleCancelBtn()V
    .locals 2

    .line 176
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->hideAllBtns()V

    .line 177
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public isPowerEnable()Z
    .locals 1

    .line 245
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->isRemoteBatteryCallback()Z

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$initListener$0$FirmwareUpdateRemindDialogFragment(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->selectBtn:Landroid/widget/ImageButton;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method public synthetic lambda$initListener$1$FirmwareUpdateRemindDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->isNotRemindSelect()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->setNotRemind()V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public synthetic lambda$initListener$2$FirmwareUpdateRemindDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->mOnDialogListener:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment$OnDialogListener;

    invoke-interface {p1}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment$OnDialogListener;->onPositiveClick()V

    .line 144
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public synthetic lambda$initListener$3$FirmwareUpdateRemindDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->isNotRemindSelect()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->setNotRemind()V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public synthetic lambda$initListener$4$FirmwareUpdateRemindDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 86
    sget p3, Lcom/powervision/gcs/R$layout;->gcs_dialog_firmware_update_remind:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 90
    sget p2, Lcom/powervision/gcs/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->title:Landroid/widget/TextView;

    .line 93
    sget p2, Lcom/powervision/gcs/R$id;->doubleBtnContaner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->doubleBtnContaner:Landroid/widget/LinearLayout;

    .line 94
    sget p2, Lcom/powervision/gcs/R$id;->doubleCancelBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->doubleCancelBtn:Landroid/widget/TextView;

    .line 95
    sget p2, Lcom/powervision/gcs/R$id;->doubleSureBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->doubleSureBtn:Landroid/widget/TextView;

    .line 97
    sget p2, Lcom/powervision/gcs/R$id;->contentNotRemind:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->contentNotRemind:Landroid/widget/RelativeLayout;

    .line 99
    sget p2, Lcom/powervision/gcs/R$id;->SingleCancelBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    .line 100
    sget p2, Lcom/powervision/gcs/R$id;->SingleSureBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    .line 101
    sget p2, Lcom/powervision/gcs/R$id;->contentLowPower:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->contentLowPower:Landroid/widget/RelativeLayout;

    .line 102
    sget p2, Lcom/powervision/gcs/R$id;->selectBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->selectBtn:Landroid/widget/ImageButton;

    .line 104
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->initListener()V

    .line 106
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->initData()V

    return-object p1
.end method

.method public onLowPower()V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->hideAllBtns()V

    .line 194
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->showSingleCancelBtn()V

    .line 197
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->contentLowPower:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->contentNotRemind:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 60
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 61
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 69
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x43aa0000    # 340.0f

    .line 71
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 72
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setNotRemind()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->mShipBodyFirmwareUpdateHelper:Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelper;

    invoke-virtual {v0}, Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelper;->getOnlineVersion()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->mShipBodyFirmwareUpdateHelper:Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelper;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelper;->ignoreUpgradeVersion(I)V

    :cond_1
    return-void
.end method

.method public setOnDialogListener(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment$OnDialogListener;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->mOnDialogListener:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment$OnDialogListener;

    return-void
.end method

.method public showDoubleBtn()V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->hideAllBtns()V

    .line 187
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->doubleBtnContaner:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showNotRemind()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->contentNotRemind:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showSingleSureBtn()V
    .locals 2

    .line 181
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->hideAllBtns()V

    .line 182
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
