.class public Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;
.super Ljava/lang/Object;
.source "MediaFileListModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaFileListModel"

.field private static mInstance:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;


# instance fields
.field private hasReachBottom:Z

.field private mCurrentStart:I

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStart:I

.field private mTotalCount:I

.field private mVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;"
        }
    .end annotation
.end field

.field private pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mImageList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mVideoList:Ljava/util/List;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    const/4 v1, 0x1

    .line 39
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    .line 41
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mCurrentStart:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->hasReachBottom:Z

    .line 45
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 249
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;-><init>(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 57
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    invoke-virtual {v1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->hasReachBottom:Z

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mImageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mVideoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;Ljava/util/List;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->notifyAddImageListeners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;Ljava/util/List;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->notifyAddVideoListeners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->notifyGetEndListeners()V

    return-void
.end method

.method static synthetic access$800(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->notifyErrorListeners()V

    return-void
.end method

.method public static get()Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;
    .locals 1

    .line 49
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    .line 53
    :cond_0
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    return-object v0
.end method

.method private notifyAddImageListeners(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 154
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    .line 158
    invoke-interface {v1, p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;->onImageListAdd(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyAddVideoListeners(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 164
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    .line 168
    invoke-interface {v1, p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;->onVideoListAdd(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyErrorListeners()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 184
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    .line 188
    invoke-interface {v1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;->onLoadError()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyGetEndListeners()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 174
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    .line 178
    invoke-interface {v1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;->onGetListEnd()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyTotalCountListeners(I)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 144
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    .line 148
    invoke-interface {v1, p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;->onTotalCountGet(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeImageFromList(Ljava/lang/String;)V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;

    .line 214
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mImageList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    .line 217
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    .line 221
    :cond_1
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    if-le p1, v0, :cond_2

    .line 222
    iput-boolean v2, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->hasReachBottom:Z

    :cond_2
    return-void
.end method

.method private removeVideoFromList(Ljava/lang/String;)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;

    .line 229
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mVideoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    .line 232
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    .line 236
    :cond_1
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    if-le p1, v0, :cond_2

    .line 237
    iput-boolean v2, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->hasReachBottom:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, -0x1

    .line 242
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    const/4 v0, 0x1

    .line 243
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->hasReachBottom:Z

    .line 245
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    const/4 v0, 0x0

    .line 246
    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    return-void
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mImageList:Ljava/util/List;

    return-object v0
.end method

.method public getMoreFileList()V
    .locals 5

    .line 95
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 99
    :cond_0
    iget v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    iget v2, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mCurrentStart:I

    if-ne v1, v2, :cond_1

    return-void

    .line 102
    :cond_1
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mCurrentStart:I

    if-eqz v0, :cond_3

    if-le v1, v0, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMoreFileList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFileListModel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 114
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v2

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v3

    iget v4, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mStart:I

    invoke-virtual {v3, v4, v0}, Lcom/powervision/localhttp/CmdModel$Builder;->getFileList(II)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/CmdModel$Builder;->retryTimes(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->hasReachBottom:Z

    .line 105
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->notifyGetEndListeners()V

    return-void
.end method

.method public getTotalCount()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    return v0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mVideoList:Ljava/util/List;

    return-object v0
.end method

.method public isHasReachBottom()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->hasReachBottom:Z

    return v0
.end method

.method public isImageEmpty()Z
    .locals 1

    .line 80
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVideoEmpty()Z
    .locals 1

    .line 90
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public removeFromList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x19be1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x1a6f1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_2

    .line 206
    :cond_3
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->removeVideoFromList(Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :cond_4
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->removeImageFromList(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public removeListener(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->mTotalCount:I

    .line 66
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->notifyTotalCountListeners(I)V

    return-void
.end method
