.class Lcom/powervision/media/ui/adapter/MediaLibAdapter$ViewHolder;
.super Lme/jingbin/library/adapter/BaseByViewHolder;
.source "MediaLibAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/MediaLibAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/jingbin/library/adapter/BaseByViewHolder<",
        "Lcom/powervision/localhttp/entity/MediaLib;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/adapter/MediaLibAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter$ViewHolder;->this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    .line 199
    invoke-direct {p0, p2, p3}, Lme/jingbin/library/adapter/BaseByViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Lcom/powervision/localhttp/entity/MediaLib;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/jingbin/library/adapter/BaseByViewHolder<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            "I)V"
        }
    .end annotation

    .line 204
    sget p3, Lcom/powervision/media/R$id;->media_time:I

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lme/jingbin/library/adapter/BaseByViewHolder;->setText(ILjava/lang/CharSequence;)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p3

    sget v0, Lcom/powervision/media/R$id;->media_time:I

    .line 205
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v0, v1}, Lme/jingbin/library/adapter/BaseByViewHolder;->setVisible(IZ)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p3

    sget v0, Lcom/powervision/media/R$id;->media_check:I

    .line 206
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v1

    invoke-virtual {p3, v0, v1}, Lme/jingbin/library/adapter/BaseByViewHolder;->setVisible(IZ)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p3

    sget v0, Lcom/powervision/media/R$id;->media_like_icon:I

    .line 207
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getCollected()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p3, v0, v3}, Lme/jingbin/library/adapter/BaseByViewHolder;->setVisible(IZ)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p3

    sget v0, Lcom/powervision/media/R$id;->media_icon_down:I

    .line 208
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isDone()Z

    move-result v1

    invoke-virtual {p3, v0, v1}, Lme/jingbin/library/adapter/BaseByViewHolder;->setVisible(IZ)Lme/jingbin/library/adapter/BaseByViewHolder;

    .line 210
    sget p3, Lcom/powervision/media/R$id;->media_image:I

    invoke-virtual {p1, p3}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 212
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isThmExist()Z

    move-result v0

    const-string v1, "media---"

    if-eqz v0, :cond_2

    .line 213
    iget-object p1, p1, Lme/jingbin/library/adapter/BaseByViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 214
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getThmPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 215
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 216
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 217
    invoke-virtual {p1, v4}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 218
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 219
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 220
    invoke-static {v1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaLibAdapter image-state-1= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isThmExist()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p1, p3, v0}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 222
    :cond_2
    iget-object p1, p1, Lme/jingbin/library/adapter/BaseByViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 224
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter$ViewHolder;->this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->access$000(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getTempThmName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result p1

    const-string p3, "0-0"

    if-lt p1, v2, :cond_4

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getPrePos()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 226
    :cond_3
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getThmPos()Ljava/lang/String;

    move-result-object p3

    .line 228
    :cond_4
    :goto_2
    invoke-static {v1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaLibAdapter image-state-2= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isThmExist()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter$ViewHolder;->this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->access$300(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Lcom/powervision/localhttp/PVW4DownloadManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03ThmDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getTempThmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, p3}, Lcom/powervision/localhttp/PVW4DownloadManager;->addHighLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_3
    invoke-static {v1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaLibAdapter image-state-3= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isThmExist()Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 197
    check-cast p2, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/media/ui/adapter/MediaLibAdapter$ViewHolder;->onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Lcom/powervision/localhttp/entity/MediaLib;I)V

    return-void
.end method
