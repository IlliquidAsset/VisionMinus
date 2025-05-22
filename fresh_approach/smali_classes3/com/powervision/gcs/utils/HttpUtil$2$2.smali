.class Lcom/powervision/gcs/utils/HttpUtil$2$2;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/HttpUtil$2;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/HttpUtil$2;Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

    iput-object p2, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, ":\"\""

    .line 217
    iget-object v1, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

    iget-object v1, v1, Lcom/powervision/gcs/utils/HttpUtil$2;->val$bc:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "String"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

    iget-object v0, v0, Lcom/powervision/gcs/utils/HttpUtil$2;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

    iget-object v0, v0, Lcom/powervision/gcs/utils/HttpUtil$2;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    iget-object v1, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/callback/HttpBaseCallBack;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_0
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v1, v2}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 224
    :try_start_0
    const-class v2, Lcom/powervision/gcs/model/ship/BaseModel;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

    iget-object v5, v5, Lcom/powervision/gcs/utils/HttpUtil$2;->val$bc:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/powervision/gcs/utils/HttpUtil;->GetType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    .line 225
    iget-object v3, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

    iget-object v3, v3, Lcom/powervision/gcs/utils/HttpUtil$2;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->val$data:Ljava/lang/String;

    invoke-virtual {v3, v0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":null"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v3, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

    iget-object v3, v3, Lcom/powervision/gcs/utils/HttpUtil$2;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/powervision/gcs/callback/HttpBaseCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorlog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

    iget-object v0, v0, Lcom/powervision/gcs/utils/HttpUtil$2;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/powervision/gcs/utils/HttpUtil$2$2;->this$1:Lcom/powervision/gcs/utils/HttpUtil$2;

    iget-object v0, v0, Lcom/powervision/gcs/utils/HttpUtil$2;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/gcs/callback/HttpBaseCallBack;->onFail(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
