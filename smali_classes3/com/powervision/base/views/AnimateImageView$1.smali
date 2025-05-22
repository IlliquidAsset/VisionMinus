.class Lcom/powervision/base/views/AnimateImageView$1;
.super Ljava/lang/Object;
.source "AnimateImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/AnimateImageView;->setImageResource(IZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/AnimateImageView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/AnimateImageView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/powervision/base/views/AnimateImageView$1;->this$0:Lcom/powervision/base/views/AnimateImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "000000000000"

    const-string v0, "onAnimationStart: animate"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
