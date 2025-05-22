.class public Lcom/powervision/gcs/view/ship/ShipFunctionHideView;
.super Landroid/widget/RelativeLayout;
.source "ShipFunctionHideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipFunctionHideView$IShowContentListener;
    }
.end annotation


# instance fields
.field private ivFunctionShrinkView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/powervision/gcs/view/ship/ShipFunctionHideView$IShowContentListener;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/ShipFunctionHideView;)Lcom/powervision/gcs/view/ship/ShipFunctionHideView$IShowContentListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionHideView$IShowContentListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/ShipFunctionHideView;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->mType:I

    return p0
.end method

.method private initView()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->ship_function_hide_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    sget v1, Lcom/powervision/gcs/R$id;->iv_function_shrink_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->ivFunctionShrinkView:Landroid/widget/ImageView;

    .line 46
    new-instance v2, Lcom/powervision/gcs/view/ship/ShipFunctionHideView$1;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionHideView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getImageType()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->mType:I

    return v0
.end method

.method public setImageType(I)V
    .locals 1

    .line 74
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->mType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->ivFunctionShrinkView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 88
    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_safe_area_shrink:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->ivFunctionShrinkView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 83
    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_scan_area_shrink:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->ivFunctionShrinkView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 78
    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_airline_scheme_shrink:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOnShowContentListener(Lcom/powervision/gcs/view/ship/ShipFunctionHideView$IShowContentListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->mListener:Lcom/powervision/gcs/view/ship/ShipFunctionHideView$IShowContentListener;

    return-void
.end method
