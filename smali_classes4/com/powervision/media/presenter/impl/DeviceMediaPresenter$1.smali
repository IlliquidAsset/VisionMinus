.class Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "DeviceMediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteFile(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->deleteFile(ILcom/powervision/localhttp/entity/BaseModel;)V

    .line 113
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$700(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 114
    iget p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->state:I

    if-nez p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$700(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$000(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$800(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_1
    const-string p1, "media"

    .line 118
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onFailure="

    invoke-interface {p1, v0, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/powervision/media/R$string;->AP03_MediaLib_34:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getCurrentState(ILjava/lang/String;)V
    .locals 1

    .line 125
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getCurrentState(ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 128
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "storage_state"

    .line 130
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sd_card"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$900(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {p1, v0}, Lcom/powervision/media/ui/view/IDeviceMediaView;->updateCurrentState(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getMediaFile(ILjava/lang/String;)V
    .locals 4

    .line 84
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getMediaFile(ILjava/lang/String;)V

    const-string v0, "media"

    .line 85
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 89
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const-string v1, "state"

    .line 93
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1$1;-><init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;)V

    .line 95
    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 94
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/BaseModel;

    .line 96
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$000(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$100(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;Ljava/util/List;I)V

    goto :goto_1

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/powervision/media/R$string;->APP_function_33:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$300(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 100
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$400(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/model/impl/DeviceMediaModel;

    iget-object p2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$000(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/powervision/media/model/impl/DeviceMediaModel;->initList(I)V

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$500(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IDeviceMediaView;->notifyData()V

    goto :goto_1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "onFailure=mRequestListener"

    .line 105
    invoke-static {p2, p1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$600(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IDeviceMediaView;->notifyData()V

    :goto_1
    return-void
.end method

.method public switch2RAM(ILjava/lang/String;)V
    .locals 1

    .line 144
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->switch2RAM(ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 147
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "state"

    .line 148
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1000(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IDeviceMediaView;->switchToRAMMode()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public switch2SD(ILjava/lang/String;)V
    .locals 1

    .line 159
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->switch2SD(ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 162
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "state"

    .line 163
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1100(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IDeviceMediaView;->switchToSDMode()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
