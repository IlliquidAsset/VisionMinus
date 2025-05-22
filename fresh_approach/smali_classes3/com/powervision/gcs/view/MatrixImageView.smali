.class public Lcom/powervision/gcs/view/MatrixImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "MatrixImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;,
        Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;,
        Lcom/powervision/gcs/view/MatrixImageView$GestureListener;,
        Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MatrixImageView"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageHeight:F

.field private mImageWidth:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mScale:F

.field private moveListener:Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;

.field private singleTapListener:Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 58
    new-instance p1, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;-><init>(Lcom/powervision/gcs/view/MatrixImageView;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/MatrixImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/MatrixImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/powervision/gcs/view/MatrixImageView$GestureListener;

    invoke-direct {v2, p0, p1}, Lcom/powervision/gcs/view/MatrixImageView$GestureListener;-><init>(Lcom/powervision/gcs/view/MatrixImageView;Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView;->mGestureDetector:Landroid/view/GestureDetector;

    const/high16 p1, -0x1000000

    .line 62
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/MatrixImageView;->setBackgroundColor(I)V

    .line 64
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance p1, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;-><init>(Lcom/powervision/gcs/view/MatrixImageView;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/MatrixImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/MatrixImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/view/MatrixImageView$GestureListener;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/MatrixImageView$GestureListener;-><init>(Lcom/powervision/gcs/view/MatrixImageView;Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;)V

    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/MatrixImageView;->mGestureDetector:Landroid/view/GestureDetector;

    const/high16 p1, -0x1000000

    .line 51
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/MatrixImageView;->setBackgroundColor(I)V

    .line 53
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/MatrixImageView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/MatrixImageView;)Landroid/view/GestureDetector;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/gcs/view/MatrixImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/MatrixImageView;)Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/gcs/view/MatrixImageView;->moveListener:Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/MatrixImageView;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/powervision/gcs/view/MatrixImageView;->mImageWidth:F

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/MatrixImageView;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/powervision/gcs/view/MatrixImageView;->mScale:F

    return p0
.end method

.method static synthetic access$500(Lcom/powervision/gcs/view/MatrixImageView;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/powervision/gcs/view/MatrixImageView;->mImageHeight:F

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/gcs/view/MatrixImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/gcs/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/view/MatrixImageView;)Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/gcs/view/MatrixImageView;->singleTapListener:Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;

    return-object p0
.end method

.method private initData()V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 102
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 104
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/powervision/gcs/view/MatrixImageView;->mImageWidth:F

    .line 105
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MatrixImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x5

    aget v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    const/4 v3, 0x4

    aget v3, v0, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/powervision/gcs/view/MatrixImageView;->mImageHeight:F

    .line 106
    aget v0, v0, v2

    iput v0, p0, Lcom/powervision/gcs/view/MatrixImageView;->mScale:F

    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result p1

    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MatrixImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/powervision/gcs/view/MatrixImageView$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/MatrixImageView$1;-><init>(Lcom/powervision/gcs/view/MatrixImageView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView;->initData()V

    :goto_0
    return-void
.end method

.method public setOnMovingListener(Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView;->moveListener:Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;

    return-void
.end method

.method public setOnSingleTapListener(Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView;->singleTapListener:Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;

    return-void
.end method
