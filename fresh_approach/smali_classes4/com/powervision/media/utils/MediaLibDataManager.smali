.class public Lcom/powervision/media/utils/MediaLibDataManager;
.super Ljava/lang/Object;
.source "MediaLibDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/utils/MediaLibDataManager$SingleHelper;
    }
.end annotation


# instance fields
.field private mMediaPreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/utils/MediaLibDataManager;->mMediaPreList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/media/utils/MediaLibDataManager$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/powervision/media/utils/MediaLibDataManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/media/utils/MediaLibDataManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/powervision/media/utils/MediaLibDataManager$SingleHelper;->instance:Lcom/powervision/media/utils/MediaLibDataManager;

    return-object v0
.end method


# virtual methods
.method public getMediaPreData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/powervision/media/utils/MediaLibDataManager;->mMediaPreList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMediaPreData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/powervision/media/utils/MediaLibDataManager;->mMediaPreList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/powervision/media/utils/MediaLibDataManager;->mMediaPreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/utils/MediaLibDataManager;->mMediaPreList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/powervision/media/utils/MediaLibDataManager;->mMediaPreList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
