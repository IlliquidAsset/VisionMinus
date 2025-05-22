.class public Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;
.super Ljava/lang/Object;
.source "ShipCommonSettingView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

.field private view101e:Landroid/view/View;

.field private viewf70:Landroid/view/View;

.field private viewff7:Landroid/view/View;

.field private viewff8:Landroid/view/View;

.field private viewff9:Landroid/view/View;

.field private viewffb:Landroid/view/View;

.field private viewfff:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView;Landroid/view/View;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    .line 47
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_control_btn:I

    const-string v1, "field \'shipCommonControlBtn\' and method \'ship_common_control_btn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    sget v1, Lcom/powervision/gcs/R$id;->ship_common_control_btn:I

    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'shipCommonControlBtn\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonControlBtn:Landroid/widget/RadioButton;

    .line 49
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewff9:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_battey_btn:I

    const-string v1, "field \'shipCommonBatteyBtn\' and method \'ship_common_battey_btn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    sget v1, Lcom/powervision/gcs/R$id;->ship_common_battey_btn:I

    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'shipCommonBatteyBtn\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonBatteyBtn:Landroid/widget/RadioButton;

    .line 58
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewff8:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$2;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_maintenance_btn:I

    const-string v1, "field \'shipCommonMaintenanceBtn\' and method \'ship_common_maintenance_btn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 66
    sget v1, Lcom/powervision/gcs/R$id;->ship_common_maintenance_btn:I

    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'shipCommonMaintenanceBtn\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonMaintenanceBtn:Landroid/widget/RadioButton;

    .line 67
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewffb:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$3;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_about_btn:I

    const-string v1, "field \'shipCommonAboutBtn\' and method \'ship_common_about_btn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 75
    sget v1, Lcom/powervision/gcs/R$id;->ship_common_about_btn:I

    const-class v2, Lcom/powervision/gcs/view/RedPointRadioButton;

    const-string v3, "field \'shipCommonAboutBtn\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/RedPointRadioButton;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutBtn:Lcom/powervision/gcs/view/RedPointRadioButton;

    .line 76
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewff7:Landroid/view/View;

    .line 77
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$4;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_menu:I

    const-class v1, Landroid/widget/RadioGroup;

    const-string v2, "field \'shipCommonMenu\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonMenu:Landroid/widget/RadioGroup;

    .line 84
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_detail:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'shipCommonDetail\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonDetail:Landroid/widget/RelativeLayout;

    .line 85
    sget v0, Lcom/powervision/gcs/R$id;->common_root:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'commonRoot\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->commonRoot:Landroid/widget/FrameLayout;

    .line 86
    sget v0, Lcom/powervision/gcs/R$id;->ritht_cancel_bt:I

    const-string v1, "field \'rithtCancelBt\' and method \'ritht_cancel_bt\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 87
    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->rithtCancelBt:Landroid/view/View;

    .line 88
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewf70:Landroid/view/View;

    .line 89
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$5;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v0, Lcom/powervision/gcs/R$id;->content_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'contentTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->contentTitle:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/powervision/gcs/R$id;->ship_left_back:I

    const-string v1, "field \'shipLeftBack\' and method \'ship_left_back\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    sget v1, Lcom/powervision/gcs/R$id;->ship_left_back:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'shipLeftBack\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipLeftBack:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->view101e:Landroid/view/View;

    .line 99
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$6;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_sonar_btn:I

    const-string v1, "method \'ship_common_sonar_btn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 106
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewfff:Landroid/view/View;

    .line 107
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$7;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    .line 122
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonControlBtn:Landroid/widget/RadioButton;

    .line 123
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonBatteyBtn:Landroid/widget/RadioButton;

    .line 124
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonMaintenanceBtn:Landroid/widget/RadioButton;

    .line 125
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutBtn:Lcom/powervision/gcs/view/RedPointRadioButton;

    .line 126
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonMenu:Landroid/widget/RadioGroup;

    .line 127
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonDetail:Landroid/widget/RelativeLayout;

    .line 128
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->commonRoot:Landroid/widget/FrameLayout;

    .line 129
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->rithtCancelBt:Landroid/view/View;

    .line 130
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->contentTitle:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipLeftBack:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewff9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewff9:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewff8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewff8:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewffb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewffb:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewff7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewff7:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewf70:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewf70:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->view101e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->view101e:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewfff:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;->viewfff:Landroid/view/View;

    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
