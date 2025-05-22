.class public Lorg/xutils/image/ImageOptions;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/ImageOptions$Builder;,
        Lorg/xutils/image/ImageOptions$ParamsBuilder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/xutils/image/ImageOptions;


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private autoRotate:Z

.field private circular:Z

.field private compress:Z

.field private config:Landroid/graphics/Bitmap$Config;

.field private crop:Z

.field private fadeIn:Z

.field private failureDrawable:Landroid/graphics/drawable/Drawable;

.field private failureDrawableId:I

.field private forceLoadingDrawable:Z

.field private height:I

.field private ignoreGif:Z

.field private imageScaleType:Landroid/widget/ImageView$ScaleType;

.field private loadingDrawable:Landroid/graphics/drawable/Drawable;

.field private loadingDrawableId:I

.field private maxHeight:I

.field private maxWidth:I

.field private paramsBuilder:Lorg/xutils/image/ImageOptions$ParamsBuilder;

.field private placeholderScaleType:Landroid/widget/ImageView$ScaleType;

.field private radius:I

.field private square:Z

.field private useMemCache:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lorg/xutils/image/ImageOptions;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 24
    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 25
    iput v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    .line 26
    iput v0, p0, Lorg/xutils/image/ImageOptions;->height:I

    .line 27
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    .line 29
    iput v0, p0, Lorg/xutils/image/ImageOptions;->radius:I

    .line 30
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->square:Z

    .line 31
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    .line 32
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    .line 34
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    .line 37
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->ignoreGif:Z

    .line 41
    iput v0, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    .line 42
    iput v0, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    const/4 v2, 0x0

    .line 43
    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->forceLoadingDrawable:Z

    .line 47
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->placeholderScaleType:Landroid/widget/ImageView$ScaleType;

    .line 48
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 50
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->fadeIn:Z

    .line 51
    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->animation:Landroid/view/animation/Animation;

    .line 55
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->useMemCache:Z

    return-void
.end method

.method static synthetic access$002(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->width:I

    return p1
.end method

.method static synthetic access$1002(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$102(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->height:I

    return p1
.end method

.method static synthetic access$1102(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    return p1
.end method

.method static synthetic access$1202(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->fadeIn:Z

    return p1
.end method

.method static synthetic access$1402(Lorg/xutils/image/ImageOptions;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->placeholderScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic access$1702(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->forceLoadingDrawable:Z

    return p1
.end method

.method static synthetic access$1802(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->useMemCache:Z

    return p1
.end method

.method static synthetic access$1902(Lorg/xutils/image/ImageOptions;Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->paramsBuilder:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object p1
.end method

.method static synthetic access$202(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    return p1
.end method

.method static synthetic access$302(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->radius:I

    return p1
.end method

.method static synthetic access$402(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    return p1
.end method

.method static synthetic access$502(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    return p1
.end method

.method static synthetic access$602(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    return p1
.end method

.method static synthetic access$702(Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    return-object p1
.end method

.method static synthetic access$802(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->ignoreGif:Z

    return p1
.end method

.method static synthetic access$902(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    check-cast p1, Lorg/xutils/image/ImageOptions;

    .line 240
    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->maxWidth:I

    if-eq v2, v3, :cond_2

    return v1

    .line 241
    :cond_2
    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->maxHeight:I

    if-eq v2, v3, :cond_3

    return v1

    .line 242
    :cond_3
    iget v2, p0, Lorg/xutils/image/ImageOptions;->width:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->width:I

    if-eq v2, v3, :cond_4

    return v1

    .line 243
    :cond_4
    iget v2, p0, Lorg/xutils/image/ImageOptions;->height:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->height:I

    if-eq v2, v3, :cond_5

    return v1

    .line 244
    :cond_5
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->crop:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 245
    :cond_6
    iget v2, p0, Lorg/xutils/image/ImageOptions;->radius:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->radius:I

    if-eq v2, v3, :cond_7

    return v1

    .line 246
    :cond_7
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->square:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->square:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 247
    :cond_8
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->circular:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 248
    :cond_9
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 249
    :cond_a
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->compress:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 250
    :cond_b
    iget-object v2, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    if-ne v2, p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_d
    :goto_1
    return v1
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 197
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    .line 148
    iget v0, p0, Lorg/xutils/image/ImageOptions;->height:I

    return v0
.end method

.method public getImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 186
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getMaxHeight()I
    .locals 1

    .line 140
    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 136
    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    return v0
.end method

.method public getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->paramsBuilder:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object v0
.end method

.method public getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->placeholderScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 156
    iget v0, p0, Lorg/xutils/image/ImageOptions;->radius:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 144
    iget v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 256
    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    mul-int/lit8 v0, v0, 0x1f

    .line 257
    iget v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 258
    iget v1, p0, Lorg/xutils/image/ImageOptions;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget v1, p0, Lorg/xutils/image/ImageOptions;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 261
    iget v1, p0, Lorg/xutils/image/ImageOptions;->radius:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 262
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 263
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 264
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 265
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 266
    iget-object v1, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isAutoRotate()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    return v0
.end method

.method public isCircular()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    return v0
.end method

.method public isCompress()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    return v0
.end method

.method public isCrop()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    return v0
.end method

.method public isFadeIn()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->fadeIn:Z

    return v0
.end method

.method public isForceLoadingDrawable()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->forceLoadingDrawable:Z

    return v0
.end method

.method public isIgnoreGif()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->ignoreGif:Z

    return v0
.end method

.method public isSquare()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->square:Z

    return v0
.end method

.method public isUseMemCache()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->useMemCache:Z

    return v0
.end method

.method final optimizeMaxSize(Landroid/widget/ImageView;)V
    .locals 7

    .line 63
    iget v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    if-lez v0, :cond_0

    iget v1, p0, Lorg/xutils/image/ImageOptions;->height:I

    if-lez v1, :cond_0

    .line 64
    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 65
    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    return-void

    .line 69
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenWidth()I

    move-result v0

    .line 70
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenHeight()I

    move-result v1

    .line 72
    sget-object v2, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    if-ne p0, v2, :cond_1

    mul-int/lit8 v0, v0, 0x3

    .line 73
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    mul-int/lit8 v1, v1, 0x3

    .line 74
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/xutils/image/ImageOptions;->height:I

    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    return-void

    .line 78
    :cond_1
    iget v2, p0, Lorg/xutils/image/ImageOptions;->width:I

    const/4 v3, 0x0

    if-gez v2, :cond_2

    mul-int/lit8 v2, v0, 0x3

    .line 79
    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 80
    iput-boolean v3, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    .line 82
    :cond_2
    iget v2, p0, Lorg/xutils/image/ImageOptions;->height:I

    if-gez v2, :cond_3

    mul-int/lit8 v2, v1, 0x3

    .line 83
    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 84
    iput-boolean v3, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    :cond_3
    if-nez p1, :cond_4

    .line 87
    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    if-gtz v2, :cond_4

    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    if-gtz v2, :cond_4

    .line 88
    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 89
    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    goto :goto_4

    .line 91
    :cond_4
    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 92
    iget v3, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    if-eqz p1, :cond_a

    .line 95
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_8

    const/4 v5, -0x2

    if-gtz v2, :cond_6

    .line 99
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v6, :cond_5

    .line 100
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    iget v6, p0, Lorg/xutils/image/ImageOptions;->width:I

    if-gtz v6, :cond_6

    .line 102
    iput v2, p0, Lorg/xutils/image/ImageOptions;->width:I

    goto :goto_0

    .line 104
    :cond_5
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v5, :cond_6

    .line 105
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    :cond_6
    :goto_0
    if-gtz v3, :cond_8

    .line 110
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v6, :cond_7

    .line 111
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    iget v4, p0, Lorg/xutils/image/ImageOptions;->height:I

    if-gtz v4, :cond_8

    .line 113
    iput v3, p0, Lorg/xutils/image/ImageOptions;->height:I

    goto :goto_1

    .line 115
    :cond_7
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v5, :cond_8

    .line 116
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 121
    :cond_8
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_a

    if-gtz v2, :cond_9

    .line 122
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v2

    :cond_9
    if-gtz v3, :cond_a

    .line 123
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v3

    :cond_a
    if-gtz v2, :cond_b

    goto :goto_2

    :cond_b
    move v0, v2

    :goto_2
    if-gtz v3, :cond_c

    goto :goto_3

    :cond_c
    move v1, v3

    .line 130
    :goto_3
    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 131
    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget v2, p0, Lorg/xutils/image/ImageOptions;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget v2, p0, Lorg/xutils/image/ImageOptions;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget v2, p0, Lorg/xutils/image/ImageOptions;->radius:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v2, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
