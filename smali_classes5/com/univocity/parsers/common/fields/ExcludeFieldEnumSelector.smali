.class public Lcom/univocity/parsers/common/fields/ExcludeFieldEnumSelector;
.super Lcom/univocity/parsers/common/fields/FieldSet;
.source "ExcludeFieldEnumSelector.java"

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
.field private final names:Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/univocity/parsers/common/fields/FieldSet;-><init>()V

    .line 32
    new-instance v0, Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/ExcludeFieldEnumSelector;->names:Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "undesired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/univocity/parsers/common/fields/FieldSet;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldIndexes([Ljava/lang/String;)[I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/ExcludeFieldEnumSelector;->names:Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/fields/ExcludeFieldEnumSelector;->get()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/univocity/parsers/common/ArgumentUtils;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;->set([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    .line 46
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/ExcludeFieldEnumSelector;->names:Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;->getFieldIndexes([Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method
