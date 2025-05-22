.class public Lcom/univocity/parsers/common/DataValidationException;
.super Lcom/univocity/parsers/common/DataProcessingException;
.source "DataValidationException.java"


# static fields
.field private static final serialVersionUID:J = 0x2b2c67c25e70822bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, -0x1

    .line 66
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected getErrorDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Error validating parsed input"

    return-object v0
.end method
