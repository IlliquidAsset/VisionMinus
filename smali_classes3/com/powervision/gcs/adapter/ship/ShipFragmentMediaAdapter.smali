.class public Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShipFragmentMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;,
        Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipFragmentMediaAdapte"

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field private isHiddenProgress:Z

.field private isHideEmptyInfo:Z

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

.field private mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;

.field private mType:I

.field private manager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field options:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/powervision/localhttp/PVW4DownloadManager;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;",
            ">;",
            "Lcom/powervision/localhttp/PVW4DownloadManager;",
            "I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHiddenProgress:Z

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHideEmptyInfo:Z

    .line 63
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mActivity:Landroid/app/Activity;

    .line 64
    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mList:Ljava/util/List;

    .line 65
    iput-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->manager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 66
    iput p4, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mType:I

    .line 67
    invoke-static {p1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    const/high16 p2, 0x42b40000    # 90.0f

    .line 68
    invoke-static {p2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mImageSize:I

    .line 69
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    sget p2, Lcom/powervision/gcs/R$drawable;->media_default:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 70
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    sget p2, Lcom/powervision/gcs/R$drawable;->media_default:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;

    return-object p0
.end method


# virtual methods
.method public dismissLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHiddenProgress:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 112
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getItemViewType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHideEmptyInfo:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShipFragmentMediaAdapte"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-boolean p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHideEmptyInfo:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    return p1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->getItemCount()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 122
    iget-boolean p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHiddenProgress:Z

    if-eqz p1, :cond_3

    .line 123
    iget-boolean p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHideEmptyInfo:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    return p1

    :cond_2
    return v1

    :cond_3
    return v2

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    iget p1, p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    return p1
.end method

.method public hideEmptyInfo()V
    .locals 1

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHideEmptyInfo:Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->onBindViewHolder(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;I)V
    .locals 10

    .line 153
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 200
    iget-object v4, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->mediaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 201
    iget v5, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mImageSize:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 202
    iget v5, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mImageSize:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    iget-object v5, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->mediaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v4, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {v4}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    iget-object v4, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 224
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipCachePath()Ljava/lang/String;

    move-result-object v8

    .line 225
    iget-object v1, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {v1}, Lcom/powervision/gcs/utils/ShipHelper;->getThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    iget-object v4, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget-object v4, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 231
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v4, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 232
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v4, Lcom/bumptech/glide/signature/ObjectKey;

    iget-object v5, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 233
    invoke-static {v5}, Lcom/powervision/gcs/utils/ShipHelper;->getFileSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v4, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->imgMediaPhoto:Landroid/widget/ImageView;

    .line 234
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 238
    invoke-static {v2}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {v1}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v9

    .line 243
    iget-object v1, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getThmfile()Ljava/lang/String;

    move-result-object v7

    .line 245
    iget-object v4, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->manager:Lcom/powervision/localhttp/PVW4DownloadManager;

    const-wide/16 v5, -0x1

    invoke-virtual/range {v4 .. v9}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 250
    invoke-virtual {v4}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getThmfile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 251
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 252
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/signature/ObjectKey;

    iget-object v4, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 253
    invoke-static {v4}, Lcom/powervision/gcs/utils/ShipHelper;->getFileSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->imgMediaPhoto:Landroid/widget/ImageView;

    .line 254
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 258
    :goto_0
    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->mediaLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$1;-><init>(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 173
    iget-object v0, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->time:Ljava/lang/String;

    .line 174
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    const/4 v4, 0x4

    .line 177
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x6

    .line 178
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-"

    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    :cond_3
    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->mediaTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 157
    :pswitch_2
    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mType:I

    if-ne v0, v3, :cond_4

    .line 158
    iget-object v0, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->ivEmpty:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_media_img_list:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v0, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->tvEmptyTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->App_MediaLib_8:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->tvEmptyContent:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->App_MediaLib_9:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_5

    .line 162
    iget-object v0, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->ivEmpty:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_media_video_list:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v0, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->tvEmptyTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->App_MediaLib_10:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->tvEmptyContent:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->App_MediaLib_11:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_1
    add-int/2addr p2, v3

    .line 270
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->getItemCount()I

    move-result p1

    if-ne p2, p1, :cond_6

    iget-boolean p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHiddenProgress:Z

    if-nez p1, :cond_6

    .line 272
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;

    if-eqz p1, :cond_6

    .line 273
    invoke-interface {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;->onLoadMore()V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 84
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->view_loading_layout:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->view_none_layout:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 99
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 96
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 93
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 90
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_title:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 81
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->view_empty_layout:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 78
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->view_recycler_foot_view:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    :goto_0
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;-><init>(Landroid/view/View;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapterListener(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;

    return-void
.end method

.method public showEmptyInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHideEmptyInfo:Z

    return-void
.end method

.method public showLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->isHiddenProgress:Z

    return-void
.end method
