.class public Lcom/univocity/parsers/common/processor/ObjectRowWriterProcessor;
.super Lcom/univocity/parsers/common/DefaultConversionProcessor;
.source "ObjectRowWriterProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowWriterProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/DefaultConversionProcessor;",
        "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/univocity/parsers/common/DefaultConversionProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic write(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/univocity/parsers/common/processor/ObjectRowWriterProcessor;->write([Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write([Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 51
    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    invoke-virtual {p0, v3, v1, p2, p3}, Lcom/univocity/parsers/common/processor/ObjectRowWriterProcessor;->reverseConversions(Z[Ljava/lang/Object;[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method
