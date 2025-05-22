.class Lcom/univocity/parsers/common/record/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# instance fields
.field private conversions:[Lcom/univocity/parsers/conversions/Conversion;

.field public defaultValue:Ljava/lang/Object;

.field public final index:I

.field public type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/univocity/parsers/common/record/MetaData;->type:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/univocity/parsers/common/record/MetaData;->defaultValue:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/univocity/parsers/common/record/MetaData;->conversions:[Lcom/univocity/parsers/conversions/Conversion;

    .line 22
    iput p1, p0, Lcom/univocity/parsers/common/record/MetaData;->index:I

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/univocity/parsers/common/record/MetaData;->conversions:[Lcom/univocity/parsers/conversions/Conversion;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/record/MetaData;->conversions:[Lcom/univocity/parsers/conversions/Conversion;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 47
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/univocity/parsers/conversions/Conversion;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getConversions()[Lcom/univocity/parsers/conversions/Conversion;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/univocity/parsers/common/record/MetaData;->conversions:[Lcom/univocity/parsers/conversions/Conversion;

    return-object v0
.end method

.method public setDefaultConversions([Lcom/univocity/parsers/conversions/Conversion;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/univocity/parsers/common/record/MetaData;->conversions:[Lcom/univocity/parsers/conversions/Conversion;

    return-void
.end method
