.class public Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BottomListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    .line 23
    sget v0, Lcom/powervision/gcs/R$id;->listView:I

    const-class v1, Landroid/widget/ListView;

    const-string v2, "field \'listView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->listView:Landroid/widget/ListView;

    .line 24
    sget v0, Lcom/powervision/gcs/R$id;->text_tips:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textTips\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->textTips:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/powervision/gcs/R$id;->ll_tips:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llTips\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->llTips:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    .line 35
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->listView:Landroid/widget/ListView;

    .line 36
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->textTips:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->llTips:Landroid/widget/LinearLayout;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
