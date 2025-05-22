.class Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;
.super Ljava/lang/Object;
.source "CircleMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->addMenuItems(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

.field final synthetic val$j:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;I)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->access$400(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->access$500(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->val$j:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getDelayAngle(I)V

    .line 458
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->access$400(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->val$j:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    iget-boolean v2, v2, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-static {v3}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->access$300(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;->itemClick(Landroid/view/View;IZI)V

    :cond_0
    return-void
.end method
