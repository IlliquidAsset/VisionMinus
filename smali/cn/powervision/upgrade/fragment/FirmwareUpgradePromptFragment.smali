.class public Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FirmwareUpgradePromptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment$UpgradePromptType;
    }
.end annotation


# static fields
.field public static final DIALOG_TYPE:Ljava/lang/String; = "dialog_type"


# instance fields
.field private contentNotRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private contentTv:Landroid/widget/TextView;

.field private doubleCancelBtn:Landroid/widget/TextView;

.field private doubleSureBtn:Landroid/widget/TextView;

.field private isForceUpgrade:Z

.field private mDialogType:I

.field private mTitle:Landroid/widget/TextView;

.field private selectBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->mDialogType:I

    return-void
.end method

.method public static get(I)Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;
    .locals 3

    .line 93
    new-instance v0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;

    invoke-direct {v0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;-><init>()V

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialog_type"

    .line 95
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private hideNotRemind()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->contentNotRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "dialog_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->mDialogType:I

    .line 143
    :cond_0
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_1:I

    .line 144
    iget v2, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->mDialogType:I

    if-nez v2, :cond_1

    .line 145
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_1:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 147
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->hideNotRemind()V

    .line 148
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_1:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 150
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->showSingleButton()V

    .line 151
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_26:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 153
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->showSingleButton()V

    .line 154
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_27:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 156
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->showSingleButton()V

    .line 157
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_28:I

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 159
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->contentTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->hideNotRemind()V

    .line 161
    sget v0, Lcn/powervision/upgrade/R$string;->upgrade_body_firmware_exception_retry:I

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    if-ne v2, v1, :cond_7

    .line 163
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_2:I

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    if-ne v2, v1, :cond_8

    .line 165
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_2:I

    .line 166
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->hideNotRemind()V

    .line 168
    :cond_8
    :goto_0
    iget-object v1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setListeners()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->contentNotRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->doubleCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->doubleSureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showSingleButton()V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->hideNotRemind()V

    .line 194
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->doubleCancelBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->doubleSureBtn:Landroid/widget/TextView;

    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Msg_123:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public isNotRemindSelect()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 128
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 133
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 134
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 201
    sget v0, Lcn/powervision/upgrade/R$id;->not_reminde_layout:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_a

    sget v0, Lcn/powervision/upgrade/R$id;->check_box:I

    if-ne p1, v0, :cond_0

    goto :goto_4

    .line 206
    :cond_0
    sget v0, Lcn/powervision/upgrade/R$id;->double_cancle_bt:I

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-ne p1, v0, :cond_5

    .line 207
    iget p1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->mDialogType:I

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_4

    .line 210
    :cond_2
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_1

    .line 208
    :cond_3
    :goto_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc6

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 212
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    .line 213
    :cond_5
    sget v0, Lcn/powervision/upgrade/R$id;->double_sure_bt:I

    if-ne p1, v0, :cond_b

    .line 214
    iget p1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->mDialogType:I

    if-eqz p1, :cond_8

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    if-eq p1, v3, :cond_7

    if-ne p1, v2, :cond_9

    .line 217
    :cond_7
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc9

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_3

    .line 215
    :cond_8
    :goto_2
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc7

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 219
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    .line 202
    :cond_a
    :goto_4
    iget-object p1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result p1

    .line 203
    iget-object v0, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->selectBtn:Landroid/widget/ImageButton;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 205
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 112
    sget p3, Lcn/powervision/upgrade/R$layout;->upgrade_firmware_update_remind_layout:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 114
    invoke-virtual {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 115
    sget p2, Lcn/powervision/upgrade/R$id;->title_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->mTitle:Landroid/widget/TextView;

    .line 116
    sget p2, Lcn/powervision/upgrade/R$id;->double_cancle_bt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->doubleCancelBtn:Landroid/widget/TextView;

    .line 117
    sget p2, Lcn/powervision/upgrade/R$id;->double_sure_bt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->doubleSureBtn:Landroid/widget/TextView;

    .line 118
    sget p2, Lcn/powervision/upgrade/R$id;->not_reminde_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->contentNotRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 119
    sget p2, Lcn/powervision/upgrade/R$id;->check_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->selectBtn:Landroid/widget/ImageButton;

    .line 120
    sget p2, Lcn/powervision/upgrade/R$id;->content_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->contentTv:Landroid/widget/TextView;

    .line 121
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->initData()V

    .line 122
    invoke-direct {p0}, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->setListeners()V

    return-object p1
.end method

.method public setForceUpgrade(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcn/powervision/upgrade/fragment/FirmwareUpgradePromptFragment;->isForceUpgrade:Z

    return-void
.end method
