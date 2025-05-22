.class public Lcom/powervision/gcs/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010433

    aput v2, v0, v1

    .line 15
    sput-object v0, Lcom/powervision/gcs/utils/ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/powervision/gcs/utils/ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
