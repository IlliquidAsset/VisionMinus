.class Lcom/powervision/media/ui/fragment/VideoListFragment$1;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/fragment/VideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/fragment/VideoListFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public InflateTheImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V
    .locals 3

    .line 190
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "video"

    const-string v1, "video/thumbnails"

    .line 193
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4"

    const-string v2, "jpg"

    .line 194
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 203
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 204
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const-wide/32 v1, 0x1e8480

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 206
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 207
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public onClick(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 212
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    .line 213
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/media/ui/activity/VideoPlayActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "model"

    .line 214
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-virtual {p1, p2}, Lcom/powervision/media/ui/fragment/VideoListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public reSetTheGroupCheckBox(Ljava/lang/String;IZ)V
    .locals 4

    .line 159
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-static {p2}, Lcom/powervision/media/ui/fragment/VideoListFragment;->access$100(Lcom/powervision/media/ui/fragment/VideoListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 161
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-static {v1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->access$100(Lcom/powervision/media/ui/fragment/VideoListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-static {v1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->access$100(Lcom/powervision/media/ui/fragment/VideoListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 165
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 166
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 168
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 171
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    .line 173
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_23:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :goto_1
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-static {v1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->access$100(Lcom/powervision/media/ui/fragment/VideoListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reSetTheImageCheckBox(Ljava/lang/String;IZ)V
    .locals 4

    .line 137
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-static {p2}, Lcom/powervision/media/ui/fragment/VideoListFragment;->access$100(Lcom/powervision/media/ui/fragment/VideoListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-static {v2}, Lcom/powervision/media/ui/fragment/VideoListFragment;->access$100(Lcom/powervision/media/ui/fragment/VideoListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 142
    instance-of v3, v2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;

    if-eqz v3, :cond_1

    .line 143
    check-cast v2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;

    .line 144
    iget-object v3, v2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->time:Ljava/lang/String;

    .line 145
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    .line 147
    iget-object v2, v2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 149
    :cond_0
    iget-object v2, v2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :goto_1
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-static {v2}, Lcom/powervision/media/ui/fragment/VideoListFragment;->access$100(Lcom/powervision/media/ui/fragment/VideoListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showPopUp()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;->this$0:Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->access$000(Lcom/powervision/media/ui/fragment/VideoListFragment;)V

    return-void
.end method
