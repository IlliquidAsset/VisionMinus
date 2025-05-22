.class public Lcom/univocity/parsers/conversions/ValidatedConversion;
.super Ljava/lang/Object;
.source "ValidatedConversion.java"

# interfaces
.implements Lcom/univocity/parsers/conversions/Conversion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/conversions/Conversion<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final allowBlanks:Z

.field private final noneOf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nullable:Z

.field private final oneOf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/univocity/parsers/conversions/ValidatedConversion;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->nullable:Z

    .line 40
    iput-boolean p2, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->allowBlanks:Z

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 41
    array-length p2, p3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p1

    :goto_1
    iput-object p2, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->oneOf:Ljava/util/Set;

    if-eqz p4, :cond_3

    .line 42
    array-length p2, p4

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->noneOf:Ljava/util/Set;

    return-void
.end method

.method private validate(Ljava/lang/Object;)V
    .locals 6

    const-string v0, "Value \'{value}\' is not allowed."

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 61
    iget-boolean v2, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->nullable:Z

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->noneOf:Ljava/util/Set;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    new-instance v2, Lcom/univocity/parsers/common/DataValidationException;

    invoke-direct {v2, v0}, Lcom/univocity/parsers/common/DataValidationException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->oneOf:Ljava/util/Set;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 71
    :cond_2
    new-instance v2, Lcom/univocity/parsers/common/DataValidationException;

    const-string v3, "Null values not allowed."

    invoke-direct {v2, v3}, Lcom/univocity/parsers/common/DataValidationException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 77
    iget-boolean v1, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->allowBlanks:Z

    if-eqz v1, :cond_5

    .line 78
    iget-object v1, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->noneOf:Ljava/util/Set;

    if-eqz v1, :cond_4

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    new-instance v1, Lcom/univocity/parsers/common/DataValidationException;

    invoke-direct {v1, v0}, Lcom/univocity/parsers/common/DataValidationException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void

    .line 84
    :cond_5
    iget-object v1, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->oneOf:Ljava/util/Set;

    if-eqz v1, :cond_6

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 87
    :cond_6
    new-instance v1, Lcom/univocity/parsers/common/DataValidationException;

    const-string v3, "Blanks are not allowed. \'{value}\' is blank."

    invoke-direct {v1, v3}, Lcom/univocity/parsers/common/DataValidationException;-><init>(Ljava/lang/String;)V

    :cond_7
    :goto_0
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 93
    :goto_1
    iget-object v3, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->oneOf:Ljava/util/Set;

    if-eqz v3, :cond_8

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 94
    new-instance v2, Lcom/univocity/parsers/common/DataValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value \'{value}\' is not allowed. Expecting one of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->oneOf:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/univocity/parsers/common/DataValidationException;-><init>(Ljava/lang/String;)V

    :cond_8
    if-nez v2, :cond_9

    .line 97
    iget-object v3, p0, Lcom/univocity/parsers/conversions/ValidatedConversion;->noneOf:Ljava/util/Set;

    if-eqz v3, :cond_9

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 98
    new-instance v2, Lcom/univocity/parsers/common/DataValidationException;

    invoke-direct {v2, v0}, Lcom/univocity/parsers/common/DataValidationException;-><init>(Ljava/lang/String;)V

    :cond_9
    if-nez v2, :cond_a

    return-void

    .line 102
    :cond_a
    invoke-virtual {v2, p1}, Lcom/univocity/parsers/common/DataValidationException;->setValue(Ljava/lang/Object;)V

    .line 103
    throw v2
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/univocity/parsers/conversions/ValidatedConversion;->validate(Ljava/lang/Object;)V

    return-object p1
.end method

.method public revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/univocity/parsers/conversions/ValidatedConversion;->validate(Ljava/lang/Object;)V

    return-object p1
.end method
