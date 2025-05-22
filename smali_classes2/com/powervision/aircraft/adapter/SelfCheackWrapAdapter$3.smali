.class Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SelfCheackWrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->adjustSpanSize(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$3;->this$0:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    iput-object p2, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$3;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$3;->this$0:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    .line 214
    invoke-static {v0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->access$000(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$3;->this$0:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->access$100(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 215
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$3;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    :cond_2
    return v1
.end method
