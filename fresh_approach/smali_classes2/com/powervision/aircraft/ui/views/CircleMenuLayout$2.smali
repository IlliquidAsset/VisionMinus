.class Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;
.super Ljava/lang/Object;
.source "CircleMenuLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoScroll(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 321
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->access$100(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getCurPosition()I

    move-result p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->access$200(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getCurPosition()I

    move-result p1

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    iget v0, v0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->curPosition:I

    if-eq v0, p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    iput p1, v0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->curPosition:I

    .line 325
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->access$400(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    iget-boolean v1, v1, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->access$300(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;->autoScrollBack(IZI)V

    :cond_1
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
