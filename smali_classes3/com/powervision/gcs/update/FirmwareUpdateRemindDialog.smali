.class public Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;
.super Landroid/app/Dialog;
.source "FirmwareUpdateRemindDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;
    }
.end annotation


# static fields
.field public static final DOUBLE_BUTTON_NEGATIVE:I = 0x1

.field public static final DOUBLE_BUTTON_POSITIVE:I = 0x2

.field public static final SINGLE_BUTTON_NEGATIVE:I = 0x3

.field public static final SINGLE_BUTTON_POSITIVE:I = 0x4


# instance fields
.field private contentLowPower:Landroid/widget/RelativeLayout;

.field private contentNotRemind:Landroid/widget/RelativeLayout;

.field private doubleBtnContaner:Landroid/widget/LinearLayout;

.field private doubleCancelBtn:Landroid/widget/TextView;

.field private doubleSureBtn:Landroid/widget/TextView;

.field private listener:Landroid/content/DialogInterface$OnClickListener;

.field private selectBtn:Landroid/widget/ImageButton;

.field private singleCancelBtn:Landroid/widget/TextView;

.field private singleSureBtn:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private viewState:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    sget-object p1, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->DEFAUL:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    iput-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->viewState:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    .line 68
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->init()V

    return-void
.end method

.method private hideAllBtns()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->doubleBtnContaner:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->singleSureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->singleCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 72
    sget v0, Lcom/powervision/gcs/R$layout;->gcs_dialog_firmware_update_remind:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->setContentView(I)V

    .line 73
    sget v0, Lcom/powervision/gcs/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->title:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/powervision/gcs/R$id;->doubleBtnContaner:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->doubleBtnContaner:Landroid/widget/LinearLayout;

    .line 77
    sget v0, Lcom/powervision/gcs/R$id;->doubleCancelBtn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->doubleCancelBtn:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/powervision/gcs/R$id;->doubleSureBtn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->doubleSureBtn:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/powervision/gcs/R$id;->contentNotRemind:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->contentNotRemind:Landroid/widget/RelativeLayout;

    .line 82
    sget v0, Lcom/powervision/gcs/R$id;->SingleCancelBtn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->singleCancelBtn:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/powervision/gcs/R$id;->SingleSureBtn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->singleSureBtn:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/powervision/gcs/R$id;->contentLowPower:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->contentLowPower:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->contentNotRemind:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 88
    sget v0, Lcom/powervision/gcs/R$id;->selectBtn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->selectBtn:Landroid/widget/ImageButton;

    .line 97
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->hideAllBtns()V

    .line 98
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->showDoubleBtn()V

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method SingleCancelBtn()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xbbb
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 159
    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method SingleSureBtn()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xbbc
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 167
    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method doubleCancelBtn()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xced
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 143
    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method doubleSureBtn()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xcef
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 151
    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public isNotRemindSelect()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method public onLowPower()V
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->hideAllBtns()V

    .line 181
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->showSingleCancelBtn()V

    .line 184
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->contentLowPower:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->contentNotRemind:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method selectBtn()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfba
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->selectBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->selectBtn:Landroid/widget/ImageButton;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public showDoubleBtn()V
    .locals 2

    .line 129
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->hideAllBtns()V

    .line 130
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->doubleBtnContaner:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showNotRemind()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->contentNotRemind:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showSingleCancelBtn()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->hideAllBtns()V

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->singleCancelBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showSingleSureBtn()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->hideAllBtns()V

    .line 125
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->singleSureBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
