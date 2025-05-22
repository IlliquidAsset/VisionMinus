.class Lcom/powervision/gcs/utils/HttpUtil$3;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/HttpUtil;->postBackList(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Lcom/powervision/gcs/callback/HttpBaseCallBack;)V
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

    .line 284
    iput-object p1, p0, Lcom/powervision/gcs/utils/HttpUtil$3;->this$0:Lcom/powervision/gcs/utils/HttpUtil;

    iput-object p2, p0, Lcom/powervision/gcs/utils/HttpUtil$3;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    iput-object p3, p0, Lcom/powervision/gcs/utils/HttpUtil$3;->val$bc:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 287
    iget-object p1, p0, Lcom/powervision/gcs/utils/HttpUtil$3;->this$0:Lcom/powervision/gcs/utils/HttpUtil;

    invoke-static {p1}, Lcom/powervision/gcs/utils/HttpUtil;->access$000(Lcom/powervision/gcs/utils/HttpUtil;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/utils/HttpUtil$3$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/utils/HttpUtil$3$1;-><init>(Lcom/powervision/gcs/utils/HttpUtil$3;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcom/powervision/gcs/utils/HttpUtil$3;->this$0:Lcom/powervision/gcs/utils/HttpUtil;

    invoke-static {p2}, Lcom/powervision/gcs/utils/HttpUtil;->access$000(Lcom/powervision/gcs/utils/HttpUtil;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/powervision/gcs/utils/HttpUtil$3$2;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/utils/HttpUtil$3$2;-><init>(Lcom/powervision/gcs/utils/HttpUtil$3;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
