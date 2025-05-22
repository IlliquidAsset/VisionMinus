.class public final Lcom/powervision/base/utils/WheelUtils;
.super Ljava/lang/Object;
.source "WheelUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLayoutParams(II)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 33
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0

    .line 35
    :cond_0
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method static getViewCenterX(Landroid/view/View;)I
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    add-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x1

    return p0
.end method

.method static getViewCenterY(Landroid/view/View;)I
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    add-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static radianToRadio(IF)D
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    float-to-double p0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method
