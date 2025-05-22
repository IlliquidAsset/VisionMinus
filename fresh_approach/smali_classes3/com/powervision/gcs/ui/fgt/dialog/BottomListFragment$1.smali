.class Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$1;
.super Ljava/lang/Object;
.source "BottomListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->access$000(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;)Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->access$000(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;)Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
