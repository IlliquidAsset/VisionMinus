.class Lcom/mob/tools/gui/SmoothScroller$LinearACCInterpolator;
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
    name = "LinearACCInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/SmoothScroller$1;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mob/tools/gui/SmoothScroller$LinearACCInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    mul-float p1, p1, p1

    return p1
.end method
