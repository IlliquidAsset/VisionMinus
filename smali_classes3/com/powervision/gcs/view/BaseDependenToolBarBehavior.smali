.class public abstract Lcom/powervision/gcs/view/BaseDependenToolBarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "BaseDependenToolBarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private lastY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 17
    iput v0, p0, Lcom/powervision/gcs/view/BaseDependenToolBarBehavior;->lastY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 17
    iput p1, p0, Lcom/powervision/gcs/view/BaseDependenToolBarBehavior;->lastY:F

    return-void
.end method


# virtual methods
.method abstract childChange(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;F)V"
        }
    .end annotation
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 28
    instance-of p1, p3, Lcom/google/android/material/appbar/AppBarLayout;

    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 33
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p1

    .line 35
    iget v0, p0, Lcom/powervision/gcs/view/BaseDependenToolBarBehavior;->lastY:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sub-float v0, p1, v0

    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 40
    invoke-virtual {p0, p2, v0}, Lcom/powervision/gcs/view/BaseDependenToolBarBehavior;->childChange(Landroid/view/View;F)V

    const/4 p2, 0x1

    .line 43
    :goto_0
    iput p1, p0, Lcom/powervision/gcs/view/BaseDependenToolBarBehavior;->lastY:F

    return p2
.end method
