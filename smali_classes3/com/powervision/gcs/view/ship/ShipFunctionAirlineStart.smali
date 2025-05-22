.class public Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;
.super Landroid/widget/RelativeLayout;
.source "ShipFunctionAirlineStart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart$IRemoveContentListener;
    }
.end annotation


# instance fields
.field detailClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1000
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart$IRemoveContentListener;

.field private shipMainActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget p2, Lcom/powervision/gcs/R$layout;->ship_function_detail_airline_start:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 38
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 40
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->shipMainActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 46
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->setOnRemoveContentListener(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart$IRemoveContentListener;)V

    return-void
.end method


# virtual methods
.method public setOnRemoveContentListener(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart$IRemoveContentListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart$IRemoveContentListener;

    return-void
.end method

.method public ship_detail_close_iv()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1000
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart$IRemoveContentListener;

    invoke-interface {v0, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart$IRemoveContentListener;->onRemoveRouteStartContent(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineStart;)V

    return-void
.end method
