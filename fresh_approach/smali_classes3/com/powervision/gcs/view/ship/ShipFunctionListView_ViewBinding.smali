.class public Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;
.super Ljava/lang/Object;
.source "ShipFunctionListView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipFunctionListView;

.field private view1007:Landroid/view/View;

.field private view1008:Landroid/view/View;

.field private view1009:Landroid/view/View;

.field private view100a:Landroid/view/View;

.field private view100b:Landroid/view/View;

.field private view100c:Landroid/view/View;

.field private view100d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView;Landroid/view/View;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionListView;

    .line 44
    sget v0, Lcom/powervision/gcs/R$id;->iv_off_hook:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivOffHook\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->ivOffHook:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvFunctionTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvFunctionTitle:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/powervision/gcs/R$id;->ll_function:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llFunction\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->llFunction:Landroid/widget/LinearLayout;

    .line 47
    sget v0, Lcom/powervision/gcs/R$id;->ll_intelli:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llIntelli\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->llIntelli:Landroid/widget/LinearLayout;

    .line 48
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_list_search_fish:I

    const-string v1, "field \'shipSearchFish\' and method \'ship_function_list_search_fish\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    sget v1, Lcom/powervision/gcs/R$id;->ship_function_list_search_fish:I

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'shipSearchFish\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipSearchFish:Landroid/widget/LinearLayout;

    .line 50
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100b:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_list_off_hook:I

    const-string v1, "field \'shipOffHook\' and method \'ship_function_list_off_hook\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    sget v1, Lcom/powervision/gcs/R$id;->ship_function_list_off_hook:I

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'shipOffHook\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipOffHook:Landroid/widget/LinearLayout;

    .line 59
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view1009:Landroid/view/View;

    .line 60
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$2;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_list_vr:I

    const-string v1, "field \'shipVr\' and method \'ship_function_list_vr\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    sget v1, Lcom/powervision/gcs/R$id;->ship_function_list_vr:I

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'shipVr\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipVr:Landroid/widget/LinearLayout;

    .line 68
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100c:Landroid/view/View;

    .line 69
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$3;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_list_airline_sche:I

    const-string v1, "field \'shipAirLine\' and method \'ship_function_list_airline_sche\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 76
    sget v1, Lcom/powervision/gcs/R$id;->ship_function_list_airline_sche:I

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'shipAirLine\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipAirLine:Landroid/widget/LinearLayout;

    .line 77
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view1007:Landroid/view/View;

    .line 78
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$4;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_scan_area:I

    const-string v1, "field \'shipScanArea\' and method \'ship_function_scan_area\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 85
    sget v1, Lcom/powervision/gcs/R$id;->ship_function_scan_area:I

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'shipScanArea\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipScanArea:Landroid/widget/LinearLayout;

    .line 86
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100d:Landroid/view/View;

    .line 87
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$5;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_list_safe_area:I

    const-string v1, "field \'shipSafeArea\' and method \'ship_function_list_safe_area\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 94
    sget v1, Lcom/powervision/gcs/R$id;->ship_function_list_safe_area:I

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'shipSafeArea\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipSafeArea:Landroid/widget/LinearLayout;

    .line 95
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100a:Landroid/view/View;

    .line 96
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$6;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_list_close:I

    const-string v1, "field \'shipClose\' and method \'ship_function_list_close\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    sget v1, Lcom/powervision/gcs/R$id;->ship_function_list_close:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'shipClose\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipClose:Landroid/widget/ImageView;

    .line 104
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view1008:Landroid/view/View;

    .line 105
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding$7;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v0, Lcom/powervision/gcs/R$id;->ship_iv_airline_scheme:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipIvAirlineScheme\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvAirlineScheme:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/powervision/gcs/R$id;->ship_iv_scan_area:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipIvScanArea\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvScanArea:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/powervision/gcs/R$id;->iv_safe_zone_icon:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipIvSafeZone\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvSafeZone:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/powervision/gcs/R$id;->tv_airline_scheme:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvAirlineScheme\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvAirlineScheme:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/powervision/gcs/R$id;->tv_safe_zone_desc:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvSafeZoneDesc\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvSafeZoneDesc:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/powervision/gcs/R$id;->tv_scan_area:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvScanArea\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvScanArea:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionListView;

    .line 126
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->ivOffHook:Landroid/widget/ImageView;

    .line 127
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvFunctionTitle:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->llFunction:Landroid/widget/LinearLayout;

    .line 129
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->llIntelli:Landroid/widget/LinearLayout;

    .line 130
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipSearchFish:Landroid/widget/LinearLayout;

    .line 131
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipOffHook:Landroid/widget/LinearLayout;

    .line 132
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipVr:Landroid/widget/LinearLayout;

    .line 133
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipAirLine:Landroid/widget/LinearLayout;

    .line 134
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipScanArea:Landroid/widget/LinearLayout;

    .line 135
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipSafeArea:Landroid/widget/LinearLayout;

    .line 136
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipClose:Landroid/widget/ImageView;

    .line 137
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvAirlineScheme:Landroid/widget/ImageView;

    .line 138
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvScanArea:Landroid/widget/ImageView;

    .line 139
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvSafeZone:Landroid/widget/ImageView;

    .line 140
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvAirlineScheme:Landroid/widget/TextView;

    .line 141
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvSafeZoneDesc:Landroid/widget/TextView;

    .line 142
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvScanArea:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100b:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view1009:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view1009:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100c:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view1007:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view1007:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100d:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view100a:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view1008:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView_ViewBinding;->view1008:Landroid/view/View;

    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
