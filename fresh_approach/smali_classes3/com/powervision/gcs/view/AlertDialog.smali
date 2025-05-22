.class public Lcom/powervision/gcs/view/AlertDialog;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# instance fields
.field private bar:Landroid/widget/ProgressBar;

.field private btn_neg:Landroid/widget/Button;

.field private btn_pos:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private count:I

.field private dialog:Landroid/app/Dialog;

.field private display:Landroid/view/Display;

.field private img_line:Landroid/widget/ImageView;

.field private lLayout_bg:Landroid/widget/RelativeLayout;

.field private llt:Landroid/widget/LinearLayout;

.field private showMsg:Z

.field private showNegBtn:Z

.field private showPosBtn:Z

.field private showTitle:Z

.field private txt_msg:Landroid/widget/TextView;

.field private txt_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showTitle:Z

    .line 39
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showMsg:Z

    .line 40
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showPosBtn:Z

    .line 41
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showNegBtn:Z

    .line 155
    iput v0, p0, Lcom/powervision/gcs/view/AlertDialog;->count:I

    .line 45
    iput-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->context:Landroid/content/Context;

    const-string v0, "window"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 48
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->display:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/AlertDialog;)Landroid/app/Dialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/gcs/view/AlertDialog;->bar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/AlertDialog;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/gcs/view/AlertDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/Button;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    return-object p0
.end method

.method private setLayout()V
    .locals 3

    .line 210
    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showTitle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showMsg:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showTitle:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showMsg:Z

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :cond_2
    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showPosBtn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showNegBtn:Z

    if-nez v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    sget v2, Lcom/powervision/gcs/R$drawable;->alertdialog_single_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 227
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v2, Lcom/powervision/gcs/view/AlertDialog$6;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/view/AlertDialog$6;-><init>(Lcom/powervision/gcs/view/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :cond_3
    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showPosBtn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showNegBtn:Z

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    sget v2, Lcom/powervision/gcs/R$drawable;->alertdialog_right_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 238
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    sget v2, Lcom/powervision/gcs/R$drawable;->alertdialog_left_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 240
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->img_line:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    :cond_4
    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showPosBtn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showNegBtn:Z

    if-nez v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    sget v2, Lcom/powervision/gcs/R$drawable;->alertdialog_single_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 248
    :cond_5
    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showPosBtn:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showNegBtn:Z

    if-eqz v0, :cond_6

    .line 249
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    sget v1, Lcom/powervision/gcs/R$drawable;->alertdialog_single_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public builder(I)Lcom/powervision/gcs/view/AlertDialog;
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->gcs_view_alertdialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    sget v1, Lcom/powervision/gcs/R$id;->lLayout_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/powervision/gcs/view/AlertDialog;->lLayout_bg:Landroid/widget/RelativeLayout;

    .line 57
    sget v1, Lcom/powervision/gcs/R$id;->txt_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    sget v1, Lcom/powervision/gcs/R$id;->txt_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    sget v1, Lcom/powervision/gcs/R$id;->btn_neg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    sget v1, Lcom/powervision/gcs/R$id;->btn_pos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    sget v1, Lcom/powervision/gcs/R$id;->img_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/gcs/view/AlertDialog;->img_line:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    sget v1, Lcom/powervision/gcs/R$id;->progressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/powervision/gcs/view/AlertDialog;->bar:Landroid/widget/ProgressBar;

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    sget v1, Lcom/powervision/gcs/R$id;->llt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/powervision/gcs/view/AlertDialog;->llt:Landroid/widget/LinearLayout;

    .line 71
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/powervision/gcs/view/AlertDialog;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/gcs/R$style;->AlertDialogStyle:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    .line 72
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/powervision/gcs/view/AlertDialog$1;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/view/AlertDialog$1;-><init>(Lcom/powervision/gcs/view/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    const/4 v0, -0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 86
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->lLayout_bg:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/powervision/gcs/view/AlertDialog;->display:Landroid/view/Display;

    .line 87
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->lLayout_bg:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/powervision/gcs/view/AlertDialog;->display:Landroid/view/Display;

    .line 90
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public hideButton()Lcom/powervision/gcs/view/AlertDialog;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->llt:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p0
.end method

.method public setCancelable(Z)Lcom/powervision/gcs/view/AlertDialog;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/powervision/gcs/view/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showMsg:Z

    const-string v0, ""

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    const-string v0, "\u5185\u5bb9"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/powervision/gcs/view/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showNegBtn:Z

    const-string v0, ""

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    new-instance v0, Lcom/powervision/gcs/view/AlertDialog$5;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/view/AlertDialog$5;-><init>(Lcom/powervision/gcs/view/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/powervision/gcs/view/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showPosBtn:Z

    const-string v0, ""

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v0, Lcom/powervision/gcs/view/AlertDialog$3;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/view/AlertDialog$3;-><init>(Lcom/powervision/gcs/view/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/powervision/gcs/view/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showPosBtn:Z

    const-string v0, ""

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v0, Lcom/powervision/gcs/view/AlertDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/view/AlertDialog$2;-><init>(Lcom/powervision/gcs/view/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButton2(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/powervision/gcs/view/AlertDialog;
    .locals 2

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showPosBtn:Z

    .line 160
    iget v1, p0, Lcom/powervision/gcs/view/AlertDialog;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/powervision/gcs/view/AlertDialog;->count:I

    const-string v0, ""

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v0, Lcom/powervision/gcs/view/AlertDialog$4;

    invoke-direct {v0, p0, p3, p2}, Lcom/powervision/gcs/view/AlertDialog$4;-><init>(Lcom/powervision/gcs/view/AlertDialog;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/powervision/gcs/view/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/powervision/gcs/view/AlertDialog;->showTitle:Z

    const-string v0, ""

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    const-string v0, "\u6807\u9898"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/powervision/gcs/view/AlertDialog;->setLayout()V

    .line 261
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
