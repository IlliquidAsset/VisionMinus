.class Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "MediaPreviewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSaveData(ILjava/lang/String;)V
    .locals 5

    const-string v0, "media--"

    .line 240
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSaveData result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 243
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2700(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, "code"

    .line 245
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2800(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->cancelSaveData()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2900(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->saveOrCancelFail()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "onFailure=cancelSaveData"

    invoke-interface {p1, v0, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$3000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 258
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$3100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->saveOrCancelFail()V

    :cond_2
    :goto_0
    return-void
.end method

.method public deleteData(ILjava/lang/String;)V
    .locals 1

    .line 190
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->deleteData(ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 194
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1700(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, "code"

    .line 196
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 197
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1800(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->deleteSuccess()V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1900(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->deleteError()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "media"

    .line 206
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onFailure="

    invoke-interface {p1, v0, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 208
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->deleteError()V

    :cond_2
    :goto_0
    return-void
.end method

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

    .line 172
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->deleteFile(ILcom/powervision/localhttp/entity/BaseModel;)V

    .line 173
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1200(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 174
    iget p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->state:I

    if-nez p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1300(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1400(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->deleteSuccess()V

    .line 178
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1202(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const-string p1, "media"

    .line 181
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onFailure="

    invoke-interface {p1, v0, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1500(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 183
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1600(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->deleteError()V

    :cond_2
    :goto_0
    return-void
.end method

.method public saveData(ILjava/lang/String;)V
    .locals 5

    const-string v0, "media--"

    .line 215
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveData result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 218
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2200(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, "code"

    .line 220
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2300(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->saveData()V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2400(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->saveOrCancelFail()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "onFailure=saveData"

    invoke-interface {p1, v0, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2500(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$2600(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->saveOrCancelFail()V

    :cond_2
    :goto_0
    return-void
.end method
