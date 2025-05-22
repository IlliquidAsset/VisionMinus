.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ShipCommonAboutFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

.field private viewbc2:Landroid/view/View;

.field private viewf31:Landroid/view/View;

.field private viewf32:Landroid/view/View;

.field private viewfc0:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->about_layout:I

    const-string v1, "field \'aboutLayout\' and method \'about_layout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    sget v1, Lcom/powervision/gcs/R$id;->about_layout:I

    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'aboutLayout\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->aboutLayout:Landroid/widget/RelativeLayout;

    .line 35
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewbc2:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcom/powervision/gcs/R$id;->self_check_layout:I

    const-string v1, "field \'selfCheckLayout\' and method \'self_check_layout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    sget v1, Lcom/powervision/gcs/R$id;->self_check_layout:I

    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'selfCheckLayout\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->selfCheckLayout:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewfc0:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget v0, Lcom/powervision/gcs/R$id;->toggle_button:I

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "field \'button\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->button:Landroid/widget/ToggleButton;

    .line 52
    sget v0, Lcom/powervision/gcs/R$id;->toggle_guide:I

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "field \'toggleGuide\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->toggleGuide:Landroid/widget/ToggleButton;

    .line 53
    sget v0, Lcom/powervision/gcs/R$id;->pvsonar_common_unit_tv:I

    const-string v1, "field \'mTextUnit\' and method \'pvsonar_common_unit_tv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    sget v1, Lcom/powervision/gcs/R$id;->pvsonar_common_unit_tv:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextUnit\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mTextUnit:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewf32:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v0, Lcom/powervision/gcs/R$id;->pvsonar_common_clear_mode:I

    const-string v1, "field \'pvsonarCommonClearMode\' and method \'pvsonar_common_clear_mode\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 63
    sget v0, Lcom/powervision/gcs/R$id;->pvsonar_common_clear_mode:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'pvsonarCommonClearMode\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->pvsonarCommonClearMode:Landroid/widget/TextView;

    .line 64
    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewf31:Landroid/view/View;

    .line 65
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    .line 80
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->aboutLayout:Landroid/widget/RelativeLayout;

    .line 81
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->selfCheckLayout:Landroid/widget/RelativeLayout;

    .line 82
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->button:Landroid/widget/ToggleButton;

    .line 83
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->toggleGuide:Landroid/widget/ToggleButton;

    .line 84
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mTextUnit:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->pvsonarCommonClearMode:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewbc2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewbc2:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewfc0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewfc0:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewf32:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewf32:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewf31:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;->viewf31:Landroid/view/View;

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
