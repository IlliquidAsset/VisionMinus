.class Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;
.super Ljava/lang/Object;
.source "SlowMotionSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;->this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 86
    sget v0, Lcom/powervision/handheld/R$id;->image_fps_set:I

    if-ne p1, v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;->this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->access$000(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;)Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 88
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;->this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->access$000(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;)Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;->close()V

    goto :goto_0

    .line 90
    :cond_0
    sget v0, Lcom/powervision/handheld/R$id;->layout_fhd_120:I

    if-ne p1, v0, :cond_2

    .line 91
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;->this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->access$000(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;)Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;->this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->access$000(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;)Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;->select(I)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;->this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setSelect(I)V

    goto :goto_0

    .line 95
    :cond_2
    sget v0, Lcom/powervision/handheld/R$id;->layout_hd_120:I

    if-ne p1, v0, :cond_4

    .line 96
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;->this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->access$000(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;)Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;

    move-result-object p1

    const/4 v0, 0x7

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;->this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->access$000(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;)Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;->select(I)V

    .line 99
    :cond_3
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;->this$0:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setSelect(I)V

    :cond_4
    :goto_0
    return-void
.end method
