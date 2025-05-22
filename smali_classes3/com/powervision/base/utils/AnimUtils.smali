.class public final Lcom/powervision/base/utils/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimation(Landroid/content/Context;Landroid/widget/ImageView;IIZ)Lcom/powervision/base/utils/FrameAnimation;
    .locals 6

    .line 270
    invoke-static {p0, p2}, Lcom/powervision/base/utils/AnimUtils;->getAnimationResources(Landroid/content/Context;I)[I

    move-result-object v3

    .line 271
    new-instance p2, Lcom/powervision/base/utils/FrameAnimation;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/powervision/base/utils/FrameAnimation;-><init>(Landroid/content/Context;Landroid/widget/ImageView;[IIZ)V

    return-object p2
.end method

.method public static doHideOrShowBottomView(Landroid/view/View;)V
    .locals 3

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 164
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-static {v2, v2, v2, v1}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-static {v2, v2, v1, v2}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static doHideOrShowBottomView(ZLandroid/view/View;)V
    .locals 4

    const/high16 v0, 0x3fc00000    # 1.5f

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 180
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-static {v2, v2, v2, v0}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    .line 183
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-static {v2, v2, v0, v2}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static getAnimationResources(Landroid/content/Context;I)[I
    .locals 3

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    .line 280
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, -0x1

    .line 282
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static hideOrShowAlphaLeftView(Landroid/view/View;I)V
    .locals 7

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    const/high16 v2, -0x41000000    # -0.5f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3dcccccd    # 0.1f

    .line 140
    invoke-static/range {v1 .. v6}, Lcom/powervision/base/utils/AnimUtils;->translateAlphaAnimation(FFFFFF)Landroid/view/animation/AnimationSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 143
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, -0x41000000    # -0.5f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3f4ccccd    # 0.8f

    .line 144
    invoke-static/range {v0 .. v5}, Lcom/powervision/base/utils/AnimUtils;->translateAlphaAnimation(FFFFFF)Landroid/view/animation/AnimationSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static hideOrShowBottomView(Landroid/view/View;I)V
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-static {v2, v2, v2, v1}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-static {v2, v2, v1, v2}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static hideOrShowCustomTopView(Landroid/view/View;IF)V
    .locals 2

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    neg-float p1, p2

    .line 223
    invoke-static {v1, v1, v1, p1}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 225
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    neg-float p1, p2

    .line 226
    invoke-static {v1, v1, p1, v1}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static hideOrShowLeftView(Landroid/view/View;I)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, -0x40400000    # -1.5f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "\u5f55\u4e2d\u62cd\u3002\u3002\u3002"

    .line 111
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-static {v2, v1, v2, v2}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-static {v1, v2, v2, v2}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static hideOrShowLeftViews(Landroid/view/View;I)V
    .locals 4

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, -0x40400000    # -1.5f

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_0

    .line 125
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-static {v3, v1, v3, v3}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-static {v1, v3, v3, v3}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static hideOrShowRightView(Landroid/view/View;I)V
    .locals 3

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 194
    invoke-static {v2, v1, v2, v2}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 196
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-static {v1, v2, v2, v2}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static hideOrShowRightViews(Landroid/view/View;I)V
    .locals 4

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_0

    .line 207
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-static {v3, v1, v3, v3}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 210
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-static {v1, v3, v3, v3}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static hideOrShowTopView(Landroid/view/View;I)V
    .locals 3

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-static {v2, v2, v2, v1}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-static {v2, v2, v1, v2}, Lcom/powervision/base/utils/AnimUtils;->translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static playRotateAnimation(Landroid/view/View;JII)V
    .locals 9

    .line 240
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 241
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 244
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 245
    invoke-virtual {v1, p3}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 246
    invoke-virtual {v1, p4}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x10a0006

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 249
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static showAlphaAnimation(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 258
    sget v0, Lcom/powervision/base/R$anim;->anim_alpha_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    .line 259
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 260
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static startAnimation(Landroid/content/Context;Landroid/widget/ImageView;IIZ)Lcom/powervision/base/utils/FrameAnimation;
    .locals 0

    .line 264
    invoke-static {p0, p2}, Lcom/powervision/base/utils/AnimUtils;->getAnimationResources(Landroid/content/Context;I)[I

    move-result-object p0

    .line 265
    new-instance p2, Lcom/powervision/base/utils/FrameAnimation;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/powervision/base/utils/FrameAnimation;-><init>(Landroid/widget/ImageView;[IIZ)V

    return-object p2
.end method

.method public static startAnimation(Landroid/view/View;I)V
    .locals 1

    .line 36
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static startCircleAnimation(Landroid/view/View;IIFF)V
    .locals 0

    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    const-wide/16 p1, 0x320

    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 53
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static translateAlphaAnimation(FFFFFF)Landroid/view/animation/AnimationSet;
    .locals 10

    .line 76
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    move v2, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 80
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p4, p5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 81
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 82
    invoke-virtual {p1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 p0, -0x1

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    const-wide/16 p2, 0x12c

    .line 85
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object p1
.end method

.method public static translateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;
    .locals 10

    .line 59
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    move v2, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 63
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const p1, 0x3f666666    # 0.9f

    const p2, 0x3dcccccd    # 0.1f

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 64
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 65
    invoke-virtual {p1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 p2, 0x12c

    .line 67
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 68
    invoke-virtual {v9, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v9
.end method
