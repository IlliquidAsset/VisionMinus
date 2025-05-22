.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;
.super Ljava/lang/Object;
.source "ShipCommonControlFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemotePairViewHolder"
.end annotation


# instance fields
.field private et_psn:Landroid/widget/EditText;

.field private iv_clear:Landroid/widget/ImageView;

.field private pair_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

.field private rl_pair:Landroid/widget/RelativeLayout;

.field private text_pair:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

.field private v_ll_scan_layout:Landroid/widget/LinearLayout;

.field private v_tv_psn_title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;)V
    .locals 0

    .line 597
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;)V
    .locals 0

    .line 597
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->startPair()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;Landroid/view/View;)V
    .locals 0

    .line 597
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;)Landroidx/core/widget/ContentLoadingProgressBar;
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->pair_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    return-object p0
.end method

.method private onBindView(Landroid/view/View;)V
    .locals 2

    .line 611
    sget v0, Lcom/powervision/gcs/R$id;->v_ll_scan_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->v_ll_scan_layout:Landroid/widget/LinearLayout;

    .line 612
    sget v0, Lcom/powervision/gcs/R$id;->v_tv_psn_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->v_tv_psn_title:Landroid/widget/TextView;

    .line 613
    sget v0, Lcom/powervision/gcs/R$id;->et_psn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->et_psn:Landroid/widget/EditText;

    .line 614
    sget v0, Lcom/powervision/gcs/R$id;->iv_clear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->iv_clear:Landroid/widget/ImageView;

    .line 615
    sget v0, Lcom/powervision/gcs/R$id;->rl_pair:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->rl_pair:Landroid/widget/RelativeLayout;

    .line 616
    sget v0, Lcom/powervision/gcs/R$id;->text_pair:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->text_pair:Landroid/widget/TextView;

    .line 617
    sget v0, Lcom/powervision/gcs/R$id;->pair_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->pair_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 619
    invoke-virtual {p1}, Landroidx/core/widget/ContentLoadingProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$color;->gcs_firmware_update_sure_bg:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 620
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->iv_clear:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$RemotePairViewHolder$HOpAQ8rnfx2vBPukxZzYh5fJagA;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$RemotePairViewHolder$HOpAQ8rnfx2vBPukxZzYh5fJagA;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->v_ll_scan_layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$RemotePairViewHolder$ZF_XgFHa47C4KTY-OQoQ5Y1rubM;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$RemotePairViewHolder$ZF_XgFHa47C4KTY-OQoQ5Y1rubM;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->rl_pair:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$RemotePairViewHolder$mvSyqbaz95B--V5osG1gLBG6exc;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$RemotePairViewHolder$mvSyqbaz95B--V5osG1gLBG6exc;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startPair()V
    .locals 4

    .line 665
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->et_psn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v0}, Lcom/powervision/gcs/utils/PsnUtils;->isW4Psn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->et_psn:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->red_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 672
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->v_tv_psn_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_17:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->v_tv_psn_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->red_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->v_tv_psn_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_15:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->v_tv_psn_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$color;->white:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 681
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->et_psn:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$color;->pvw4_blue:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDO_VEH_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPair: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShipCommonControlFr"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->setSSID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEtPsn()Ljava/lang/String;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->et_psn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onBindView$0$ShipCommonControlFragment$RemotePairViewHolder(Landroid/view/View;)V
    .locals 1

    .line 621
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->et_psn:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onBindView$1$ShipCommonControlFragment$RemotePairViewHolder(Landroid/view/View;)V
    .locals 1

    .line 627
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->startCaptureActivity(Landroid/app/Activity;I)V

    return-void
.end method

.method public synthetic lambda$onBindView$2$ShipCommonControlFragment$RemotePairViewHolder(Landroid/view/View;)V
    .locals 0

    .line 631
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->pair_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 632
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->pair_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {p1}, Landroidx/core/widget/ContentLoadingProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 642
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 643
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->startPair()V

    goto :goto_0

    .line 645
    :cond_1
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_126:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    :goto_0
    return-void
.end method

.method public setEtPsn(Ljava/lang/String;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->et_psn:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
