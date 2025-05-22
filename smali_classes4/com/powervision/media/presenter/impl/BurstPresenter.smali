.class public Lcom/powervision/media/presenter/impl/BurstPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "BurstPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/media/ui/view/IBurstView;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;"
    }
.end annotation


# instance fields
.field private isDeleteAll:Z

.field private mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

.field private mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    .line 34
    new-instance v0, Lcom/powervision/media/presenter/impl/BurstPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/BurstPresenter$1;-><init>(Lcom/powervision/media/presenter/impl/BurstPresenter;)V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 27
    invoke-static {}, Lcom/powervision/localhttp/AP03RequestHelper;->get()Lcom/powervision/localhttp/AP03RequestHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

    .line 28
    iget-object v1, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03RequestHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/presenter/impl/BurstPresenter;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->isDeleteAll:Z

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/media/presenter/impl/BurstPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/presenter/impl/BurstPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/presenter/impl/BurstPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/media/presenter/impl/BurstPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method private getBurstAssertIds(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 85
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BurstInfo;

    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/BurstInfo;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, ","

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deleteBurst(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    if-ne v0, p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->isDeleteAll:Z

    .line 70
    invoke-direct {p0, p2}, Lcom/powervision/media/presenter/impl/BurstPresenter;->getBurstAssertIds(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "media---deleteBurst ids= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " burstId= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p3

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powervision/localhttp/CmdModel$Builder;->deleteBurstData(Ljava/lang/String;Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public removeListener()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/BurstPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03RequestHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method
