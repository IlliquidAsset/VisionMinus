.class Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$2;
.super Ljava/lang/Object;
.source "HandheldGeneralFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->showCacheSelectPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$2;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$2;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$2;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$200(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 188
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$2;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$2;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$400(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
