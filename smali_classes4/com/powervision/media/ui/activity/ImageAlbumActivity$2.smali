.class Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;
.super Ljava/lang/Object;
.source "ImageAlbumActivity.java"

# interfaces
.implements Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/activity/ImageAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public InflateTheImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 257
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 258
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 260
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 261
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public reSetTheGroupCheckBox(Ljava/lang/String;IZ)V
    .locals 8

    .line 221
    iget-object p2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$300(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Landroid/widget/GridView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/GridView;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {v2}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$300(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {v2}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$300(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 226
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    .line 227
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 228
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 229
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    .line 233
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/powervision/media/R$mipmap;->media_group_select:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/powervision/media/R$mipmap;->media_group_unselect:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 240
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0xa

    .line 242
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    .line 243
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0xa

    .line 244
    iget-object v6, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {v6}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$300(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Landroid/widget/GridView;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->invalidate(Landroid/graphics/Rect;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public showPopUp()V
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$000(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {v0, v1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$100(Lcom/powervision/media/ui/activity/ImageAlbumActivity;Z)V

    .line 212
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$200(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Lcom/powervision/media/widgets/FSTitlebar;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_52:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleText(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$100(Lcom/powervision/media/ui/activity/ImageAlbumActivity;Z)V

    .line 215
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$200(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Lcom/powervision/media/widgets/FSTitlebar;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    sget v5, Lcom/powervision/media/R$string;->App_MediaLib_18:I

    invoke-virtual {v4, v5}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {v5}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$000(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
