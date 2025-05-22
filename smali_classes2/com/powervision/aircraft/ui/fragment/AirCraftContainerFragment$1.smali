.class Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$1;
.super Ljava/lang/Object;
.source "AirCraftContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapseCloseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapseCloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapseCloseListener;->close()V

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Lcom/powervision/base/views/NoScrollViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/views/NoScrollViewPager;->removeAllViews()V

    return-void
.end method
