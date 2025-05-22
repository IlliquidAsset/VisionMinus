.class public Lcom/univocity/parsers/common/fields/FieldEnumSelector;
.super Lcom/univocity/parsers/common/fields/FieldSet;
.source "FieldEnumSelector.java"

# interfaces
.implements Lcom/univocity/parsers/common/fields/FieldSelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/fields/FieldSet<",
        "Ljava/lang/Enum;",
        ">;",
        "Lcom/univocity/parsers/common/fields/FieldSelector;"
    }
.end annotation


# instance fields
.field private final names:Lcom/univocity/parsers/common/fields/FieldNameSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/univocity/parsers/common/fields/FieldSet;-><init>()V

    .line 32
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldNameSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldNameSelector;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldEnumSelector;->names:Lcom/univocity/parsers/common/fields/FieldNameSelector;

    return-void
.end method


# virtual methods
.method public getFieldIndex(Ljava/lang/Enum;)I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldEnumSelector;->names:Lcom/univocity/parsers/common/fields/FieldNameSelector;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/FieldNameSelector;->getFieldIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFieldIndexes([Ljava/lang/String;)[I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldEnumSelector;->names:Lcom/univocity/parsers/common/fields/FieldNameSelector;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/fields/FieldEnumSelector;->get()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/univocity/parsers/common/ArgumentUtils;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/fields/FieldNameSelector;->set([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    .line 50
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldEnumSelector;->names:Lcom/univocity/parsers/common/fields/FieldNameSelector;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/FieldNameSelector;->getFieldIndexes([Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method
