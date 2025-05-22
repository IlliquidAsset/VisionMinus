.class Lme/yokeyword/indexablerv/IndexableLayout$1;
.super Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;
.source "IndexableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yokeyword/indexablerv/IndexableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver<",
        "Lme/yokeyword/indexablerv/EntityWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/yokeyword/indexablerv/IndexableLayout;


# direct methods
.method constructor <init>(Lme/yokeyword/indexablerv/IndexableLayout;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$1;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-direct {p0}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdd(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p2, Lme/yokeyword/indexablerv/EntityWrapper;

    check-cast p3, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lme/yokeyword/indexablerv/IndexableLayout$1;->onAdd(ZLme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)V

    return-void
.end method

.method public onAdd(ZLme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$1;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$1;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lme/yokeyword/indexablerv/RealAdapter;->addHeaderFooterData(ZLme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)V

    return-void
.end method

.method public onChanged()V
    .locals 1

    .line 100
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$1;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$1;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/RealAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onRemove(ZLjava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p2, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-virtual {p0, p1, p2}, Lme/yokeyword/indexablerv/IndexableLayout$1;->onRemove(ZLme/yokeyword/indexablerv/EntityWrapper;)V

    return-void
.end method

.method public onRemove(ZLme/yokeyword/indexablerv/EntityWrapper;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$1;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$1;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/indexablerv/RealAdapter;->removeHeaderFooterData(ZLme/yokeyword/indexablerv/EntityWrapper;)V

    return-void
.end method
