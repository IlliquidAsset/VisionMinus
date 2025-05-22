.class public Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "WaterModeNoticeDialog.java"


# instance fields
.field private mTextClose:Landroid/widget/TextView;

.field private mTextNoMore:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onViewCreated$0$WaterModeNoticeDialog(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$WaterModeNoticeDialog(Landroid/view/View;)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "SMART_FOLLOW_REMINDER_WATER"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lcom/powervision/aircraft/R$style;->aircraft_dialog_style:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 57
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/Window;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    sget p3, Lcom/powervision/aircraft/R$layout;->aircraft_dialog_water_follow_notice:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    sget p2, Lcom/powervision/aircraft/R$id;->smart_ok_bt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->mTextClose:Landroid/widget/TextView;

    .line 45
    sget p2, Lcom/powervision/aircraft/R$id;->smart_cancle_bt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->mTextNoMore:Landroid/widget/TextView;

    .line 46
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->mTextClose:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/aircraft/ui/fragment/dialog/-$$Lambda$WaterModeNoticeDialog$bklbJIoR5DjR1cbMrcjoTgLF3B0;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/fragment/dialog/-$$Lambda$WaterModeNoticeDialog$bklbJIoR5DjR1cbMrcjoTgLF3B0;-><init>(Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->mTextNoMore:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/aircraft/ui/fragment/dialog/-$$Lambda$WaterModeNoticeDialog$4eu-a46PA5_0fib4q7oHQYXGJ5I;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/fragment/dialog/-$$Lambda$WaterModeNoticeDialog$4eu-a46PA5_0fib4q7oHQYXGJ5I;-><init>(Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
