.class public Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;
.super Lcom/powervision/natives/model/BaseCallbackModel;
.source "RemoteOperateModel.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/natives/model/BaseCallbackModel<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteOperateModel"

.field private static mInstance:Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/powervision/natives/model/BaseCallbackModel;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;
    .locals 1

    .line 23
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;

    .line 26
    :cond_0
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;

    return-void
.end method

.method public keyResult(I)V
    .locals 0

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onActive()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onActive()V

    .line 35
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setRemoteKeyListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;)V

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onInactive()V

    .line 43
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setRemoteKeyListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->registerListener()V

    .line 51
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setRemoteKeyListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;)V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->unregisterListener()V

    .line 57
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setRemoteKeyListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;)V

    return-void
.end method
