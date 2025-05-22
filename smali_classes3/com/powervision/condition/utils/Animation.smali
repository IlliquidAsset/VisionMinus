.class public abstract Lcom/powervision/condition/utils/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/condition/utils/Animation$AnimationListener;
    }
.end annotation


# static fields
.field public static final FILL_MODE_BACKWARDS:I = 0x1

.field public static final FILL_MODE_FORWARDS:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2


# instance fields
.field private a:I

.field public glAnimation:Lcom/powervision/condition/utils/GLAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/powervision/condition/utils/Animation;->a:I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    .line 19
    new-instance v0, Lcom/powervision/condition/utils/GLAnimation;

    invoke-direct {v0}, Lcom/powervision/condition/utils/GLAnimation;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Lcom/powervision/condition/utils/GLAnimation;->setFillEnabled(Z)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Lcom/powervision/condition/utils/GLAnimation;->setFillAfter(Z)V

    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Lcom/powervision/condition/utils/GLAnimation;->setFillBefore(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFillMode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/powervision/condition/utils/Animation;->a:I

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/condition/utils/GLAnimation;->getRepeatCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/condition/utils/GLAnimation;->getRepeatMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public setAnimationListener(Lcom/powervision/condition/utils/Animation$AnimationListener;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    invoke-virtual {v0, p1}, Lcom/powervision/condition/utils/GLAnimation;->setAnimationListener(Lcom/powervision/condition/utils/Animation$AnimationListener;)V

    return-void
.end method

.method public abstract setDuration(J)V
.end method

.method public setFillMode(I)V
    .locals 2

    .line 31
    iput p1, p0, Lcom/powervision/condition/utils/Animation;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 33
    invoke-direct {p0, v0}, Lcom/powervision/condition/utils/Animation;->b(Z)V

    .line 34
    invoke-direct {p0, v1}, Lcom/powervision/condition/utils/Animation;->c(Z)V

    .line 35
    invoke-direct {p0, v1}, Lcom/powervision/condition/utils/Animation;->a(Z)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0, v1}, Lcom/powervision/condition/utils/Animation;->b(Z)V

    .line 38
    invoke-direct {p0, v0}, Lcom/powervision/condition/utils/Animation;->a(Z)V

    .line 39
    invoke-direct {p0, v0}, Lcom/powervision/condition/utils/Animation;->c(Z)V

    :goto_0
    return-void
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/powervision/condition/utils/GLAnimation;->setRepeatCount(I)V

    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/powervision/condition/utils/Animation;->glAnimation:Lcom/powervision/condition/utils/GLAnimation;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Lcom/powervision/condition/utils/GLAnimation;->setRepeatMode(I)V

    :cond_0
    return-void
.end method
