.class public abstract Lcom/powervision/natives/model/BaseCallbackModel;
.super Landroidx/lifecycle/LiveData;
.source "BaseCallbackModel.java"

# interfaces
.implements Lcom/powervision/natives/model/ModelRegisterListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;",
        "Lcom/powervision/natives/model/ModelRegisterListener;"
    }
.end annotation


# instance fields
.field private isHandMove:Z

.field public w4_api:Lcom/powervision/natives/PVSDK_W4_API;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 21
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/model/BaseCallbackModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    return-void
.end method


# virtual methods
.method public isHandMove()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/powervision/natives/model/BaseCallbackModel;->isHandMove:Z

    return v0
.end method

.method public registerListener()V
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/powervision/natives/model/BaseCallbackModel;->setHandMove(Z)V

    return-void
.end method

.method protected setHandMove(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/powervision/natives/model/BaseCallbackModel;->isHandMove:Z

    return-void
.end method

.method public unregisterListener()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/powervision/natives/model/BaseCallbackModel;->setHandMove(Z)V

    return-void
.end method
