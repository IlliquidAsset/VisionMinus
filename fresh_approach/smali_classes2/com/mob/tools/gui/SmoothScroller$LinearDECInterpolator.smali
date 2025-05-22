.class Lcom/mob/tools/gui/SmoothScroller$LinearDECInterpolator;
.super Ljava/lang/Object;
.source "SmoothScroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinearDECInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/SmoothScroller$1;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/mob/tools/gui/SmoothScroller$LinearDECInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr v0, p1

    mul-float v0, v0, p1

    return v0
.end method
