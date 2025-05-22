.class public Lcom/powervision/gcs/view/SonarParamQuickSetView_ViewBinding;
.super Ljava/lang/Object;
.source "SonarParamQuickSetView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/SonarParamQuickSetView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/SonarParamQuickSetView_ViewBinding;-><init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView_ViewBinding;->target:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->param_layout_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'paramLayoutTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramLayoutTitle:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->param_close:I

    const-string v1, "field \'paramClose\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramClose:Landroid/view/View;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->param_sensor_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'paramSensorTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorTitle:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->param_sensor_content:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'paramSensorContent\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorContent:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->param_sensor_min:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'paramSensorMin\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorMin:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->sensor_seek_bar:I

    const-class v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v2, "field \'sensorSeekBar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->sensorSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 36
    sget v0, Lcom/powervision/gcs/R$id;->param_sensor_max:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'paramSensorMax\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorMax:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/powervision/gcs/R$id;->param_sensor_layout:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'paramSensorLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorLayout:Landroid/widget/LinearLayout;

    .line 38
    sget v0, Lcom/powervision/gcs/R$id;->show_fish_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'showFishTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->showFishTitle:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/powervision/gcs/R$id;->show_fish_content:I

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "field \'showFishContent\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->showFishContent:Landroid/widget/ToggleButton;

    .line 40
    sget v0, Lcom/powervision/gcs/R$id;->mute_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'muteTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->muteTitle:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/powervision/gcs/R$id;->mute_content:I

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "field \'muteContent\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->muteContent:Landroid/widget/ToggleButton;

    .line 42
    sget v0, Lcom/powervision/gcs/R$id;->left_layout:I

    const-class v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "field \'leftLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->leftLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    sget v0, Lcom/powervision/gcs/R$id;->right_layout:I

    const-string v1, "field \'rightLayout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->rightLayout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView_ViewBinding;->target:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView_ViewBinding;->target:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    .line 53
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramLayoutTitle:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramClose:Landroid/view/View;

    .line 55
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorTitle:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorContent:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorMin:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->sensorSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 59
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorMax:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorLayout:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->showFishTitle:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->showFishContent:Landroid/widget/ToggleButton;

    .line 63
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->muteTitle:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->muteContent:Landroid/widget/ToggleButton;

    .line 65
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->leftLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 66
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->rightLayout:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
