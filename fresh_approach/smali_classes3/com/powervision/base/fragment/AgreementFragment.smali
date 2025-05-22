.class public Lcom/powervision/base/fragment/AgreementFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AgreementFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;
    }
.end annotation


# instance fields
.field private onFragmentActionListener:Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;

.field private spanAgreement:Landroid/text/style/ClickableSpan;

.field private spanPolicy:Landroid/text/style/ClickableSpan;

.field private spannableString:Landroid/text/SpannableString;

.field private tv_accept:Landroid/widget/TextView;

.field private tv_agreement:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 122
    new-instance v0, Lcom/powervision/base/fragment/AgreementFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/fragment/AgreementFragment$1;-><init>(Lcom/powervision/base/fragment/AgreementFragment;)V

    iput-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->spanAgreement:Landroid/text/style/ClickableSpan;

    .line 136
    new-instance v0, Lcom/powervision/base/fragment/AgreementFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/base/fragment/AgreementFragment$2;-><init>(Lcom/powervision/base/fragment/AgreementFragment;)V

    iput-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->spanPolicy:Landroid/text/style/ClickableSpan;

    return-void
.end method

.method private initAgreement()V
    .locals 3

    .line 93
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/powervision/base/fragment/AgreementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/base/R$string;->APP_Login_57:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->spannableString:Landroid/text/SpannableString;

    .line 94
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageisChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/powervision/base/fragment/AgreementFragment;->initChinaAgreement()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageIsJapan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/powervision/base/fragment/AgreementFragment;->initJapanAgreement()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/powervision/base/fragment/AgreementFragment;->initEnglishAgreement()V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->tv_agreement:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/base/fragment/AgreementFragment;->spannableString:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->tv_agreement:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 103
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->tv_agreement:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private initChinaAgreement()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/base/fragment/AgreementFragment;->spanAgreement:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x16

    const/16 v3, 0x1a

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 108
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/base/fragment/AgreementFragment;->spanPolicy:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x1b

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private initEnglishAgreement()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/base/fragment/AgreementFragment;->spanAgreement:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x2f

    const/16 v3, 0x3d

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/base/fragment/AgreementFragment;->spanPolicy:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x42

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private initJapanAgreement()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/base/fragment/AgreementFragment;->spanAgreement:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x17

    const/16 v3, 0x1d

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 113
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/base/fragment/AgreementFragment;->spanPolicy:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x1e

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->tv_accept:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/base/fragment/-$$Lambda$AgreementFragment$KaFNvlpY7UBW2LNZiD7vLqQUlKQ;

    invoke-direct {v1, p0}, Lcom/powervision/base/fragment/-$$Lambda$AgreementFragment$KaFNvlpY7UBW2LNZiD7vLqQUlKQ;-><init>(Lcom/powervision/base/fragment/AgreementFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/powervision/base/fragment/AgreementFragment;
    .locals 2

    .line 45
    new-instance v0, Lcom/powervision/base/fragment/AgreementFragment;

    invoke-direct {v0}, Lcom/powervision/base/fragment/AgreementFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    invoke-virtual {v0, v1}, Lcom/powervision/base/fragment/AgreementFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getOnFragmentActionListener()Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment;->onFragmentActionListener:Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;

    return-object v0
.end method

.method public synthetic lambda$initListener$0$AgreementFragment(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/powervision/base/fragment/AgreementFragment;->onFragmentActionListener:Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;

    if-eqz p1, :cond_0

    .line 87
    invoke-interface {p1}, Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;->onAcceptListener()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/powervision/base/fragment/AgreementFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/powervision/base/fragment/AgreementFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 58
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/powervision/base/fragment/AgreementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/powervision/base/fragment/AgreementFragment;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 76
    sget p3, Lcom/powervision/base/R$layout;->fragment_agreement:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    sget p2, Lcom/powervision/base/R$id;->tv_agreement:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/base/fragment/AgreementFragment;->tv_agreement:Landroid/widget/TextView;

    .line 78
    sget p2, Lcom/powervision/base/R$id;->tv_accept:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/base/fragment/AgreementFragment;->tv_accept:Landroid/widget/TextView;

    .line 79
    invoke-direct {p0}, Lcom/powervision/base/fragment/AgreementFragment;->initListener()V

    .line 80
    invoke-direct {p0}, Lcom/powervision/base/fragment/AgreementFragment;->initAgreement()V

    return-object p1
.end method

.method public setOnFragmentActionListener(Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/powervision/base/fragment/AgreementFragment;->onFragmentActionListener:Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;

    return-void
.end method
