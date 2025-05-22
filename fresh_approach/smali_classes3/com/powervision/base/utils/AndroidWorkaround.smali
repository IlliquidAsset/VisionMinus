.class public Lcom/powervision/base/utils/AndroidWorkaround;
.super Ljava/lang/Object;
.source "AndroidWorkaround.java"


# instance fields
.field private frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private usableHeightPrevious:I

.field private usableWidthPrevious:I


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/powervision/base/utils/AndroidWorkaround;->mChildOfContent:Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/powervision/base/utils/-$$Lambda$AndroidWorkaround$3oKnoeto0C_c4BQwndbsoOt47DM;

    invoke-direct {v0, p0}, Lcom/powervision/base/utils/-$$Lambda$AndroidWorkaround$3oKnoeto0C_c4BQwndbsoOt47DM;-><init>(Lcom/powervision/base/utils/AndroidWorkaround;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    iget-object p1, p0, Lcom/powervision/base/utils/AndroidWorkaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/utils/AndroidWorkaround;->frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public static assistActivity(Landroid/view/View;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/powervision/base/utils/AndroidWorkaround;

    invoke-direct {v0, p0}, Lcom/powervision/base/utils/AndroidWorkaround;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 6

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_showNavigationBar"

    const-string v1, "bool"

    const-string v2, "android"

    .line 70
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 75
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 76
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "qemu.hw.mainkeys"

    aput-object v5, v4, v1

    .line 77
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "0"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, p0

    :goto_1
    move p0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return p0
.end method

.method private computeUsableRect()Landroid/graphics/Rect;
    .locals 2

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/powervision/base/utils/AndroidWorkaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static synthetic lambda$3oKnoeto0C_c4BQwndbsoOt47DM(Lcom/powervision/base/utils/AndroidWorkaround;)V
    .locals 0

    invoke-direct {p0}, Lcom/powervision/base/utils/AndroidWorkaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method private possiblyResizeChildOfContent()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/powervision/base/utils/AndroidWorkaround;->computeUsableRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 39
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_0

    .line 40
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/powervision/base/utils/AndroidWorkaround;->usableHeightPrevious:I

    if-eq v1, v2, :cond_1

    .line 42
    iget-object v1, p0, Lcom/powervision/base/utils/AndroidWorkaround;->frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    iget-object v1, p0, Lcom/powervision/base/utils/AndroidWorkaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 44
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/powervision/base/utils/AndroidWorkaround;->usableHeightPrevious:I

    goto :goto_0

    .line 47
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/powervision/base/utils/AndroidWorkaround;->usableWidthPrevious:I

    if-eq v1, v2, :cond_1

    .line 49
    iget-object v1, p0, Lcom/powervision/base/utils/AndroidWorkaround;->frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    iget-object v1, p0, Lcom/powervision/base/utils/AndroidWorkaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 51
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/powervision/base/utils/AndroidWorkaround;->usableWidthPrevious:I

    :cond_1
    :goto_0
    return-void
.end method
