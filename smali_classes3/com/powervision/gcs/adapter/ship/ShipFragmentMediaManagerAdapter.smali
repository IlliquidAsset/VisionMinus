.class public Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShipFragmentMediaManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;,
        Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipFragmentMediaManage"

.field public static final UPDATE_PAYLOAD_PROGRESS:Ljava/lang/String; = "progress"


# instance fields
.field private isHiddenProgress:Z

.field private mActivity:Landroid/app/Activity;

.field private mImageSize:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

.field private mediaFileCount:I

.field private mediaType:I

.field private okDownload:Lcom/lzy/okserver/OkDownload;

.field options:Lcom/bumptech/glide/request/RequestOptions;

.field private selectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;",
            ">;I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mediaType:I

    .line 63
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    const/4 v0, 0x1

    .line 437
    iput-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    .line 71
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    .line 72
    iput p3, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mediaType:I

    .line 73
    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    .line 74
    invoke-static {p1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    const/high16 p2, 0x42b40000    # 90.0f

    .line 75
    invoke-static {p2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mImageSize:I

    .line 76
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    sget p2, Lcom/powervision/gcs/R$drawable;->media_default:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 77
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    sget p2, Lcom/powervision/gcs/R$drawable;->media_default:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    if-nez p3, :cond_0

    .line 80
    invoke-static {}, Lcom/powervision/gcs/utils/OkgoUtils;->getShipImageInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->okDownload:Lcom/lzy/okserver/OkDownload;

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_1

    .line 82
    invoke-static {}, Lcom/powervision/gcs/utils/OkgoUtils;->getShipVideoInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->okDownload:Lcom/lzy/okserver/OkDownload;

    .line 84
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShipFragmentMediaManagerAdapter: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->okDownload:Lcom/lzy/okserver/OkDownload;

    invoke-virtual {p2}, Lcom/lzy/okserver/OkDownload;->getFolder()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShipFragmentMediaManage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->checkHasDownload()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mediaFileCount:I

    return p0
.end method

.method private checkHasDownload()Z
    .locals 5

    .line 503
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->okDownload:Lcom/lzy/okserver/OkDownload;

    invoke-virtual {v0}, Lcom/lzy/okserver/OkDownload;->getTaskMap()Ljava/util/Map;

    move-result-object v0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskMap1.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShipFragmentMediaManage"

    invoke-static {v2, v1}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 507
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okserver/download/DownloadTask;

    .line 508
    iget-object v3, v2, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v3, v3, Lcom/lzy/okgo/model/Progress;->status:I

    .line 510
    iget-object v2, v2, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mediaType:I

    if-ne v2, v4, :cond_0

    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshProgress(ILcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;)V
    .locals 8

    .line 175
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 180
    iget-object v0, p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getProgress()Lcom/lzy/okgo/model/Progress;

    move-result-object v0

    .line 182
    iget-object v1, p2, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mProgress:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    .line 183
    iget-object p2, p2, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mTextStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 185
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 189
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 193
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress.status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShipFragmentMediaManage"

    invoke-static {v4, v3}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget v3, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v5, 0x0

    if-eqz v3, :cond_9

    const/4 v6, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    if-eq v3, v6, :cond_8

    const/4 v6, 0x2

    if-eq v3, v6, :cond_7

    const/4 v0, 0x3

    if-eq v3, v0, :cond_6

    const/4 v0, 0x4

    if-eq v3, v0, :cond_5

    const/4 v0, 0x5

    if-eq v3, v0, :cond_2

    goto/16 :goto_0

    .line 219
    :cond_2
    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 220
    invoke-virtual {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 224
    :cond_3
    iget-object p1, p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->isSaveToAlbumAndFileExit(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 225
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_47:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_4
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const-string p1, "on error "

    .line 205
    invoke-static {v4, p1}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 208
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_48:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_6
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_50:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :cond_7
    iget-wide v2, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    long-to-float p1, v2

    iget-wide v2, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    long-to-float v0, v2

    div-float/2addr p1, v0

    mul-float p1, p1, v7

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setProgress(I)V

    .line 234
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_49:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_8
    invoke-virtual {v1, v5}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 213
    iget p1, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    mul-float p1, p1, v7

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setProgress(I)V

    .line 215
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_42:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_9
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_42:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelSelectAll()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 396
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;->onSelectedChanged(Ljava/util/Map;)V

    .line 398
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    invoke-interface {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;->onCancelSelectAll()V

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public dismissLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->getItemCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 140
    iget-boolean p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    iget p1, p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    return p1
.end method

.method public notifyMediaFileCount()V
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mList.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipFragmentMediaManage"

    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 90
    iget v1, v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mediaFileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mediaFileCount:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    check-cast p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->onBindViewHolder(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->onBindViewHolder(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;I)V
    .locals 7

    .line 245
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 274
    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/gcs/R$mipmap;->media_select:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/gcs/R$mipmap;->media_unselect:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    :goto_0
    iget-object v1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mLayoutMedia:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 282
    iget v4, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mImageSize:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 283
    iget v4, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mImageSize:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    iget-object v4, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mLayoutMedia:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mProgress:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    invoke-virtual {v1, v3}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 303
    invoke-virtual {v4}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getThmfile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget-object v3, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 304
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 305
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 306
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Lcom/bumptech/glide/signature/ObjectKey;

    iget-object v3, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 307
    invoke-static {v3}, Lcom/powervision/gcs/utils/ShipHelper;->getFileSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mImagePhoto:Landroid/widget/ImageView;

    .line 308
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 310
    iget-object v1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    new-instance v2, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$1;-><init>(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;ILcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    invoke-direct {p0, p2, p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->refreshProgress(ILcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;)V

    goto :goto_1

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 253
    iget-object v0, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->time:Ljava/lang/String;

    .line 254
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 257
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "-"

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    :cond_3
    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 348
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->getItemCount()I

    move-result p1

    if-ne p2, p1, :cond_4

    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->getItemCount()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    if-nez p1, :cond_4

    .line 349
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    if-eqz p1, :cond_4

    .line 350
    invoke-interface {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;->onLoadMore()V

    :cond_4
    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->onBindViewHolder(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;I)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 160
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 161
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 162
    check-cast p3, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3bab3dd3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "progress"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 164
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->refreshProgress(ILcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_manager_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_manager_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_manager_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 116
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_manager_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 113
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_title:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 110
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->empty_layout:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 107
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->recycler_foot_view:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    :goto_0
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$ViewHolder;-><init>(Landroid/view/View;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public selectAll()V
    .locals 4

    const/4 v0, 0x0

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 370
    iget v2, v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    if-eqz v0, :cond_3

    .line 385
    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;->onSelectedChanged(Ljava/util/Map;)V

    .line 386
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    invoke-interface {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;->onSelectAll()V

    .line 387
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public setAdapterListener(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter$AdapterListener;

    return-void
.end method

.method public showLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    return-void
.end method

.method public updateSelectMap()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
