.class Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotifyMessageListAdatper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field closeBt:Landroid/widget/ImageView;

.field itemContentTv:Lcom/powervision/base/views/NotifyMessageTextView;

.field rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field sideBar:Landroid/view/View;

.field final synthetic this$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;Landroid/view/View;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->this$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

    .line 181
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 182
    sget p1, Lcom/powervision/aircraft/R$id;->msg_item_root_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 183
    sget p1, Lcom/powervision/aircraft/R$id;->msg_item_content_tv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/NotifyMessageTextView;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->itemContentTv:Lcom/powervision/base/views/NotifyMessageTextView;

    .line 184
    sget p1, Lcom/powervision/aircraft/R$id;->msg_item_title_tv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->titleTv:Landroid/widget/TextView;

    .line 185
    sget p1, Lcom/powervision/aircraft/R$id;->msg_side_bar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->sideBar:Landroid/view/View;

    .line 186
    sget p1, Lcom/powervision/aircraft/R$id;->msg_item_close_iv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->closeBt:Landroid/widget/ImageView;

    return-void
.end method
