.class public Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;
.super Ljava/lang/Object;
.source "ShipFunctionAirlineSche_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

.field private view1000:Landroid/view/View;

.field private view1179:Landroid/view/View;

.field private view117a:Landroid/view/View;

.field private view117b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    .line 38
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_airline_speed:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'airlineSpeed\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->airlineSpeed:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/powervision/gcs/R$id;->threshold_value_bar:I

    const-class v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v2, "field \'thresholdValueBar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 40
    sget v0, Lcom/powervision/gcs/R$id;->ship_detail_close_iv:I

    const-string v1, "field \'detailClose\' and method \'ship_detail_close_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    sget v1, Lcom/powervision/gcs/R$id;->ship_detail_close_iv:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'detailClose\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->detailClose:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view1000:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_pause:I

    const-string v1, "field \'tvFunctionPause\' and method \'tv_function_pause\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    sget v1, Lcom/powervision/gcs/R$id;->tv_function_pause:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvFunctionPause\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->tvFunctionPause:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view117b:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$2;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_hide:I

    const-string v1, "method \'tv_function_hide\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view117a:Landroid/view/View;

    .line 60
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$3;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_delete:I

    const-string v1, "method \'tv_function_delete\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 67
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view1179:Landroid/view/View;

    .line 68
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$4;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    .line 83
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->airlineSpeed:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 85
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->detailClose:Landroid/widget/ImageView;

    .line 86
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->tvFunctionPause:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view1000:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view1000:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view117b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view117b:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view117a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view117a:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view1179:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;->view1179:Landroid/view/View;

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
