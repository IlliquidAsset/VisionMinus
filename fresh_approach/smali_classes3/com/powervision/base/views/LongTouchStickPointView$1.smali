.class Lcom/powervision/base/views/LongTouchStickPointView$1;
.super Ljava/lang/Object;
.source "LongTouchStickPointView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/LongTouchStickPointView;->initAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/LongTouchStickPointView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/LongTouchStickPointView;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$1;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$1;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$002(Lcom/powervision/base/views/LongTouchStickPointView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
