.class public Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FirmwareUpgradeLowPowerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;
    }
.end annotation


# static fields
.field public static final PARAM_BATTERY_POWER:Ljava/lang/String; = "PARAM_BATTERY_POWER"

.field public static final PARAM_REMOTE_POWER:Ljava/lang/String; = "PARAM_REMOTE_POWER"

.field public static final UPGRADE_TYPE:Ljava/lang/String; = "UPGRADE_TYPE"


# instance fields
.field private isDeviceUpgrade:Z

.field private mBatteryPower:I

.field private mOnCloseListener:Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;

.field private mRemotePower:I

.field private mTVCancel:Landroid/widget/TextView;

.field private showType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->showType:I

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mTVCancel:Landroid/widget/TextView;

    new-instance v1, Lcn/powervision/upgrade/fragment/-$$Lambda$FirmwareUpgradeLowPowerFragment$lao-aTsCIRL39yb_92J22lrjyS8;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/fragment/-$$Lambda$FirmwareUpgradeLowPowerFragment$lao-aTsCIRL39yb_92J22lrjyS8;-><init>(Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(III)Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;
    .locals 3

    .line 42
    new-instance v0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;

    invoke-direct {v0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PARAM_BATTERY_POWER"

    .line 44
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "PARAM_REMOTE_POWER"

    .line 45
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "UPGRADE_TYPE"

    .line 46
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 117
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initListener$0$FirmwareUpgradeLowPowerFragment(Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->dismiss()V

    .line 109
    iget-object p1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mOnCloseListener:Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;->closeDialog()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 58
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "PARAM_BATTERY_POWER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mBatteryPower:I

    .line 69
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "PARAM_REMOTE_POWER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mRemotePower:I

    .line 70
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "UPGRADE_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->showType:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 78
    sget p3, Lcn/powervision/upgrade/R$layout;->upgrade_low_power_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 81
    sget p2, Lcn/powervision/upgrade/R$id;->tv_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mTVCancel:Landroid/widget/TextView;

    .line 82
    sget p2, Lcn/powervision/upgrade/R$id;->tv_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->setCancelable(Z)V

    .line 90
    iget v1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->showType:I

    const-string v2, ","

    if-nez v1, :cond_0

    .line 92
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_90_1:I

    invoke-virtual {p0, v4}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_90_2:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array p3, p3, [Ljava/lang/Object;

    iget v3, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mBatteryPower:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v0

    invoke-static {v1, v2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, p3, :cond_1

    .line 95
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_90_1:I

    invoke-virtual {p0, v5}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_90:I

    invoke-virtual {p0, v5}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_90_2:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mBatteryPower:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mRemotePower:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 98
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_90:I

    invoke-virtual {p0, v4}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_90_2:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array p3, p3, [Ljava/lang/Object;

    iget v3, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mRemotePower:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v0

    invoke-static {v1, v2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->initListener()V

    return-object p1
.end method

.method public setOnCloseListener(Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->mOnCloseListener:Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;

    return-void
.end method
