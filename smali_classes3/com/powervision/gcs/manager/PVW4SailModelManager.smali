.class public Lcom/powervision/gcs/manager/PVW4SailModelManager;
.super Ljava/lang/Object;
.source "PVW4SailModelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;,
        Lcom/powervision/gcs/manager/PVW4SailModelManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PVW4SailModelManager"


# instance fields
.field private mApi:Lcom/powervision/natives/PVSDK_W4_API;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSailModeChangeListener:Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;

.field private mSailMode:I

.field private onSailModeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    new-instance v0, Lcom/powervision/gcs/manager/PVW4SailModelManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/PVW4SailModelManager$1;-><init>(Lcom/powervision/gcs/manager/PVW4SailModelManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->onSailModeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    return-void
.end method

.method static synthetic access$102(Lcom/powervision/gcs/manager/PVW4SailModelManager;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mSailMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/manager/PVW4SailModelManager;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->notifySailModeListener(I)V

    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/manager/PVW4SailModelManager;
    .locals 1

    .line 29
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4SailModelManager$Holder;->access$000()Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object v0

    return-object v0
.end method

.method private notifySailModeListener(I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    .line 47
    invoke-interface {v1, p1}, Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;->onSailModeChanged(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mOnSailModeChangeListener:Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {v0, p1}, Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;->onSailModeChanged(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addSailChangeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getSailMode()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mSailMode:I

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mApi:Lcom/powervision/natives/PVSDK_W4_API;

    .line 34
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->onSailModeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setOnSailModeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mApi:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setOnSailModeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V

    .line 39
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public removeSailChangeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSailModeChangeListener(Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager;->mOnSailModeChangeListener:Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;

    return-void
.end method
