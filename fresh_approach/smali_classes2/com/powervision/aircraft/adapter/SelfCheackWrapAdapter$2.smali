.class Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$2;
.super Ljava/lang/Object;
.source "SelfCheackWrapAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

.field final synthetic val$adapterPosition:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$2;->this$0:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    iput p2, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$2;->val$adapterPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$2;->this$0:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    iget-object v0, v0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mItemClickListener:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;

    iget v1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$2;->val$adapterPosition:I

    invoke-interface {v0, p1, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
