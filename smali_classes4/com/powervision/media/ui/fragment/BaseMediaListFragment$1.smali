.class Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;
.super Ljava/lang/Object;
.source "BaseMediaListFragment.java"

# interfaces
.implements Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/fragment/BaseMediaListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public InflateTheImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->showImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onClick(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public reSetTheGroupCheck(Ljava/lang/String;IZ)V
    .locals 4

    .line 197
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    invoke-static {p2}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->access$100(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 199
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    invoke-static {v1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->access$100(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    invoke-static {v1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->access$100(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 202
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 203
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 204
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 205
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 208
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_23:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    invoke-static {v1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->access$100(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showPopUp()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->access$000(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    invoke-static {v1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->access$000(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "showPop null"

    .line 190
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->access$000(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->setSectionInfos(Ljava/util/List;)V

    return-void
.end method
