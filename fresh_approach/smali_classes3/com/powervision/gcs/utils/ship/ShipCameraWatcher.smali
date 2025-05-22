.class public Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;
.super Ljava/lang/Object;
.source "ShipCameraWatcher.java"

# interfaces
.implements Lcom/powervision/gcs/utils/ship/IShipCameraWatcher;


# static fields
.field private static watcher:Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/utils/ship/ShipCameraListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;
    .locals 1

    .line 15
    sget-object v0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->watcher:Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->watcher:Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    .line 18
    :cond_0
    sget-object v0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->watcher:Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;

    return-object v0
.end method


# virtual methods
.method public UnRegisterShipCameraListener(Lcom/powervision/gcs/utils/ship/ShipCameraListener;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyDeleteAll()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/utils/ship/ShipCameraListener;

    .line 58
    invoke-interface {v1}, Lcom/powervision/gcs/utils/ship/ShipCameraListener;->deleteAll()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDeleteFail()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/utils/ship/ShipCameraListener;

    .line 68
    invoke-interface {v1}, Lcom/powervision/gcs/utils/ship/ShipCameraListener;->deleteFail()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDeleteMulti(Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/utils/ship/ShipCameraListener;

    .line 48
    invoke-interface {v1, p1}, Lcom/powervision/gcs/utils/ship/ShipCameraListener;->deleteMultiFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDeleteSingle(Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/utils/ship/ShipCameraListener;

    .line 38
    invoke-interface {v1, p1}, Lcom/powervision/gcs/utils/ship/ShipCameraListener;->deleteSingleFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerShipCameraListener(Lcom/powervision/gcs/utils/ship/ShipCameraListener;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipCameraWatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
