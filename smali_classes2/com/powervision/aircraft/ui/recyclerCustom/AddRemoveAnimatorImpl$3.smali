.class Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$3;
.super Ljava/lang/Object;
.source "AddRemoveAnimatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;Ljava/util/ArrayList;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$3;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 153
    iget-object v2, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$3;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    invoke-virtual {v2, v1}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$3;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->mAdditionsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
