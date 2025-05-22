.class Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$3;
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

    .line 169
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method
