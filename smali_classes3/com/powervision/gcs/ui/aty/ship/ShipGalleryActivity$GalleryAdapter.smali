.class Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ShipGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryAdapter"
.end annotation


# instance fields
.field private mCurrentView:Landroid/view/View;

.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPrimaryItem()Landroid/view/View;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .line 196
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->pager_ship_gallery:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 197
    sget v1, Lcom/powervision/gcs/R$id;->photo_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 199
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 201
    invoke-static {p2}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->isSaveToAlbumAndFileExit(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {p2}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->getFileRealPath(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v3, v3, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 204
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$drawable;->media_default:I

    .line 205
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    const v3, 0x3dcccccd    # 0.1f

    .line 206
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$drawable;->media_default:I

    .line 207
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    new-instance v3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 208
    invoke-static {p2}, Lcom/powervision/gcs/utils/ShipHelper;->getFileSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 209
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 224
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipCachePath()Ljava/lang/String;

    move-result-object v8

    .line 225
    invoke-static {p2}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->getFileCachePath(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v2}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v3, v3, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 235
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 236
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v3, v3, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 237
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 238
    invoke-static {p2}, Lcom/powervision/gcs/utils/ShipHelper;->getFileSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 239
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_0

    .line 241
    :cond_1
    invoke-static {p2}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->getThmCachePath(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v2}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v3, v3, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v3, v3, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 245
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 246
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    new-instance v3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 247
    invoke-static {p2}, Lcom/powervision/gcs/utils/ShipHelper;->getFileSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 248
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 251
    invoke-static {p2}, Lcom/powervision/gcs/utils/ShipHelper;->getTempFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v9

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShipGalleryActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 254
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    invoke-static {p2}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)Lcom/powervision/localhttp/PVW4DownloadManager;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-virtual/range {v4 .. v9}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTaskAtFront(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_2
    invoke-static {p2}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v9

    .line 258
    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getThmfile()Ljava/lang/String;

    move-result-object v7

    .line 259
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    invoke-static {p2}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)Lcom/powervision/localhttp/PVW4DownloadManager;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-virtual/range {v4 .. v9}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTaskAtFront(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getThmfile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 271
    invoke-static {p2}, Lcom/powervision/gcs/utils/ShipHelper;->getFileThumbSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 273
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v3, v3, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    iget-object v4, v4, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 275
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 276
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 278
    invoke-static {p2}, Lcom/powervision/gcs/utils/ShipHelper;->getFileSignatureByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 279
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 283
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p3, Landroid/view/View;

    iput-object p3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->mCurrentView:Landroid/view/View;

    return-void
.end method
