.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;
.super Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;
.source "AbstractInputValueSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final caseInsensitiveComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final caseSensitiveComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnIndex:I

.field private columnName:Ljava/lang/String;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

.field private headers:[Ljava/lang/String;

.field private indexes:[I

.field private switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$1;

    invoke-direct {v0}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$1;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->caseSensitiveComparator:Ljava/util/Comparator;

    .line 43
    new-instance v0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$2;

    invoke-direct {v0}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$2;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->caseInsensitiveComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnIndex:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 31
    iput-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 32
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 50
    sget-object v0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->caseInsensitiveComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->comparator:Ljava/util/Comparator;

    if-ltz p1, :cond_0

    .line 70
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnIndex:I

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Column index must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnIndex:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 31
    iput-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 32
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 50
    sget-object v0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->caseInsensitiveComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->comparator:Ljava/util/Comparator;

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnName:Ljava/lang/String;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Column name cannot be blank"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addSwitchForValue(Lcom/univocity/parsers/common/processor/CustomMatcher;Lcom/univocity/parsers/common/processor/core/Processor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/CustomMatcher;",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 178
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v8, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    move-object v3, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V

    aput-object v8, v0, v1

    return-void
.end method

.method public varargs addSwitchForValue(Lcom/univocity/parsers/common/processor/CustomMatcher;Lcom/univocity/parsers/common/processor/core/Processor;[I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/CustomMatcher;",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 214
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v8, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    move-object v3, p2

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V

    aput-object v8, v0, v1

    return-void
.end method

.method public varargs addSwitchForValue(Lcom/univocity/parsers/common/processor/CustomMatcher;Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/CustomMatcher;",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 190
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v8, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V

    aput-object v8, v0, v1

    return-void
.end method

.method public addSwitchForValue(Ljava/lang/String;Lcom/univocity/parsers/common/processor/core/Processor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 154
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v8, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V

    aput-object v8, v0, v1

    return-void
.end method

.method public varargs addSwitchForValue(Ljava/lang/String;Lcom/univocity/parsers/common/processor/core/Processor;[I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 202
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v8, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V

    aput-object v8, v0, v1

    return-void
.end method

.method public varargs addSwitchForValue(Ljava/lang/String;Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    .line 166
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v8, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V

    aput-object v8, v0, v1

    return-void
.end method

.method public getHeaders()[Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method public getIndexes()[I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->indexes:[I

    return-object v0
.end method

.method public hasDefaultSwitch()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 93
    sget-object p1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->caseSensitiveComparator:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->caseInsensitiveComparator:Ljava/util/Comparator;

    :goto_0
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 105
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->comparator:Ljava/util/Comparator;

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Comparator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultSwitch(Lcom/univocity/parsers/common/processor/core/Processor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;)V"
        }
    .end annotation

    .line 124
    new-instance v6, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V

    iput-object v6, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    return-void
.end method

.method public varargs setDefaultSwitch(Lcom/univocity/parsers/common/processor/core/Processor;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 134
    new-instance v6, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V

    iput-object v6, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    return-void
.end method

.method public varargs setDefaultSwitch(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 115
    new-instance v6, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V

    iput-object v6, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    return-void
.end method

.method protected switchRowProcessor([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/processor/core/Processor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;"
        }
    .end annotation

    .line 230
    iget v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 231
    invoke-interface {p2}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unable to determine position of column named \'"

    if-eqz p2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnName:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/univocity/parsers/common/ArgumentUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnIndex:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' as it does not exist in the headers. Available headers are "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_1
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' as no headers have been defined nor extracted from the input"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_2
    :goto_0
    iget p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnIndex:I

    array-length v0, p1

    if-ge p2, v0, :cond_5

    .line 242
    aget-object p2, p1, p2

    const/4 v0, 0x0

    .line 244
    :goto_1
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 245
    aget-object v1, v1, v0

    .line 246
    iget-object v2, v1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->matcher:Lcom/univocity/parsers/common/processor/CustomMatcher;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->matcher:Lcom/univocity/parsers/common/processor/CustomMatcher;

    invoke-interface {v2, p2}, Lcom/univocity/parsers/common/processor/CustomMatcher;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    iget-object p1, v1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    return-object p1

    .line 248
    :cond_3
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->comparator:Ljava/util/Comparator;

    iget-object v3, v1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->value:Ljava/lang/String;

    invoke-interface {v2, p2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_4

    .line 249
    iget-object p1, v1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->headers:[Ljava/lang/String;

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->headers:[Ljava/lang/String;

    .line 250
    iget-object p1, v1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->indexes:[I

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->indexes:[I

    .line 251
    iget-object p1, v1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    return-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    :cond_5
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    if-eqz p2, :cond_6

    .line 256
    iget-object p1, p2, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->headers:[Ljava/lang/String;

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->headers:[Ljava/lang/String;

    .line 257
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    iget-object p1, p1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->indexes:[I

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->indexes:[I

    .line 258
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;

    iget-object p1, p1, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    return-object p1

    :cond_6
    const/4 p2, 0x0

    .line 260
    iput-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->headers:[Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->indexes:[I

    .line 262
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    iget v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->columnIndex:I

    const-string v2, "Unable to process input row. No switches activated and no default switch defined."

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v0
.end method
