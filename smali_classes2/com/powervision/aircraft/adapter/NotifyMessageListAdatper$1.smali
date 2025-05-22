.class Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$1;
.super Ljava/lang/Object;
.source "NotifyMessageListAdatper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->onBindViewHolder(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$1;->this$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    sget v0, Lcom/powervision/aircraft/R$id;->msg_item_content_tv:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/NotifyMessageTextView;

    .line 76
    invoke-virtual {p1}, Lcom/powervision/base/views/NotifyMessageTextView;->getMessage()Lcom/powervision/base/warning/HoverMessage;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$1;->this$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

    invoke-static {v0}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->access$000(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$1;->this$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

    invoke-static {v0}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->access$000(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$1;->this$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->notifyItemRemoved(I)V

    .line 83
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$1;->this$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

    invoke-static {v0}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->access$000(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method
