.class public Lcom/powervision/gcs/view/ship/ShipFunctionListView;
.super Landroid/widget/RelativeLayout;
.source "ShipFunctionListView.java"

# interfaces
.implements Lcom/powervision/gcs/ui/interfaces/ShipFunctionStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;
    }
.end annotation


# instance fields
.field ivOffHook:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe0e
    .end annotation
.end field

.field llFunction:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe6f
    .end annotation
.end field

.field llIntelli:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe80
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsOpenSafeZone:Z

.field private mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

.field shipAirLine:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1007
    .end annotation
.end field

.field shipClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1008
    .end annotation
.end field

.field shipIvAirlineScheme:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1019
    .end annotation
.end field

.field shipIvSafeZone:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe1b
    .end annotation
.end field

.field shipIvScanArea:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x101d
    .end annotation
.end field

.field private shipMainActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field shipOffHook:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1009
    .end annotation
.end field

.field shipSafeArea:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x100a
    .end annotation
.end field

.field shipScanArea:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x100d
    .end annotation
.end field

.field shipSearchFish:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x100b
    .end annotation
.end field

.field shipVr:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x100c
    .end annotation
.end field

.field tvAirlineScheme:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1155
    .end annotation
.end field

.field tvFunctionTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x117c
    .end annotation
.end field

.field tvSafeZoneDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x119e
    .end annotation
.end field

.field tvScanArea:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x119f
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/ShipFunctionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/ship/ShipFunctionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    sget p2, Lcom/powervision/gcs/R$layout;->ship_function_list_view:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 83
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipMainActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 106
    invoke-virtual {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->setChangeStateListener(Lcom/powervision/gcs/ui/interfaces/ShipFunctionStateListener;)V

    .line 107
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipMainActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->setOnRemoveContentListener(Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;)V

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->setScanEnable(Z)V

    return-void
.end method


# virtual methods
.method public onChangeHookState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->ivOffHook:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_off_hook_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->ivOffHook:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_function_list_off_hook:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onChangeSafeZoneState(Z)V
    .locals 1

    .line 231
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mIsOpenSafeZone:Z

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvSafeZoneDesc:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_AI_51:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvSafeZone:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_open_safe_zone:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvSafeZoneDesc:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_AI_46:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvSafeZone:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_function_list_safe_area:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setOnRemoveContentListener(Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

    return-void
.end method

.method public setScanEnable(Z)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipScanArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvScanArea:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_function_scan_area:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_function_scan_area_disable:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvScanArea:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$color;->white:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$color;->color_50_white:I

    :goto_1
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleAndLayout(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvFunctionTitle:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->ship_function_list_more_function_menu:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->llFunction:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->llIntelli:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->llFunction:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->llIntelli:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public ship_function_list_airline_sche()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1007
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;->showFunctionDetail(Lcom/powervision/gcs/view/ship/ShipFunctionListView;I)V

    return-void
.end method

.method public ship_function_list_close()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1008
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

    invoke-interface {v0, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;->onRemoveContent(Lcom/powervision/gcs/view/ship/ShipFunctionListView;)V

    return-void
.end method

.method public ship_function_list_off_hook()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1009
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;->showFunctionDetail(Lcom/powervision/gcs/view/ship/ShipFunctionListView;I)V

    return-void
.end method

.method public ship_function_list_safe_area()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x100a
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mIsOpenSafeZone:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

    const/16 v1, 0x88

    invoke-interface {v0, p0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;->showFunctionDetail(Lcom/powervision/gcs/view/ship/ShipFunctionListView;I)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;->showFunctionDetail(Lcom/powervision/gcs/view/ship/ShipFunctionListView;I)V

    :goto_0
    return-void
.end method

.method public ship_function_list_search_fish()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x100b
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;->showFunctionDetail(Lcom/powervision/gcs/view/ship/ShipFunctionListView;I)V

    return-void
.end method

.method public ship_function_list_vr()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x100c
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;->showFunctionDetail(Lcom/powervision/gcs/view/ship/ShipFunctionListView;I)V

    return-void
.end method

.method public ship_function_scan_area()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x100d
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView$IRemoveContentListener;->showFunctionDetail(Lcom/powervision/gcs/view/ship/ShipFunctionListView;I)V

    return-void
.end method

.method public updateSafeAreaState(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 208
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mIsOpenSafeZone:Z

    .line 209
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvSafeZoneDesc:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_AI_51:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvSafeZone:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_open_safe_zone:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 212
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->mIsOpenSafeZone:Z

    .line 213
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->tvSafeZoneDesc:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_AI_46:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->shipIvSafeZone:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_function_list_safe_area:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
