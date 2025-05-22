.class Lcom/powervision/gcs/utils/HttpUtil$3$1;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/HttpUtil$3;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/utils/HttpUtil$3;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/HttpUtil$3;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/powervision/gcs/utils/HttpUtil$3$1;->this$1:Lcom/powervision/gcs/utils/HttpUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/powervision/gcs/utils/HttpUtil$3$1;->this$1:Lcom/powervision/gcs/utils/HttpUtil$3;

    iget-object v0, v0, Lcom/powervision/gcs/utils/HttpUtil$3;->val$absResponse:Lcom/powervision/gcs/callback/HttpBaseCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/gcs/callback/HttpBaseCallBack;->onFail(Ljava/lang/Object;)V

    return-void
.end method
