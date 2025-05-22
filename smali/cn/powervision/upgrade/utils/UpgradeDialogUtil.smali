.class public Lcn/powervision/upgrade/utils/UpgradeDialogUtil;
.super Landroid/app/Dialog;
.source "UpgradeDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/upgrade/utils/UpgradeDialogUtil$UpgradePromptType;
    }
.end annotation


# instance fields
.field private contentNotRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private contentTv:Landroid/widget/TextView;

.field private doubleCancelBtn:Landroid/widget/TextView;

.field private doubleSureBtn:Landroid/widget/TextView;

.field private isForceUpgrade:Z

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private mTitle:Landroid/widget/TextView;

.field private selectBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->mContext:Landroid/content/Context;

    .line 47
    iput p2, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->mDialogType:I

    return-void
.end method

.method private hideNotRemind()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->contentNotRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 79
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_1:I

    .line 80
    iget v1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->mDialogType:I

    if-nez v1, :cond_0

    .line 81
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_1:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 83
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->hideNotRemind()V

    .line 84
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_1:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 86
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->showSingleButton()V

    .line 87
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_26:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 89
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->showSingleButton()V

    .line 90
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_27:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 92
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->showSingleButton()V

    .line 93
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_28:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 95
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->contentTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->hideNotRemind()V

    .line 97
    sget v0, Lcn/powervision/upgrade/R$string;->upgrade_body_firmware_exception_retry:I

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 99
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_2:I

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 101
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_2:I

    .line 102
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->hideNotRemind()V

    .line 104
    :cond_7
    :goto_0
    iget-object v1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setListeners()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->contentNotRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->doubleCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->doubleSureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showSingleButton()V
    .locals 2

    .line 129
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->hideNotRemind()V

    .line 130
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->doubleCancelBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->doubleSureBtn:Landroid/widget/TextView;

    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Msg_123:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public isNotRemindSelect()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 137
    sget v0, Lcn/powervision/upgrade/R$id;->not_reminde_layout:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_a

    sget v0, Lcn/powervision/upgrade/R$id;->check_box:I

    if-ne p1, v0, :cond_0

    goto :goto_4

    .line 142
    :cond_0
    sget v0, Lcn/powervision/upgrade/R$id;->double_cancle_bt:I

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-ne p1, v0, :cond_5

    .line 143
    iget p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->mDialogType:I

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_4

    .line 146
    :cond_2
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_1

    .line 144
    :cond_3
    :goto_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc6

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 148
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->dismiss()V

    goto :goto_5

    .line 149
    :cond_5
    sget v0, Lcn/powervision/upgrade/R$id;->double_sure_bt:I

    if-ne p1, v0, :cond_b

    .line 150
    iget p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->mDialogType:I

    if-eqz p1, :cond_8

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    if-eq p1, v3, :cond_7

    if-ne p1, v2, :cond_9

    .line 153
    :cond_7
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc9

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_3

    .line 151
    :cond_8
    :goto_2
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc7

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 155
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->dismiss()V

    goto :goto_5

    .line 138
    :cond_a
    :goto_4
    iget-object p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result p1

    .line 139
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->selectBtn:Landroid/widget/ImageButton;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 141
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    xor-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "firmware_upgrade_no_remind"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    :goto_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcn/powervision/upgrade/R$layout;->upgrade_firmware_update_remind_layout:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 59
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 60
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v0, 0x11

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->setCanceledOnTouchOutside(Z)V

    .line 66
    sget p1, Lcn/powervision/upgrade/R$id;->title_tv:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->mTitle:Landroid/widget/TextView;

    .line 67
    sget p1, Lcn/powervision/upgrade/R$id;->double_cancle_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->doubleCancelBtn:Landroid/widget/TextView;

    .line 68
    sget p1, Lcn/powervision/upgrade/R$id;->double_sure_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->doubleSureBtn:Landroid/widget/TextView;

    .line 69
    sget p1, Lcn/powervision/upgrade/R$id;->not_reminde_layout:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->contentNotRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    sget p1, Lcn/powervision/upgrade/R$id;->check_box:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->selectBtn:Landroid/widget/ImageButton;

    .line 71
    sget p1, Lcn/powervision/upgrade/R$id;->content_tv:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->contentTv:Landroid/widget/TextView;

    .line 73
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->initData()V

    .line 74
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->setListeners()V

    return-void
.end method

.method public setForceUpgrade(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->isForceUpgrade:Z

    return-void
.end method
