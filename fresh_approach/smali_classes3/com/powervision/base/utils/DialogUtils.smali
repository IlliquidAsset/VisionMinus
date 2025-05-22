.class public final Lcom/powervision/base/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/DialogUtils$OnClickListener;
    }
.end annotation


# static fields
.field private static sAlertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 2

    .line 117
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 123
    new-instance p2, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$R4LpBYdqyhgCPM7GtJSurLqVxRY;

    invoke-direct {p2, p5, p0}, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$R4LpBYdqyhgCPM7GtJSurLqVxRY;-><init>(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p0, p1, p3, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, -0x2

    .line 129
    new-instance p2, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$9RjC3BkwVSLTii3HduYt0k48hcw;

    invoke-direct {p2, p6, p0}, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$9RjC3BkwVSLTii3HduYt0k48hcw;-><init>(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p0, p1, p4, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-object p0
.end method

.method public static defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 88
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 93
    sget-object p2, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$9U7oTzOCfn8_80sNOzM_c4vGdYo;->INSTANCE:Lcom/powervision/base/utils/-$$Lambda$DialogUtils$9U7oTzOCfn8_80sNOzM_c4vGdYo;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, -0x2

    .line 96
    sget-object p2, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$JtG6d9LgXjfR9evAk7bgBeFubpU;->INSTANCE:Lcom/powervision/base/utils/-$$Lambda$DialogUtils$JtG6d9LgXjfR9evAk7bgBeFubpU;

    invoke-virtual {p0, p1, p4, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method static synthetic lambda$customDialog$4(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, -0x1

    .line 125
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/powervision/base/utils/DialogUtils$OnClickListener;->onClick(Landroid/view/View;)V

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$customDialog$5(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, -0x2

    .line 131
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/powervision/base/utils/DialogUtils$OnClickListener;->onClick(Landroid/view/View;)V

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$defaultDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$defaultDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$returnCustomDialog$6(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, -0x1

    .line 179
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/powervision/base/utils/DialogUtils$OnClickListener;->onClick(Landroid/view/View;)V

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$returnCustomDialog$7(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, -0x2

    .line 185
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/powervision/base/utils/DialogUtils$OnClickListener;->onClick(Landroid/view/View;)V

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$verticalDialog$0(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$verticalDialog$1(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static returnCustomDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 2

    .line 171
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 177
    new-instance p2, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$mbTryyQpSmfWqjetPJFKQc_Hu7I;

    invoke-direct {p2, p5, p0}, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$mbTryyQpSmfWqjetPJFKQc_Hu7I;-><init>(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p0, p1, p3, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, -0x2

    .line 183
    new-instance p2, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$BM-aR_9x-HQwklQbF-q5IJG1Sw8;

    invoke-direct {p2, p6, p0}, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$BM-aR_9x-HQwklQbF-q5IJG1Sw8;-><init>(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p0, p1, p4, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 206
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-object p0
.end method

.method public static verticalDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 46
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 51
    new-instance p2, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$M1W5_0nLtxa7kJ6rPt4GgJkLm6Q;

    invoke-direct {p2, v0}, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$M1W5_0nLtxa7kJ6rPt4GgJkLm6Q;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, p1, p3, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    new-instance p1, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$lJSFsGcu6hHOWRavbGhsPkhl4Ms;

    invoke-direct {p1, v0}, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$lJSFsGcu6hHOWRavbGhsPkhl4Ms;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    const/4 p2, -0x2

    invoke-virtual {v0, p2, p4, p1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 59
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    .line 60
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    const-wide p3, 0x3feccccccccccccdL    # 0.9

    if-le p1, p0, :cond_1

    int-to-double p0, p0

    goto :goto_0

    :cond_1
    int-to-double p0, p1

    :goto_0
    mul-double p0, p0, p3

    double-to-int p0, p0

    .line 67
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 69
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 71
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method
