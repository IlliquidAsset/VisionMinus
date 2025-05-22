.class public Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ShipSonarSetFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

.field private view107c:Landroid/view/View;

.field private viewc19:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->depth_max_num:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'depthMaxNum\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxNum:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->depth_min_num:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'depthMinNum\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinNum:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->sonar_layout:I

    const-string v1, "field \'layoutSonar\' and method \'sonar_layout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    sget v1, Lcom/powervision/gcs/R$id;->sonar_layout:I

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'layoutSonar\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->layoutSonar:Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;->view107c:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/powervision/gcs/R$id;->sonar_progress_bar:I

    const-class v1, Landroidx/core/widget/ContentLoadingProgressBar;

    const-string v2, "field \'sonar_progress_bar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 45
    sget v0, Lcom/powervision/gcs/R$id;->sonar_stub:I

    const-class v1, Landroid/view/ViewStub;

    const-string v2, "field \'viewStub\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->viewStub:Landroid/view/ViewStub;

    .line 46
    sget v0, Lcom/powervision/gcs/R$id;->imageView3:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'imageArrow\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->imageArrow:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/powervision/gcs/R$id;->pvw4_mantual_deep:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'manutal_Deep_View\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_Deep_View:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/powervision/gcs/R$id;->depth_min:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'depth_min_text_view\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depth_min_text_view:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/powervision/gcs/R$id;->depth_max:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'depth_max_view\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depth_max_view:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/powervision/gcs/R$id;->auto_deep_toggle:I

    const-string v1, "field \'tg_auto\' and method \'auto_deep_toggle\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    sget v1, Lcom/powervision/gcs/R$id;->auto_deep_toggle:I

    const-class v2, Landroid/widget/ToggleButton;

    const-string v3, "field \'tg_auto\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->tg_auto:Landroid/widget/ToggleButton;

    .line 52
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;->viewc19:Landroid/view/View;

    .line 53
    check-cast v0, Landroid/widget/CompoundButton;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    sget v0, Lcom/powervision/gcs/R$id;->light_toggle:I

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "field \'light_switch\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->light_switch:Landroid/widget/ToggleButton;

    .line 60
    sget v0, Lcom/powervision/gcs/R$id;->manutal_title:I

    const-string v1, "field \'manutal_title\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_title:Landroid/view/View;

    .line 61
    sget v0, Lcom/powervision/gcs/R$id;->manual_content:I

    const-string v1, "field \'manutal_content\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_content:Landroid/view/View;

    .line 62
    sget v0, Lcom/powervision/gcs/R$id;->manutal_divider:I

    const-string v1, "field \'manutal_divider\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_divider:Landroid/view/View;

    .line 63
    sget v0, Lcom/powervision/gcs/R$id;->pvw4_color_content:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'color_content\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->color_content:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_setting_rock_arrow:I

    const-string v1, "field \'maual_arrow\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->maual_arrow:Landroid/view/View;

    .line 65
    sget v0, Lcom/powervision/gcs/R$id;->data_store_toggle:I

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "field \'data_swtich\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_swtich:Landroid/widget/ToggleButton;

    .line 66
    sget v0, Lcom/powervision/gcs/R$id;->data_store_des:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'data_store\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_store:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/powervision/gcs/R$id;->data_store_location:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'data_store_location\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_store_location:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    .line 77
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMaxNum:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depthMinNum:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->layoutSonar:Landroid/widget/LinearLayout;

    .line 80
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->sonar_progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 81
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->viewStub:Landroid/view/ViewStub;

    .line 82
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->imageArrow:Landroid/widget/ImageView;

    .line 83
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_Deep_View:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depth_min_text_view:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->depth_max_view:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->tg_auto:Landroid/widget/ToggleButton;

    .line 87
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->light_switch:Landroid/widget/ToggleButton;

    .line 88
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_title:Landroid/view/View;

    .line 89
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_content:Landroid/view/View;

    .line 90
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->manutal_divider:Landroid/view/View;

    .line 91
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->color_content:Landroid/widget/TextView;

    .line 92
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->maual_arrow:Landroid/view/View;

    .line 93
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_swtich:Landroid/widget/ToggleButton;

    .line 94
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_store:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->data_store_location:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;->view107c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;->view107c:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;->viewc19:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment_ViewBinding;->viewc19:Landroid/view/View;

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
