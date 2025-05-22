.class Lcom/powervision/gcs/utils/NewActiviteUtil$2;
.super Ljava/lang/Object;
.source "NewActiviteUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/NewActiviteUtil;->doPost(Lcom/powervision/base/model/ActiviteModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

.field final synthetic val$activiteModel:Lcom/powervision/base/model/ActiviteModel;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/NewActiviteUtil;Lcom/powervision/base/model/ActiviteModel;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$2;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iput-object p2, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$2;->val$activiteModel:Lcom/powervision/base/model/ActiviteModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "lzqAc"

    const-string p2, "onFailure:"

    .line 482
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-static {}, Lcom/powervision/base/utils/ACDbHelper;->getInstance()Lcom/powervision/base/utils/ACDbHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$2;->val$activiteModel:Lcom/powervision/base/model/ActiviteModel;

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/ACDbHelper;->delete(Ljava/lang/Object;)Z

    return-void
.end method
