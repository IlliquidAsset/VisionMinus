.class Lme/yokeyword/indexablerv/IndexableLayout$2;
.super Lme/yokeyword/indexablerv/database/IndexBarDataObserver;
.source "IndexableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yokeyword/indexablerv/IndexableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yokeyword/indexablerv/IndexableLayout;


# direct methods
.method constructor <init>(Lme/yokeyword/indexablerv/IndexableLayout;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$2;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-direct {p0}, Lme/yokeyword/indexablerv/database/IndexBarDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 120
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$2;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$200(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexBar;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$2;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$100(Lme/yokeyword/indexablerv/IndexableLayout;)Z

    move-result v1

    iget-object v2, p0, Lme/yokeyword/indexablerv/IndexableLayout$2;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v2}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lme/yokeyword/indexablerv/RealAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/yokeyword/indexablerv/IndexBar;->setDatas(ZLjava/util/ArrayList;)V

    return-void
.end method
