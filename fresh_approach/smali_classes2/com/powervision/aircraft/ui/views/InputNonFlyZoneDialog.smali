.class public Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;
.super Landroid/app/Dialog;
.source "InputNonFlyZoneDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mTextCancle:Landroid/widget/TextView;

.field private mTextOk:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->init(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 29
    sget p1, Lcom/powervision/aircraft/R$layout;->aircraft_switch_flyzone_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->setContentView(I)V

    .line 31
    sget p1, Lcom/powervision/aircraft/R$id;->text_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->mTextTitle:Landroid/widget/TextView;

    .line 32
    sget p1, Lcom/powervision/aircraft/R$id;->text_confirm:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->mTextOk:Landroid/widget/TextView;

    .line 33
    sget p1, Lcom/powervision/aircraft/R$id;->text_cancel:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->mTextCancle:Landroid/widget/TextView;

    .line 35
    sget p1, Lcom/powervision/aircraft/R$id;->edit_code:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->mEditText:Landroid/widget/EditText;

    .line 37
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->mTextOk:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->mTextCancle:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 45
    sget v0, Lcom/powervision/aircraft/R$id;->text_confirm:I

    if-ne p1, v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->dismiss()V

    .line 47
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "COM_TAKEOFF_ACT"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 52
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->text_cancel:I

    if-ne p1, v0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
