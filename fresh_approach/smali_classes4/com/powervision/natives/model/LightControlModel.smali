.class public Lcom/powervision/natives/model/LightControlModel;
.super Lcom/powervision/natives/model/BaseCallbackModel;
.source "LightControlModel.java"

# interfaces
.implements Lcom/powervision/natives/callback/DophinCallback$LightControlListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/natives/model/BaseCallbackModel<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/powervision/natives/callback/DophinCallback$LightControlListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "lzqlight"

.field private static mInstance:Lcom/powervision/natives/model/LightControlModel;


# instance fields
.field private mLevel:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/powervision/natives/model/BaseCallbackModel;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/powervision/natives/model/LightControlModel;->mLevel:I

    return-void
.end method

.method public static get()Lcom/powervision/natives/model/LightControlModel;
    .locals 1

    .line 24
    sget-object v0, Lcom/powervision/natives/model/LightControlModel;->mInstance:Lcom/powervision/natives/model/LightControlModel;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/powervision/natives/model/LightControlModel;

    invoke-direct {v0}, Lcom/powervision/natives/model/LightControlModel;-><init>()V

    sput-object v0, Lcom/powervision/natives/model/LightControlModel;->mInstance:Lcom/powervision/natives/model/LightControlModel;

    .line 27
    :cond_0
    sget-object v0, Lcom/powervision/natives/model/LightControlModel;->mInstance:Lcom/powervision/natives/model/LightControlModel;

    return-object v0
.end method


# virtual methods
.method public lightControl(I)V
    .locals 3

    const-string v0, "lzqlight"

    const-string v1, "\u6536\u5230\u56de\u8c03"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lightControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput p1, p0, Lcom/powervision/natives/model/LightControlModel;->mLevel:I

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/natives/model/LightControlModel;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onActive()V
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onActive()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/natives/model/LightControlModel;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqlight"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/powervision/natives/model/LightControlModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/powervision/natives/model/LightControlModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setLightControlListener(Lcom/powervision/natives/callback/DophinCallback$LightControlListener;)V

    .line 40
    iget v0, p0, Lcom/powervision/natives/model/LightControlModel;->mLevel:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/natives/model/LightControlModel;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onInactive()V

    .line 49
    invoke-virtual {p0}, Lcom/powervision/natives/model/LightControlModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/powervision/natives/model/LightControlModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setLightControlListener(Lcom/powervision/natives/callback/DophinCallback$LightControlListener;)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->registerListener()V

    const-string v0, "lzqlight"

    const-string v1, "registerListener"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/powervision/natives/model/LightControlModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setLightControlListener(Lcom/powervision/natives/callback/DophinCallback$LightControlListener;)V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->unregisterListener()V

    .line 67
    iget-object v0, p0, Lcom/powervision/natives/model/LightControlModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setLightControlListener(Lcom/powervision/natives/callback/DophinCallback$LightControlListener;)V

    return-void
.end method
