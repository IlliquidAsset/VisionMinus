.class public Lcom/powervision/base/net/exception/FactoryException;
.super Ljava/lang/Object;
.source "FactoryException.java"


# static fields
.field private static final ConnectException_MSG:Ljava/lang/String;

.field private static final HttpException_MSG:Ljava/lang/String;

.field private static final JSONException_MSG:Ljava/lang/String;

.field private static final UnknownHostException_MSG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->APP_Msg_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/net/exception/FactoryException;->HttpException_MSG:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->APP_Msg_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/net/exception/FactoryException;->ConnectException_MSG:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->APP_Msg_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/net/exception/FactoryException;->JSONException_MSG:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->APP_Msg_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/net/exception/FactoryException;->UnknownHostException_MSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analysisException(Ljava/lang/Throwable;)Lcom/powervision/base/net/exception/ApiException;
    .locals 3

    .line 36
    new-instance v0, Lcom/powervision/base/net/exception/ApiException;

    invoke-direct {v0, p0}, Lcom/powervision/base/net/exception/ApiException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    instance-of v1, p0, Lretrofit2/HttpException;

    const/16 v2, 0x102

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0, v2}, Lcom/powervision/base/net/exception/ApiException;->setStatus(I)V

    .line 39
    sget-object p0, Lcom/powervision/base/net/exception/FactoryException;->HttpException_MSG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/powervision/base/net/exception/ApiException;->setMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :cond_0
    instance-of v1, p0, Lcom/powervision/base/net/exception/HttpTimeException;

    if-eqz v1, :cond_1

    .line 41
    check-cast p0, Lcom/powervision/base/net/exception/HttpTimeException;

    const/16 v1, 0x105

    .line 42
    invoke-virtual {v0, v1}, Lcom/powervision/base/net/exception/ApiException;->setStatus(I)V

    .line 43
    invoke-virtual {p0}, Lcom/powervision/base/net/exception/HttpTimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/powervision/base/net/exception/ApiException;->setMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :cond_1
    instance-of v1, p0, Ljava/net/ConnectException;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    instance-of v1, p0, Lcom/google/gson/JsonParseException;

    if-nez v1, :cond_5

    instance-of v1, p0, Lorg/json/JSONException;

    if-nez v1, :cond_5

    instance-of v1, p0, Landroid/net/ParseException;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 50
    :cond_3
    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_4

    const/16 p0, 0x106

    .line 51
    invoke-virtual {v0, p0}, Lcom/powervision/base/net/exception/ApiException;->setStatus(I)V

    .line 52
    sget-object p0, Lcom/powervision/base/net/exception/FactoryException;->UnknownHostException_MSG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/powervision/base/net/exception/ApiException;->setMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v1, 0x104

    .line 54
    invoke-virtual {v0, v1}, Lcom/powervision/base/net/exception/ApiException;->setStatus(I)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/powervision/base/net/exception/ApiException;->setMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_0
    const/16 p0, 0x103

    .line 48
    invoke-virtual {v0, p0}, Lcom/powervision/base/net/exception/ApiException;->setStatus(I)V

    .line 49
    sget-object p0, Lcom/powervision/base/net/exception/FactoryException;->JSONException_MSG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/powervision/base/net/exception/ApiException;->setMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 45
    :cond_6
    :goto_1
    invoke-virtual {v0, v2}, Lcom/powervision/base/net/exception/ApiException;->setStatus(I)V

    .line 46
    sget-object p0, Lcom/powervision/base/net/exception/FactoryException;->ConnectException_MSG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/powervision/base/net/exception/ApiException;->setMessage(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
