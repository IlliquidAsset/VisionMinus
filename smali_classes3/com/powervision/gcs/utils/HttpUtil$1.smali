.class Lcom/powervision/gcs/utils/HttpUtil$1;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/HttpUtil;->getBackBean(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/powervision/gcs/callback/HttpBaseCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/HttpUtil;

.field final synthetic val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

.field final synthetic val$bc:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/HttpUtil;Lcom/powervision/gcs/callback/HttpBaseCallBack;Ljava/lang/Class;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/powervision/gcs/utils/HttpUtil$1;->this$0:Lcom/powervision/gcs/utils/HttpUtil;

    iput-object p2, p0, Lcom/powervision/gcs/utils/HttpUtil$1;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    iput-object p3, p0, Lcom/powervision/gcs/utils/HttpUtil$1;->val$bc:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/powervision/gcs/utils/HttpUtil$1;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 101
    invoke-interface {p1, p2}, Lcom/powervision/gcs/callback/HttpBaseCallBack;->onFail(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Lcom/powervision/gcs/utils/show/L;->j(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/powervision/gcs/utils/HttpUtil$1;->this$0:Lcom/powervision/gcs/utils/HttpUtil;

    invoke-static {p2}, Lcom/powervision/gcs/utils/HttpUtil;->access$000(Lcom/powervision/gcs/utils/HttpUtil;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/powervision/gcs/utils/HttpUtil$1$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/utils/HttpUtil$1$1;-><init>(Lcom/powervision/gcs/utils/HttpUtil$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
