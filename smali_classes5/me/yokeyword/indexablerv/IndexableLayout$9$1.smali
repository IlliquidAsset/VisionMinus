.class Lme/yokeyword/indexablerv/IndexableLayout$9$1;
.super Ljava/lang/Object;
.source "IndexableLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/indexablerv/IndexableLayout$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/yokeyword/indexablerv/IndexableLayout$9;

.field final synthetic val$datas:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lme/yokeyword/indexablerv/IndexableLayout$9;Ljava/util/ArrayList;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->this$1:Lme/yokeyword/indexablerv/IndexableLayout$9;

    iput-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->val$datas:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 645
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->this$1:Lme/yokeyword/indexablerv/IndexableLayout$9;

    iget-object v0, v0, Lme/yokeyword/indexablerv/IndexableLayout$9;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->val$datas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/RealAdapter;->setDatas(Ljava/util/ArrayList;)V

    .line 646
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->this$1:Lme/yokeyword/indexablerv/IndexableLayout$9;

    iget-object v0, v0, Lme/yokeyword/indexablerv/IndexableLayout$9;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$200(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexBar;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->this$1:Lme/yokeyword/indexablerv/IndexableLayout$9;

    iget-object v1, v1, Lme/yokeyword/indexablerv/IndexableLayout$9;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$100(Lme/yokeyword/indexablerv/IndexableLayout;)Z

    move-result v1

    iget-object v2, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->this$1:Lme/yokeyword/indexablerv/IndexableLayout$9;

    iget-object v2, v2, Lme/yokeyword/indexablerv/IndexableLayout$9;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v2}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lme/yokeyword/indexablerv/RealAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/yokeyword/indexablerv/IndexBar;->setDatas(ZLjava/util/ArrayList;)V

    .line 648
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->this$1:Lme/yokeyword/indexablerv/IndexableLayout$9;

    iget-object v0, v0, Lme/yokeyword/indexablerv/IndexableLayout$9;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$800(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexableAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->getIndexCallback()Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->this$1:Lme/yokeyword/indexablerv/IndexableLayout$9;

    iget-object v0, v0, Lme/yokeyword/indexablerv/IndexableLayout$9;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$800(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexableAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->getIndexCallback()Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->val$datas:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;->onFinished(Ljava/util/List;)V

    .line 652
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$9$1;->this$1:Lme/yokeyword/indexablerv/IndexableLayout$9;

    iget-object v0, v0, Lme/yokeyword/indexablerv/IndexableLayout$9;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$300(Lme/yokeyword/indexablerv/IndexableLayout;)V

    return-void
.end method
