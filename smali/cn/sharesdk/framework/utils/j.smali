.class public Lcn/sharesdk/framework/utils/j;
.super Ljava/lang/Object;
.source "ViewRound.java"


# direct methods
.method public static a(FI)Landroid/graphics/drawable/ShapeDrawable;
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [F

    new-array v2, v0, [F

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    add-float/2addr v4, p0

    .line 15
    aput v4, v1, v3

    .line 16
    aput p0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method
