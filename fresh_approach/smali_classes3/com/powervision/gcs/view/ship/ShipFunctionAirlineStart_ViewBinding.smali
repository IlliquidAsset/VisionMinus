.class public Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding;
.super Ljava/lang/Object;
.source "ShipFunctionAirlineStart_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;

.field private view1000:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->ship_detail_close_iv:I

    const-string v1, "field \'detailClose\' and method \'ship_detail_close_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->ship_detail_close_iv:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'detailClose\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->detailClose:Landroid/widget/ImageView;

    .line 32
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding;->view1000:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->detailClose:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding;->view1000:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart_ViewBinding;->view1000:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
