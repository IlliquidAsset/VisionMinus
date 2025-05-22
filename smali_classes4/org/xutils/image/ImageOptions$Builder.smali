.class public Lorg/xutils/image/ImageOptions$Builder;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/image/ImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected options:Lorg/xutils/image/ImageOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-virtual {p0}, Lorg/xutils/image/ImageOptions$Builder;->newImageOptions()V

    return-void
.end method


# virtual methods
.method public build()Lorg/xutils/image/ImageOptions;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    return-object v0
.end method

.method protected newImageOptions()V
    .locals 1

    .line 297
    new-instance v0, Lorg/xutils/image/ImageOptions;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions;-><init>()V

    iput-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1402(Lorg/xutils/image/ImageOptions;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    return-object p0
.end method

.method public setAutoRotate(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$602(Lorg/xutils/image/ImageOptions;Z)Z

    return-object p0
.end method

.method public setCircular(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$502(Lorg/xutils/image/ImageOptions;Z)Z

    return-object p0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$702(Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public setCrop(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$202(Lorg/xutils/image/ImageOptions;Z)Z

    return-object p0
.end method

.method public setFadeIn(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1302(Lorg/xutils/image/ImageOptions;Z)Z

    return-object p0
.end method

.method public setFailureDrawable(Landroid/graphics/drawable/Drawable;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1202(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setFailureDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1102(Lorg/xutils/image/ImageOptions;I)I

    return-object p0
.end method

.method public setForceLoadingDrawable(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1702(Lorg/xutils/image/ImageOptions;Z)Z

    return-object p0
.end method

.method public setIgnoreGif(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$802(Lorg/xutils/image/ImageOptions;Z)Z

    return-object p0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1602(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1002(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setLoadingDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$902(Lorg/xutils/image/ImageOptions;I)I

    return-object p0
.end method

.method public setParamsBuilder(Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1902(Lorg/xutils/image/ImageOptions;Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object p0
.end method

.method public setPlaceholderScaleType(Landroid/widget/ImageView$ScaleType;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1502(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public setRadius(I)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$302(Lorg/xutils/image/ImageOptions;I)I

    return-object p0
.end method

.method public setSize(II)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$002(Lorg/xutils/image/ImageOptions;I)I

    .line 309
    iget-object p1, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {p1, p2}, Lorg/xutils/image/ImageOptions;->access$102(Lorg/xutils/image/ImageOptions;I)I

    return-object p0
.end method

.method public setSquare(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$402(Lorg/xutils/image/ImageOptions;Z)Z

    return-object p0
.end method

.method public setUseMemCache(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1802(Lorg/xutils/image/ImageOptions;Z)Z

    return-object p0
.end method
