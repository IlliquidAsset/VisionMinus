.class Lcom/powervision/base/views/ScrollPickerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/ScrollPickerView;->autoScrollFast(IJFLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/ScrollPickerView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/ScrollPickerView;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/powervision/base/views/ScrollPickerView$2;->this$0:Lcom/powervision/base/views/ScrollPickerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 539
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 540
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView$2;->this$0:Lcom/powervision/base/views/ScrollPickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/base/views/ScrollPickerView;->access$302(Lcom/powervision/base/views/ScrollPickerView;Z)Z

    return-void
.end method
