.class public Lcom/powervision/media/ui/adapter/BurstAdapter$ViewHolder;
.super Lme/jingbin/library/adapter/BaseByViewHolder;
.source "BurstAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/BurstAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/jingbin/library/adapter/BaseByViewHolder<",
        "Lcom/powervision/localhttp/entity/BurstInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;


# direct methods
.method public constructor <init>(Lcom/powervision/media/ui/adapter/BurstAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter$ViewHolder;->this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;

    .line 132
    invoke-direct {p0, p2, p3}, Lme/jingbin/library/adapter/BaseByViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Lcom/powervision/localhttp/entity/BurstInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/jingbin/library/adapter/BaseByViewHolder<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            "I)V"
        }
    .end annotation

    .line 137
    sget p3, Lcom/powervision/media/R$id;->burst_select:I

    invoke-virtual {p1, p3}, Lme/jingbin/library/adapter/BaseByViewHolder;->addOnClickListener(I)Lme/jingbin/library/adapter/BaseByViewHolder;

    .line 138
    sget p3, Lcom/powervision/media/R$id;->burst_select:I

    invoke-virtual {p1, p3}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BurstInfo;->isSelected()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 139
    sget p3, Lcom/powervision/media/R$id;->burst_image:I

    invoke-virtual {p1, p3}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BurstInfo;->isPrevExist()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 143
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrevPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    const/4 p3, 0x0

    .line 144
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    sget-object p3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 145
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 146
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter$ViewHolder;->this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/BurstAdapter;->access$000(Lcom/powervision/media/ui/adapter/BurstAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BurstInfo;->getTempPrevName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrePos()Ljava/lang/String;

    move-result-object p1

    const-string p3, "0-0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrePos()Ljava/lang/String;

    move-result-object p3

    .line 152
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter$ViewHolder;->this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/BurstAdapter;->access$100(Lcom/powervision/media/ui/adapter/BurstAdapter;)Lcom/powervision/localhttp/PVW4DownloadManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BurstInfo;->getPreImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03PrevDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BurstInfo;->getTempPrevName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/powervision/localhttp/PVW4DownloadManager;->addHighLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 130
    check-cast p2, Lcom/powervision/localhttp/entity/BurstInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/media/ui/adapter/BurstAdapter$ViewHolder;->onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Lcom/powervision/localhttp/entity/BurstInfo;I)V

    return-void
.end method
