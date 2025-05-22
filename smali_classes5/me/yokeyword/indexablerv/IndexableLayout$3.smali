.class Lme/yokeyword/indexablerv/IndexableLayout$3;
.super Lme/yokeyword/indexablerv/database/DataObserver;
.source "IndexableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/indexablerv/IndexableLayout;->setAdapter(Lme/yokeyword/indexablerv/IndexableAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yokeyword/indexablerv/IndexableLayout;

.field final synthetic val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;


# direct methods
.method constructor <init>(Lme/yokeyword/indexablerv/IndexableLayout;Lme/yokeyword/indexablerv/IndexableAdapter;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    iput-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-direct {p0}, Lme/yokeyword/indexablerv/database/DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 162
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/RealAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onInited()V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lme/yokeyword/indexablerv/IndexableLayout$3;->onSetListener(I)V

    .line 157
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->onDataChanged()V

    return-void
.end method

.method public onSetListener(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemTitleClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemTitleClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/RealAdapter;->setOnItemTitleClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;)V

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 173
    :cond_2
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemTitleLongClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemTitleLongClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/RealAdapter;->setOnItemTitleLongClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;)V

    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_5

    .line 176
    :cond_4
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemContentClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 177
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemContentClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/RealAdapter;->setOnItemContentClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;)V

    :cond_5
    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    if-nez p1, :cond_7

    .line 179
    :cond_6
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemContentLongClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 180
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object p1

    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$3;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemContentLongClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/RealAdapter;->setOnItemContentLongClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;)V

    :cond_7
    return-void
.end method
