.class public Lcom/powervision/base/net/exception/ApiException;
.super Ljava/lang/Exception;
.source "ApiException.java"


# instance fields
.field private message:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/powervision/base/net/exception/ApiException;->setStatus(I)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/powervision/base/net/exception/ApiException;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/powervision/base/net/exception/ApiException;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/powervision/base/net/exception/ApiException;->setStatus(I)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/powervision/base/net/exception/ApiException;->setMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/base/net/exception/ApiException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/powervision/base/net/exception/ApiException;->status:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/powervision/base/net/exception/ApiException;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/powervision/base/net/exception/ApiException;->status:I

    return-void
.end method
