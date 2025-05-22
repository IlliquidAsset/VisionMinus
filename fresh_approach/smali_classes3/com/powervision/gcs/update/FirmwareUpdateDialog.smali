.class public Lcom/powervision/gcs/update/FirmwareUpdateDialog;
.super Landroid/app/Dialog;
.source "FirmwareUpdateDialog.java"


# instance fields
.field private doubleBtnContaner:Landroid/widget/LinearLayout;

.field private doubleCancelBtn:Landroid/widget/TextView;

.field private doubleSureBtn:Landroid/widget/TextView;

.field private progrees1:Landroid/widget/ImageView;

.field private progrees2:Landroid/widget/ImageView;

.field private progrees3:Landroid/widget/ImageView;

.field private progrees4:Landroid/widget/ImageView;

.field private singleCancelBtn:Landroid/widget/TextView;

.field private singleSureBtn:Landroid/widget/TextView;

.field private step1Content:Landroid/widget/TextView;

.field private step2Content:Landroid/widget/RelativeLayout;

.field private step3Content:Landroid/widget/RelativeLayout;

.field private step3Title:Landroid/widget/TextView;

.field private step4ContentIv:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;

.field private updateRemind:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method private hideAllBtns()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->doubleBtnContaner:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->singleSureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->singleCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private hideAllStepContent()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step1Content:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step2Content:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step3Content:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step4ContentIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 57
    sget v0, Lcom/powervision/gcs/R$layout;->gcs_dialog_firmware_update:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->setContentView(I)V

    .line 58
    sget v0, Lcom/powervision/gcs/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->title:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/powervision/gcs/R$id;->progress1:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->progrees1:Landroid/widget/ImageView;

    .line 60
    sget v0, Lcom/powervision/gcs/R$id;->progress2:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->progrees2:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/powervision/gcs/R$id;->progress3:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->progrees3:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/powervision/gcs/R$id;->progress4:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->progrees4:Landroid/widget/ImageView;

    .line 68
    sget v0, Lcom/powervision/gcs/R$id;->step1Content:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step1Content:Landroid/widget/TextView;

    .line 69
    sget v0, Lcom/powervision/gcs/R$id;->step2Content:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step2Content:Landroid/widget/RelativeLayout;

    .line 70
    sget v0, Lcom/powervision/gcs/R$id;->step3Content:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step3Content:Landroid/widget/RelativeLayout;

    .line 71
    sget v0, Lcom/powervision/gcs/R$id;->step3Title:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step3Title:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/powervision/gcs/R$id;->updateRemind:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->updateRemind:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/powervision/gcs/R$id;->doubleBtnContaner:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->doubleBtnContaner:Landroid/widget/LinearLayout;

    .line 77
    sget v0, Lcom/powervision/gcs/R$id;->doubleCancelBtn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->doubleCancelBtn:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/powervision/gcs/R$id;->doubleSureBtn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->doubleSureBtn:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/powervision/gcs/R$id;->SingleCancelBtn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->singleCancelBtn:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/powervision/gcs/R$id;->SingleSureBtn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->singleSureBtn:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step1Content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 86
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_50:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step3Title:Landroid/widget/TextView;

    const-string v1, "<font color=\"#222222\">30%"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step3Title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->hideAllStepContent()V

    .line 91
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step1()V

    return-void
.end method

.method private showDoubleBtn()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->doubleBtnContaner:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showSingleCancelBtn()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->singleCancelBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showSingleSureBtn()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->singleSureBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private step1()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->hideAllBtns()V

    .line 102
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->showDoubleBtn()V

    .line 103
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step1Content:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->progrees1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private step2()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->hideAllBtns()V

    .line 109
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->showSingleCancelBtn()V

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step1Content:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step2Content:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->progrees2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_42:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private step3()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step2Content:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step3Content:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->progrees3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_47:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private step4()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->hideAllBtns()V

    .line 127
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->showSingleSureBtn()V

    .line 129
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step3Content:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step4ContentIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->updateRemind:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_96:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->progrees4:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_4s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->gcs_update_ship_firmware_data_complete:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method progress2()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf20
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step2()V

    return-void
.end method

.method progress3()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf22
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step3()V

    return-void
.end method

.method progress4()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf23
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->step4()V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
