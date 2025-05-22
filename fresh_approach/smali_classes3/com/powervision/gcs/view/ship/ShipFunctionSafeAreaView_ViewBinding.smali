.class public Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;
.super Ljava/lang/Object;
.source "ShipFunctionSafeAreaView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;

.field private view1000:Landroid/view/View;

.field private view1054:Landroid/view/View;

.field private view1055:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->ship_tv_safe_length:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipTvSafeLength\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipTvSafeLength:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/powervision/gcs/R$id;->ship_tv_safe_width:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipTvSafeWidth\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipTvSafeWidth:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/powervision/gcs/R$id;->ship_safe_detail_hide:I

    const-string v1, "field \'shipSafeDetailHide\' and method \'ship_safe_detail_hide\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 38
    sget v1, Lcom/powervision/gcs/R$id;->ship_safe_detail_hide:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'shipSafeDetailHide\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipSafeDetailHide:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->view1054:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v0, Lcom/powervision/gcs/R$id;->ship_safe_detail_send:I

    const-string v1, "field \'shipSafeDetailSend\' and method \'ship_safe_detail_send\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/powervision/gcs/R$id;->ship_safe_detail_send:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'shipSafeDetailSend\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipSafeDetailSend:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->view1055:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$2;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/powervision/gcs/R$id;->ship_detail_close_iv:I

    const-string v1, "field \'detailClose\' and method \'ship_detail_close_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 56
    sget v0, Lcom/powervision/gcs/R$id;->ship_detail_close_iv:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'detailClose\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->detailClose:Landroid/widget/ImageView;

    .line 57
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->view1000:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$3;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;

    .line 73
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipTvSafeLength:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipTvSafeWidth:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipSafeDetailHide:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipSafeDetailSend:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->detailClose:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->view1054:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->view1054:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->view1055:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->view1055:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->view1000:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;->view1000:Landroid/view/View;

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
