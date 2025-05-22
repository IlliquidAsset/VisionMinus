.class public Lcom/powervision/gcs/view/ConnectGuideTile;
.super Landroid/widget/LinearLayout;
.source "ConnectGuideTile.java"


# instance fields
.field private mGuideCover:I

.field private mMessage:Ljava/lang/String;

.field private mShowCover:Z

.field private mTitle:Ljava/lang/String;

.field private tv_connect_guide_cover:Landroid/widget/ImageView;

.field private tv_connect_guide_message:Landroid/widget/TextView;

.field private tv_connect_guide_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ConnectGuideTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object v0, Lcom/powervision/gcs/R$styleable;->ConnectGuideTile:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    sget p2, Lcom/powervision/gcs/R$styleable;->ConnectGuideTile_guide_tile_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->mTitle:Ljava/lang/String;

    .line 41
    sget p2, Lcom/powervision/gcs/R$styleable;->ConnectGuideTile_guide_tile_message:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->mMessage:Ljava/lang/String;

    .line 42
    sget p2, Lcom/powervision/gcs/R$styleable;->ConnectGuideTile_guide_show_cover:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->mShowCover:Z

    .line 43
    sget p2, Lcom/powervision/gcs/R$styleable;->ConnectGuideTile_guide_show_cover_res:I

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_connect_guide_remote_wifi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->mGuideCover:I

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-direct {p0}, Lcom/powervision/gcs/view/ConnectGuideTile;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ConnectGuideTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->view_connect_guide_tile:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget v0, Lcom/powervision/gcs/R$id;->tv_connect_guide_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ConnectGuideTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_title:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/powervision/gcs/R$id;->tv_connect_guide_message:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ConnectGuideTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_message:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/powervision/gcs/R$id;->tv_connect_guide_cover:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ConnectGuideTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_cover:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_message:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_message:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_message:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->mShowCover:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_cover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_cover:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ConnectGuideTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->mGuideCover:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ConnectGuideTile;->tv_connect_guide_cover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
