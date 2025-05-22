.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ShipCommonControlFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

.field private viewf57:Landroid/view/View;

.field private viewf75:Landroid/view/View;

.field private viewf7c:Landroid/view/View;

.field private viewf87:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->rl_remote_pair_layout:I

    const-string v1, "field \'rlRemotePairLayout\' and method \'rl_remote_pair_layout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    sget v1, Lcom/powervision/gcs/R$id;->rl_remote_pair_layout:I

    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlRemotePairLayout\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlRemotePairLayout:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf7c:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/powervision/gcs/R$id;->tv_remote_pair:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvRemotePair\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->tvRemotePair:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/powervision/gcs/R$id;->remote_pair_arrow:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'remotePairArrow\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairArrow:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/powervision/gcs/R$id;->rock_mode:I

    const-string v1, "field \'rockMode\' and method \'rock_mode\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/powervision/gcs/R$id;->rock_mode:I

    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rockMode\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockMode:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf87:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/powervision/gcs/R$id;->rock_mode_tv:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'rockModeTv\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeTv:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/powervision/gcs/R$id;->remote_mode_tv:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'remoteModeTv\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeTv:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/powervision/gcs/R$id;->remote_mode:I

    const-string v1, "field \'remoteMode\' and method \'remote_mode\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    sget v1, Lcom/powervision/gcs/R$id;->remote_mode:I

    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'remoteMode\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteMode:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf57:Landroid/view/View;

    .line 60
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/powervision/gcs/R$id;->rl_confirm_layout:I

    const-string v1, "field \'rlConfirmLayout\' and method \'rock_confirm_mode\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    sget v1, Lcom/powervision/gcs/R$id;->rl_confirm_layout:I

    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlConfirmLayout\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlConfirmLayout:Landroid/widget/RelativeLayout;

    .line 68
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf75:Landroid/view/View;

    .line 69
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding$4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/powervision/gcs/R$id;->rl_confirm_rock_arrow:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'confirmArrow\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->confirmArrow:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/powervision/gcs/R$id;->rl_confirm:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'rlConfirm\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlConfirm:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_setting_rock_arrow:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'rockArrow\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockArrow:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcom/powervision/gcs/R$id;->ship_common_setting_remote_arrow:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'remoteArrow\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteArrow:Landroid/widget/ImageView;

    .line 79
    sget v0, Lcom/powervision/gcs/R$id;->rock_mode_confirm:I

    const-class v1, Landroid/view/ViewStub;

    const-string v2, "field \'rockConfirmVS\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockConfirmVS:Landroid/view/ViewStub;

    .line 80
    sget v0, Lcom/powervision/gcs/R$id;->rock_mode_vs:I

    const-class v1, Landroid/view/ViewStub;

    const-string v2, "field \'rockModeVS\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeVS:Landroid/view/ViewStub;

    .line 81
    sget v0, Lcom/powervision/gcs/R$id;->remote_mode_vs:I

    const-class v1, Landroid/view/ViewStub;

    const-string v2, "field \'remoteModeVS\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeVS:Landroid/view/ViewStub;

    .line 82
    sget v0, Lcom/powervision/gcs/R$id;->remote_pair_vs:I

    const-class v1, Landroid/view/ViewStub;

    const-string v2, "field \'remotePairVS\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairVS:Landroid/view/ViewStub;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    .line 92
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlRemotePairLayout:Landroid/widget/RelativeLayout;

    .line 93
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->tvRemotePair:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairArrow:Landroid/widget/ImageView;

    .line 95
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockMode:Landroid/widget/RelativeLayout;

    .line 96
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeTv:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeTv:Landroid/widget/TextView;

    .line 98
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteMode:Landroid/widget/RelativeLayout;

    .line 99
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlConfirmLayout:Landroid/widget/RelativeLayout;

    .line 100
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->confirmArrow:Landroid/widget/ImageView;

    .line 101
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlConfirm:Landroid/widget/TextView;

    .line 102
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockArrow:Landroid/widget/ImageView;

    .line 103
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteArrow:Landroid/widget/ImageView;

    .line 104
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockConfirmVS:Landroid/view/ViewStub;

    .line 105
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeVS:Landroid/view/ViewStub;

    .line 106
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeVS:Landroid/view/ViewStub;

    .line 107
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairVS:Landroid/view/ViewStub;

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf7c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf7c:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf87:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf87:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf57:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf57:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf75:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment_ViewBinding;->viewf75:Landroid/view/View;

    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
