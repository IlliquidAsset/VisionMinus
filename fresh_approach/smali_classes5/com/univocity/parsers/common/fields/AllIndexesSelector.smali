.class public Lcom/univocity/parsers/common/fields/AllIndexesSelector;
.super Ljava/lang/Object;
.source "AllIndexesSelector.java"

# interfaces
.implements Lcom/univocity/parsers/common/fields/FieldSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 1

    const-string v0, "all fields"

    return-object v0
.end method

.method public getFieldIndexes([Ljava/lang/String;)[I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_0
    array-length p1, p1

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 35
    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
