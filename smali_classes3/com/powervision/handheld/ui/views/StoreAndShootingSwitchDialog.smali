.class public Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;
.super Landroid/app/AlertDialog;
.source "StoreAndShootingSwitchDialog.java"


# instance fields
.field private isChecked:Z

.field private mContext:Landroid/content/Context;

.field private mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    sget v0, Lcom/powervision/handheld/R$style;->BaseDialog:I

    invoke-direct {p0, p1, v0}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$StoreAndShootingSwitchDialog(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 62
    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$StoreAndShootingSwitchDialog(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$StoreAndShootingSwitchDialog(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 73
    iput-boolean p2, p0, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->isChecked:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 38
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Lcom/powervision/handheld/R$layout;->hand_store_and_shooting_switch_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->setContentView(I)V

    .line 41
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    .line 42
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    if-le p1, v0, :cond_0

    int-to-double v3, v0

    goto :goto_0

    :cond_0
    int-to-double v3, p1

    :goto_0
    mul-double v3, v3, v1

    double-to-int p1, v3

    .line 49
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 51
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p1, -0x2

    .line 52
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x51

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    sget p1, Lcom/powervision/handheld/R$id;->tv_confirm:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 60
    new-instance v0, Lcom/powervision/handheld/ui/views/-$$Lambda$StoreAndShootingSwitchDialog$hWykZD9ftEchgmiIzh8-yFoegr0;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/views/-$$Lambda$StoreAndShootingSwitchDialog$hWykZD9ftEchgmiIzh8-yFoegr0;-><init>(Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget p1, Lcom/powervision/handheld/R$id;->tv_cancel:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 69
    new-instance v0, Lcom/powervision/handheld/ui/views/-$$Lambda$StoreAndShootingSwitchDialog$3ixMKHckgs4N3svtc0x7CTSiVlo;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/views/-$$Lambda$StoreAndShootingSwitchDialog$3ixMKHckgs4N3svtc0x7CTSiVlo;-><init>(Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget p1, Lcom/powervision/handheld/R$id;->checkbox:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    new-instance v0, Lcom/powervision/handheld/ui/views/-$$Lambda$StoreAndShootingSwitchDialog$TTYqD7cx4LPfZShWZbXUJ7cMfT4;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/views/-$$Lambda$StoreAndShootingSwitchDialog$TTYqD7cx4LPfZShWZbXUJ7cMfT4;-><init>(Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setPositiveClick(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/StoreAndShootingSwitchDialog;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method
