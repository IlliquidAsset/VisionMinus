.class Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$2;
.super Ljava/lang/Object;
.source "SyncFlightLogFragment.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getServerAllFileData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$2;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "log_request"

    const-string p2, ".....onFailure()"

    .line 179
    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "log_request"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$2;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {v0, p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$400(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method
