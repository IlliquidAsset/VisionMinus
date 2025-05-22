.class Lcom/powervision/media/ui/fragment/PictureListFragment$1;
.super Ljava/lang/Object;
.source "PictureListFragment.java"

# interfaces
.implements Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/fragment/PictureListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/fragment/PictureListFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public InflateTheImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureListFragment"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 234
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 235
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 237
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 238
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public onClick(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    invoke-virtual {v1}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "imageList"

    .line 246
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "position"

    .line 247
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    invoke-virtual {p2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 250
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public reSetTheGroupCheckBox(Ljava/lang/String;IZ)V
    .locals 4

    .line 202
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    iget-object p2, p2, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 204
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    iget-object v1, v1, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    iget-object v1, v1, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 208
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 209
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 211
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 214
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    .line 216
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_23:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 218
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 220
    :goto_1
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    iget-object v1, v1, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reSetTheImageCheckBox(Ljava/lang/String;IZ)V
    .locals 4

    .line 179
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    iget-object p2, p2, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    iget-object v2, v2, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v2, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 184
    instance-of v3, v2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;

    if-eqz v3, :cond_1

    .line 185
    check-cast v2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;

    .line 187
    iget-object v3, v2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->time:Ljava/lang/String;

    .line 188
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    .line 190
    iget-object v2, v2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 192
    :cond_0
    iget-object v2, v2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    :goto_1
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    iget-object v2, v2, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showPopUp()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/PictureListFragment;

    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->popUpNotify()V

    return-void
.end method
