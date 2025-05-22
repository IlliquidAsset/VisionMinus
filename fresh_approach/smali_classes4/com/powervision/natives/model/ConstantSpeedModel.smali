.class public Lcom/powervision/natives/model/ConstantSpeedModel;
.super Lcom/powervision/natives/model/BaseCallbackModel;
.source "ConstantSpeedModel.java"

# interfaces
.implements Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/natives/model/BaseCallbackModel<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "lzqSpeed"

.field private static mInstance:Lcom/powervision/natives/model/ConstantSpeedModel;


# instance fields
.field private mLevel:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/powervision/natives/model/BaseCallbackModel;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/powervision/natives/model/ConstantSpeedModel;->mLevel:I

    return-void
.end method

.method public static get()Lcom/powervision/natives/model/ConstantSpeedModel;
    .locals 1

    .line 23
    sget-object v0, Lcom/powervision/natives/model/ConstantSpeedModel;->mInstance:Lcom/powervision/natives/model/ConstantSpeedModel;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/powervision/natives/model/ConstantSpeedModel;

    invoke-direct {v0}, Lcom/powervision/natives/model/ConstantSpeedModel;-><init>()V

    sput-object v0, Lcom/powervision/natives/model/ConstantSpeedModel;->mInstance:Lcom/powervision/natives/model/ConstantSpeedModel;

    .line 26
    :cond_0
    sget-object v0, Lcom/powervision/natives/model/ConstantSpeedModel;->mInstance:Lcom/powervision/natives/model/ConstantSpeedModel;

    return-object v0
.end method


# virtual methods
.method public constantSpeedMode(I)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " constantSpeedMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqSpeed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput p1, p0, Lcom/powervision/natives/model/ConstantSpeedModel;->mLevel:I

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/natives/model/ConstantSpeedModel;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onActive()V
    .locals 3

    .line 34
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onActive()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/natives/model/ConstantSpeedModel;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqSpeed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/powervision/natives/model/ConstantSpeedModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/powervision/natives/model/ConstantSpeedModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setRayConstantSpeedModeListener(Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;)V

    .line 38
    iget v0, p0, Lcom/powervision/natives/model/ConstantSpeedModel;->mLevel:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    const-string v0, "isHandMove: "

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget v0, p0, Lcom/powervision/natives/model/ConstantSpeedModel;->mLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/natives/model/ConstantSpeedModel;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onInactive()V

    .line 49
    invoke-virtual {p0}, Lcom/powervision/natives/model/ConstantSpeedModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/powervision/natives/model/ConstantSpeedModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setRayConstantSpeedModeListener(Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->registerListener()V

    .line 57
    iget-object v0, p0, Lcom/powervision/natives/model/ConstantSpeedModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setRayConstantSpeedModeListener(Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;)V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->unregisterListener()V

    .line 63
    iget-object v0, p0, Lcom/powervision/natives/model/ConstantSpeedModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setRayConstantSpeedModeListener(Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;)V

    return-void
.end method
