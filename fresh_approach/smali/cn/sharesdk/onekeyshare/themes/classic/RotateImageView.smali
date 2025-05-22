.class public Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# instance fields
.field private rotation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 45
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->rotation:F

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->rotation:F

    .line 41
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->invalidate()V

    return-void
.end method
