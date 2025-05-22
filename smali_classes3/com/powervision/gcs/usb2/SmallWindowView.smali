.class public Lcom/powervision/gcs/usb2/SmallWindowView;
.super Landroid/widget/LinearLayout;
.source "SmallWindowView.java"


# instance fields
.field isRight:Z

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private final screenHeight:I

.field private final screenWidth:I

.field private statusHeight:I

.field private wm:Landroid/view/WindowManager;

.field public wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/usb2/SmallWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/usb2/SmallWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 88
    iput-boolean p2, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->isRight:Z

    .line 60
    invoke-static {p1}, Lcom/powervision/gcs/usb2/SmallWindowView;->getStatusHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->statusHeight:I

    .line 61
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/SmallWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 62
    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->screenHeight:I

    .line 63
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->screenWidth:I

    return-void
.end method

.method public static getStatusHeight(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 77
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private updateViewPosition()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 129
    iget v0, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->mTouchStartX:F

    iget v1, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->x:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 130
    iget v1, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->y:F

    iget v2, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 131
    iget-boolean v2, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->isRight:Z

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v0, v0

    iget v3, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "y :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  dy :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "winParams"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getWm()Landroid/view/WindowManager;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wm:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWmParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "====startY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzq"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setWm(Landroid/view/WindowManager;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wm:Landroid/view/WindowManager;

    return-void
.end method

.method public setWmParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 50
    iput-object p1, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 51
    iget v0, p0, Lcom/powervision/gcs/usb2/SmallWindowView;->screenWidth:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    return-void
.end method
