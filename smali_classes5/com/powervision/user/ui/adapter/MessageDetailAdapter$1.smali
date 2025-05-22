.class Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;
.super Ljava/lang/Object;
.source "MessageDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/ui/adapter/MessageDetailAdapter;

.field final synthetic val$msg:Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/powervision/user/ui/adapter/MessageDetailAdapter;Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;I)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;->this$0:Lcom/powervision/user/ui/adapter/MessageDetailAdapter;

    iput-object p2, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;->val$msg:Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;

    iput p3, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;->this$0:Lcom/powervision/user/ui/adapter/MessageDetailAdapter;

    invoke-static {p1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->access$400(Lcom/powervision/user/ui/adapter/MessageDetailAdapter;)Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;->this$0:Lcom/powervision/user/ui/adapter/MessageDetailAdapter;

    invoke-static {p1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->access$400(Lcom/powervision/user/ui/adapter/MessageDetailAdapter;)Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;->val$msg:Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;

    iget v1, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;->onItemClick(Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;I)V

    :cond_0
    return-void
.end method
