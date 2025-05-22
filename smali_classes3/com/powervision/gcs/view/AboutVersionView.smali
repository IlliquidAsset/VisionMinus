.class public Lcom/powervision/gcs/view/AboutVersionView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AboutVersionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;
    }
.end annotation


# instance fields
.field public onAboutVersionListener:Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;

.field private tv_title:Landroid/widget/TextView;

.field private tv_update:Landroid/widget/TextView;

.field private tv_version:Landroid/widget/TextView;

.field private v_divider:Landroid/view/View;

.field private v_upgrade_indicator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/AboutVersionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/powervision/gcs/view/AboutVersionView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcom/powervision/gcs/view/AboutVersionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->view_about_version:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    sget v0, Lcom/powervision/gcs/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/AboutVersionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_title:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/powervision/gcs/R$id;->tv_update:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/AboutVersionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/powervision/gcs/R$id;->tv_version:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/AboutVersionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_version:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/powervision/gcs/R$id;->v_upgrade_indicator:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/AboutVersionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->v_upgrade_indicator:Landroid/view/View;

    .line 41
    sget v0, Lcom/powervision/gcs/R$id;->v_divider:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/AboutVersionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->v_divider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getOnAboutVersionListener()Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->onAboutVersionListener:Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;

    return-object v0
.end method

.method public hideDivider()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->v_divider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideDownload()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->MediaLib_14:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/-$$Lambda$AboutVersionView$xw-6PZRRm8TexYVZ8ONTLZCvfP4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/-$$Lambda$AboutVersionView$xw-6PZRRm8TexYVZ8ONTLZCvfP4;-><init>(Lcom/powervision/gcs/view/AboutVersionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public hideIndicator()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->v_upgrade_indicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 115
    sget v0, Lcom/powervision/gcs/R$id;->version_loading:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/AboutVersionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideUpdate()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$hideDownload$2$AboutVersionView(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/powervision/gcs/view/AboutVersionView;->onAboutVersionListener:Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/powervision/gcs/view/AboutVersionView;->onAboutVersionListener:Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;

    invoke-interface {p1}, Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;->onDownload()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showDownload$1$AboutVersionView(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/powervision/gcs/view/AboutVersionView;->onAboutVersionListener:Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/powervision/gcs/view/AboutVersionView;->onAboutVersionListener:Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;

    invoke-interface {p1}, Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;->onDownload()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showUpdate$0$AboutVersionView(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/powervision/gcs/view/AboutVersionView;->onAboutVersionListener:Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/powervision/gcs/view/AboutVersionView;->onAboutVersionListener:Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;

    invoke-interface {p1}, Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;->onUpgrade()V

    :cond_0
    return-void
.end method

.method public setOnAboutVersionListener(Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/powervision/gcs/view/AboutVersionView;->onAboutVersionListener:Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_version:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDownload()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->MediaLib_14:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/-$$Lambda$AboutVersionView$aQUCSDpVeETRGhR30ZlYHwHyDa0;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/-$$Lambda$AboutVersionView$aQUCSDpVeETRGhR30ZlYHwHyDa0;-><init>(Lcom/powervision/gcs/view/AboutVersionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showIndicator()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->v_upgrade_indicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 111
    sget v0, Lcom/powervision/gcs/R$id;->version_loading:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/AboutVersionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showUpdate()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_80:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/view/AboutVersionView;->tv_update:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/-$$Lambda$AboutVersionView$tb4j7Nl7na841IG0PATztW22jHg;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/-$$Lambda$AboutVersionView$tb4j7Nl7na841IG0PATztW22jHg;-><init>(Lcom/powervision/gcs/view/AboutVersionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
