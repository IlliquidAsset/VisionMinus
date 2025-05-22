.class public Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AOAShipFragmentMediaManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;,
        Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipFragmentMediaManage"

.field public static final UPDATE_PAYLOAD_PROGRESS:Ljava/lang/String; = "progress"


# instance fields
.field private isAOAMode:Z

.field private isDownloading:Z

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

.field private mListener:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

.field private manager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private mediaFileCount:I

.field private mediaType:I

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
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;ILcom/powervision/localhttp/PVW4DownloadManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;",
            ">;I",
            "Lcom/powervision/localhttp/PVW4DownloadManager;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mediaType:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->isAOAMode:Z

    .line 62
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 519
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    .line 73
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    .line 74
    iput p3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mediaType:I

    .line 75
    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    .line 76
    iput-object p4, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->manager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 77
    invoke-static {p1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    const/high16 p2, 0x42b40000    # 90.0f

    .line 78
    invoke-static {p2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mImageSize:I

    .line 79
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    sget p2, Lcom/powervision/gcs/R$drawable;->media_default:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 80
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    sget p2, Lcom/powervision/gcs/R$drawable;->media_default:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->isDownloading:Z

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Ljava/util/Map;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mediaFileCount:I

    return p0
.end method

.method private refreshProgress(ILcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;)V
    .locals 7

    .line 168
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 173
    iget-object v0, p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 175
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getDownloadStatus()I

    move-result v1

    .line 177
    iget-object v2, p2, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mProgress:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    .line 178
    iget-object p2, p2, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mTextStatus:Landroid/widget/TextView;

    const/16 v3, 0x8

    .line 180
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "progress.status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShipFragmentMediaManage"

    invoke-static {v5, v4}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 255
    :pswitch_0
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_49:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 231
    :pswitch_1
    invoke-virtual {v2, v3}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 233
    iget-object p1, p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->isSaveToAlbumAndFileExit(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_47:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 237
    :cond_1
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "on error "

    .line 217
    invoke-static {v5, p1}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2, v3}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 220
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_48:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 212
    :pswitch_3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_50:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 242
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshProgress: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getFraction()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v2}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {v2, v6}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 247
    :cond_2
    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 248
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_49:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_3
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getFraction()F

    move-result p1

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-virtual {v2, p1}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setProgress(I)V

    goto :goto_2

    .line 224
    :pswitch_5
    invoke-virtual {v2, v6}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 225
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getFraction()F

    move-result p1

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-virtual {v2, p1}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setProgress(I)V

    .line 227
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_42:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 208
    :pswitch_6
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_42:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 192
    :pswitch_7
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->isImage()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipImageDownloadPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipVideoDownloadPath()Ljava/lang/String;

    move-result-object p1

    .line 193
    :goto_0
    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getTempFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {p1, v1}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 197
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2, v6}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 199
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-float p1, v5

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getSize()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-virtual {v2, p1}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setProgress(I)V

    goto :goto_1

    .line 201
    :cond_5
    invoke-virtual {v2, v3}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 205
    :goto_1
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x1
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


# virtual methods
.method public cancelSelectAll()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 478
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;->onSelectedChanged(Ljava/util/Map;)V

    .line 480
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;->onCancelSelectAll()V

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public dismissLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->getItemCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 136
    iget-boolean p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    iget p1, p1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    return p1
.end method

.method public notifyMediaFileCount()V
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mList.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipFragmentMediaManage"

    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 86
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

    .line 91
    :cond_0
    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mediaFileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mediaFileCount:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->onBindViewHolder(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->onBindViewHolder(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;I)V
    .locals 9

    .line 266
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eq v0, v1, :cond_4

    if-eq v0, v4, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 295
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    sget v3, Lcom/powervision/gcs/R$mipmap;->media_select:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    sget v3, Lcom/powervision/gcs/R$mipmap;->media_unselect:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    :goto_0
    iget-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mLayoutMedia:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 303
    iget v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mImageSize:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 304
    iget v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mImageSize:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 305
    iget-object v3, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mLayoutMedia:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mProgress:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->setVisibility(I)V

    .line 320
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 323
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipCachePath()Ljava/lang/String;

    move-result-object v7

    .line 324
    iget-object v1, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {v1}, Lcom/powervision/gcs/utils/ShipHelper;->getThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget-object v3, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 330
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 331
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v3, Lcom/bumptech/glide/signature/ObjectKey;

    iget-object v4, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 332
    invoke-static {v4}, Lcom/powervision/gcs/utils/ShipHelper;->getFileSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mImagePhoto:Landroid/widget/ImageView;

    .line 333
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 335
    invoke-static {v2}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 338
    :cond_2
    iget-object v1, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-static {v1}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v8

    .line 339
    iget-object v1, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getThmfile()Ljava/lang/String;

    move-result-object v6

    .line 340
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->manager:Lcom/powervision/localhttp/PVW4DownloadManager;

    const-wide/16 v4, -0x1

    invoke-virtual/range {v3 .. v8}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 344
    invoke-virtual {v3}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getThmfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 345
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 346
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/signature/ObjectKey;

    iget-object v3, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 347
    invoke-static {v3}, Lcom/powervision/gcs/utils/ShipHelper;->getFileSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mImagePhoto:Landroid/widget/ImageView;

    .line 348
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 402
    :goto_1
    iget-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    new-instance v2, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;ILcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-direct {p0, p2, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->refreshProgress(ILcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;)V

    goto :goto_2

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 274
    iget-object v0, v0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->time:Ljava/lang/String;

    .line 275
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v2, :cond_5

    const/4 v5, 0x0

    .line 278
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "-"

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    :cond_5
    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 436
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->getItemCount()I

    move-result p1

    if-ne p2, p1, :cond_6

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->getItemCount()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_6

    iget-boolean p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    if-nez p1, :cond_6

    .line 437
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    if-eqz p1, :cond_6

    .line 438
    invoke-interface {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;->onLoadMore()V

    :cond_6
    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->onBindViewHolder(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;I)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 154
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 155
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 156
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

    .line 158
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->refreshProgress(ILcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 121
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_manager_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_manager_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_manager_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_manager_1:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->item_ship_media_title:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 106
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->empty_layout:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 103
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$layout;->recycler_foot_view:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 125
    :goto_0
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;-><init>(Landroid/view/View;I)V

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

    .line 451
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 452
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 453
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

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    if-eqz v0, :cond_3

    .line 467
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->selectMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;->onSelectedChanged(Ljava/util/Map;)V

    .line 468
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;->onSelectAll()V

    .line 469
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public setAdapterListener(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->mListener:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;

    return-void
.end method

.method public setDownloading(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->isDownloading:Z

    return-void
.end method

.method public showLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->isHiddenProgress:Z

    return-void
.end method
