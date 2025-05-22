.class public Lcom/powervision/base/dialog/AvoidanceDialog;
.super Landroid/app/Dialog;
.source "AvoidanceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;,
        Lcom/powervision/base/dialog/AvoidanceDialog$IAvoidance;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private layoutSafe:Landroid/widget/LinearLayout;

.field private mImageSafe:Landroid/widget/ImageView;

.field private mTextOK:Landroid/widget/TextView;

.field private mToggle:Landroid/widget/ToggleButton;

.field private mViewMasker:Landroid/view/View;

.field private select:I

.field private selectListener:Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    sget v0, Lcom/powervision/base/R$style;->custom_dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p1, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/dialog/AvoidanceDialog;)Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->selectListener:Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 70
    sget v0, Lcom/powervision/base/R$id;->layout_safe:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/AvoidanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->layoutSafe:Landroid/widget/LinearLayout;

    .line 71
    sget v0, Lcom/powervision/base/R$id;->text_ok:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/AvoidanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mTextOK:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/powervision/base/R$id;->image_safe:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/AvoidanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mImageSafe:Landroid/widget/ImageView;

    .line 73
    sget v0, Lcom/powervision/base/R$id;->toggle_button:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/AvoidanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mToggle:Landroid/widget/ToggleButton;

    .line 74
    sget v0, Lcom/powervision/base/R$id;->view_mask:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/AvoidanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mViewMasker:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->layoutSafe:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mTextOK:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mToggle:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/base/dialog/AvoidanceDialog$1;

    invoke-direct {v1, p0}, Lcom/powervision/base/dialog/AvoidanceDialog$1;-><init>(Lcom/powervision/base/dialog/AvoidanceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getSelect()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->select:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 117
    sget v0, Lcom/powervision/base/R$id;->layout_safe:I

    if-ne p1, v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/powervision/base/dialog/AvoidanceDialog;->getSelect()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->selectListener:Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;

    if-eqz p1, :cond_3

    .line 123
    invoke-interface {p1, v0}, Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;->modeSelect(I)V

    goto :goto_0

    .line 125
    :cond_1
    sget v0, Lcom/powervision/base/R$id;->text_ok:I

    if-ne p1, v0, :cond_3

    .line 126
    iget-object p1, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->selectListener:Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;

    if-eqz p1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;->confirm(Z)V

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/base/dialog/AvoidanceDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget p1, Lcom/powervision/base/R$layout;->avoidance_dialog_bg:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/powervision/base/dialog/AvoidanceDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 55
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 57
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 58
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 59
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x106000d

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    invoke-direct {p0}, Lcom/powervision/base/dialog/AvoidanceDialog;->initView()V

    return-void
.end method

.method public setSelect(I)V
    .locals 1

    .line 95
    iput p1, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->select:I

    .line 98
    iget-object p1, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mImageSafe:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setSelectEnable(Z)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mViewMasker:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSelectListener(Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->selectListener:Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;

    return-void
.end method

.method public setToggleChecked(Z)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/powervision/base/dialog/AvoidanceDialog;->mToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
