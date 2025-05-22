.class public Lcom/powervision/gcs/view/ship/ShipTopSignalView;
.super Landroid/widget/LinearLayout;
.source "ShipTopSignalView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipTopSignalView"

.field public static final TYPE_HIGHLIGHT_TEXT:I = 0x2

.field public static final TYPE_ICON:I = 0x0

.field public static final TYPE_NORMAL_TEXT:I = 0x1


# instance fields
.field ivContent:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdfb
    .end annotation
.end field

.field ivSignal:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe1e
    .end annotation
.end field

.field private mContentSignalIcon:Landroid/graphics/drawable/Drawable;

.field private mContentSignalText:Ljava/lang/String;

.field private mHighlightTextColor:I

.field private mHighlightTextSize:F

.field private mNormalTextColor:I

.field private mNormalTextSize:F

.field private mShowType:I

.field private mTitleSignalIcon:Landroid/graphics/drawable/Drawable;

.field tvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x116b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v0, Lcom/powervision/gcs/R$styleable;->ShipTopSignalView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    sget p2, Lcom/powervision/gcs/R$styleable;->ShipTopSignalView_iconSignal:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mTitleSignalIcon:Landroid/graphics/drawable/Drawable;

    .line 57
    sget p2, Lcom/powervision/gcs/R$styleable;->ShipTopSignalView_iconContent:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mContentSignalIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    sget p2, Lcom/powervision/gcs/R$styleable;->ShipTopSignalView_textContent:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mContentSignalText:Ljava/lang/String;

    .line 59
    sget p2, Lcom/powervision/gcs/R$styleable;->ShipTopSignalView_showType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mShowType:I

    .line 60
    sget p2, Lcom/powervision/gcs/R$styleable;->ShipTopSignalView_normalTextSize:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mNormalTextSize:F

    .line 61
    sget p2, Lcom/powervision/gcs/R$styleable;->ShipTopSignalView_highlightTextSize:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mHighlightTextSize:F

    .line 62
    sget p2, Lcom/powervision/gcs/R$styleable;->ShipTopSignalView_normalTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mNormalTextColor:I

    .line 63
    sget p2, Lcom/powervision/gcs/R$styleable;->ShipTopSignalView_highlightColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mHighlightTextColor:I

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->view_ship_top_signal:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 75
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateTitleSignalIcon()V

    .line 76
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateContentSignalText()V

    .line 77
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateShowType()V

    return-void
.end method

.method private updateContentSignalIcon()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->ivContent:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mContentSignalIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateContentSignalText()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mContentSignalText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateShowType()V
    .locals 4

    .line 122
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mShowType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->ivContent:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mHighlightTextSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mHighlightTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateContentSignalText()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->ivContent:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mNormalTextSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateContentSignalText()V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->ivContent:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateContentSignalIcon()V

    :goto_0
    return-void
.end method

.method private updateTitleSignalIcon()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->ivSignal:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mTitleSignalIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setContentSignalIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mContentSignalIcon:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateContentSignalIcon()V

    return-void
.end method

.method public setContentSignalText(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mContentSignalText:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateContentSignalText()V

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mShowType:I

    .line 83
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateShowType()V

    return-void
.end method

.method public setTitleSignalIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->mTitleSignalIcon:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->updateTitleSignalIcon()V

    return-void
.end method
