.class Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BottomListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BottomListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;->this$0:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;->titles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;->titles:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;->titles:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 151
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;->this$0:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    invoke-virtual {p2}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$layout;->item_bottom_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 152
    new-instance p3, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter$ViewHolder;-><init>(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;)V

    .line 153
    sget v0, Lcom/powervision/gcs/R$id;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 154
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter$ViewHolder;

    .line 158
    :goto_0
    iget-object p3, p3, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;->titles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
