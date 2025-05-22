.class public Lcom/tencent/connect/common/BaseApi$TempRequestListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/common/BaseApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TempRequestListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/common/BaseApi;

.field private final b:Lcom/tencent/tauth/IUiListener;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    .line 305
    iput-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->a:Lcom/tencent/connect/common/BaseApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->b:Lcom/tencent/tauth/IUiListener;

    .line 307
    new-instance p2, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;-><init>(Lcom/tencent/connect/common/BaseApi$TempRequestListener;Landroid/os/Looper;Lcom/tencent/connect/common/BaseApi;)V

    iput-object p2, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/common/BaseApi$TempRequestListener;)Lcom/tencent/tauth/IUiListener;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->b:Lcom/tencent/tauth/IUiListener;

    return-object p0
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 322
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 323
    iput p1, v0, Landroid/os/Message;->what:I

    .line 324
    iget-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, -0x7

    .line 355
    iput p1, v0, Landroid/os/Message;->what:I

    .line 356
    iget-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHttpStatusException(Lcom/tencent/open/utils/HttpUtils$HttpStatusException;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 378
    invoke-virtual {p1}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, -0x9

    .line 379
    iput p1, v0, Landroid/os/Message;->what:I

    .line 380
    iget-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 331
    iput p1, v0, Landroid/os/Message;->what:I

    .line 332
    iget-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onJSONException(Lorg/json/JSONException;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, -0x4

    .line 347
    iput p1, v0, Landroid/os/Message;->what:I

    .line 348
    iget-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, -0x3

    .line 339
    iput p1, v0, Landroid/os/Message;->what:I

    .line 340
    iget-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNetworkUnavailableException(Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, -0xa

    .line 371
    iput p1, v0, Landroid/os/Message;->what:I

    .line 372
    iget-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSocketTimeoutException(Ljava/net/SocketTimeoutException;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, -0x8

    .line 363
    iput p1, v0, Landroid/os/Message;->what:I

    .line 364
    iget-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUnknowException(Ljava/lang/Exception;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 386
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, -0x6

    .line 387
    iput p1, v0, Landroid/os/Message;->what:I

    .line 388
    iget-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
