.class Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "MediaLibPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/presenter/impl/MediaLibPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSaveData(ILjava/lang/String;)V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "media--"

    .line 225
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaLibPresenter cancelSaveData result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 228
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    .line 229
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 230
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, v3, p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;ZLjava/util/ArrayList;)V

    .line 233
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1600(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->cancelSaveData()V

    goto :goto_0

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1, v1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1300(Lcom/powervision/media/presenter/impl/MediaLibPresenter;Z)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1700(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->saveOrCancelFail()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 244
    :cond_4
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "MediaLibPresenter onFailure=cancelSaveData"

    invoke-interface {p1, v0, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->saveOrCancelFail()V

    :goto_0
    return-void
.end method

.method public deleteData(ILjava/lang/String;)V
    .locals 4

    const-string v0, "media--"

    .line 167
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaLibPresenter deleteData result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 172
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    .line 173
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 174
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$600(Lcom/powervision/media/presenter/impl/MediaLibPresenter;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$700(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->deleteError()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "media---\u5f02\u5e38"

    .line 185
    invoke-static {p2, p1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->deleteError()V

    goto :goto_0

    .line 189
    :cond_4
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->deleteError()V

    :goto_0
    return-void
.end method

.method public getAllData(ILjava/lang/String;)V
    .locals 4

    .line 142
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getAllData(ILjava/lang/String;)V

    const-string v0, "media--"

    .line 143
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaLibPresenter result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 146
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 147
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 148
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1$1;-><init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;)V

    .line 149
    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 148
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/MediaModelResult;

    .line 150
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/MediaModelResult;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    sget p2, Lcom/powervision/media/R$string;->APP_function_33:I

    invoke-virtual {p1, p2}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$200(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->notifyData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$300(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->notifyData()V

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "MediaLibPresenter onFailure=mRequestListener"

    .line 160
    invoke-static {p2, p1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$400(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->notifyData()V

    :goto_0
    return-void
.end method

.method public saveData(ILjava/lang/String;)V
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "media--"

    .line 197
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaLibPresenter saveData result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 200
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    .line 201
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 202
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 203
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;ZLjava/util/ArrayList;)V

    .line 205
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1200(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->saveData()V

    goto :goto_0

    .line 207
    :cond_2
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1, v3}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1300(Lcom/powervision/media/presenter/impl/MediaLibPresenter;Z)V

    goto :goto_0

    .line 210
    :cond_3
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1400(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->saveOrCancelFail()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 216
    :cond_4
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "MediaLibPresenter onFailure=saveData"

    invoke-interface {p1, v0, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->saveOrCancelFail()V

    :goto_0
    return-void
.end method
