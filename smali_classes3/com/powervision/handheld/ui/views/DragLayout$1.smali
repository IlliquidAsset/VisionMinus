.class Lcom/powervision/handheld/ui/views/DragLayout$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/views/DragLayout;->initDragHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/views/DragLayout;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/views/DragLayout;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/DragLayout$1;->this$0:Lcom/powervision/handheld/ui/views/DragLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3

    .line 63
    iget-object p3, p0, Lcom/powervision/handheld/ui/views/DragLayout$1;->this$0:Lcom/powervision/handheld/ui/views/DragLayout;

    invoke-virtual {p3}, Lcom/powervision/handheld/ui/views/DragLayout;->getPaddingLeft()I

    move-result p3

    .line 65
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/DragLayout$1;->this$0:Lcom/powervision/handheld/ui/views/DragLayout;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/views/DragLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    const-string p1, "getNavigationBarHeight == ==================="

    .line 66
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNavigationBarHeight == "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/DragLayout$1;->this$0:Lcom/powervision/handheld/ui/views/DragLayout;

    invoke-static {v1}, Lcom/powervision/handheld/ui/views/DragLayout;->access$000(Lcom/powervision/handheld/ui/views/DragLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/handheld/ui/views/DragLayout;->hasNavBar(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 77
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3

    .line 82
    iget-object p3, p0, Lcom/powervision/handheld/ui/views/DragLayout$1;->this$0:Lcom/powervision/handheld/ui/views/DragLayout;

    invoke-virtual {p3}, Lcom/powervision/handheld/ui/views/DragLayout;->getPaddingTop()I

    move-result p3

    .line 83
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/DragLayout$1;->this$0:Lcom/powervision/handheld/ui/views/DragLayout;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/views/DragLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    const-string p1, "getNavigationBarHeight = ==================="

    .line 84
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNavigationBarHeight = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/DragLayout$1;->this$0:Lcom/powervision/handheld/ui/views/DragLayout;

    invoke-static {v1}, Lcom/powervision/handheld/ui/views/DragLayout;->access$000(Lcom/powervision/handheld/ui/views/DragLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/handheld/ui/views/DragLayout;->hasNavBar(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 90
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
