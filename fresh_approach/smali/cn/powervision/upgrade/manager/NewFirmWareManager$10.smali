.class Lcn/powervision/upgrade/manager/NewFirmWareManager$10;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->getMatchMd5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 1654
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$10;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "md5 Call Failed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqFirm"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1662
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    .line 1663
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "md5 Call succeeded:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lzqFirm"

    invoke-static {v0, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/powervision/upgrade/model/MatchMd5;

    invoke-virtual {p2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/model/MatchMd5;

    .line 1666
    invoke-virtual {p1}, Lcn/powervision/upgrade/model/MatchMd5;->getMatch()Lcn/powervision/upgrade/model/MatchMd5$MatchBean;

    move-result-object p2

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->getMd5()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "md5 key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "111"

    const-string v1, "md5 key:null"

    .line 1671
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    :goto_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$10;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {p1}, Lcn/powervision/upgrade/model/MatchMd5;->getMatch()Lcn/powervision/upgrade/model/MatchMd5$MatchBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->downloadMatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
