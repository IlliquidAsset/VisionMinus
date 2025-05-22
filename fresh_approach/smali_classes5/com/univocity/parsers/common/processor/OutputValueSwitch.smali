.class public Lcom/univocity/parsers/common/processor/OutputValueSwitch;
.super Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;
.source "OutputValueSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;
    }
.end annotation


# instance fields
.field private final columnIndex:I

.field private comparator:Ljava/util/Comparator;

.field private defaultSwitch:Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

.field private final headerName:Ljava/lang/String;

.field private selectedSwitch:Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

.field private switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

.field private types:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    .line 34
    iput-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    new-array v0, v0, [Ljava/lang/Class;

    .line 36
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->types:[Ljava/lang/Class;

    .line 41
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$1;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$1;-><init>(Lcom/univocity/parsers/common/processor/OutputValueSwitch;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->comparator:Ljava/util/Comparator;

    .line 64
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getValidatedIndex(I)I

    move-result p1

    iput p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->columnIndex:I

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->headerName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    .line 34
    iput-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    new-array v1, v0, [Ljava/lang/Class;

    .line 36
    iput-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->types:[Ljava/lang/Class;

    .line 41
    new-instance v1, Lcom/univocity/parsers/common/processor/OutputValueSwitch$1;

    invoke-direct {v1, p0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$1;-><init>(Lcom/univocity/parsers/common/processor/OutputValueSwitch;)V

    iput-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->comparator:Ljava/util/Comparator;

    .line 75
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getValidatedHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->headerName:Ljava/lang/String;

    .line 76
    iput v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->columnIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    .line 34
    iput-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    new-array v0, v0, [Ljava/lang/Class;

    .line 36
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->types:[Ljava/lang/Class;

    .line 41
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$1;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$1;-><init>(Lcom/univocity/parsers/common/processor/OutputValueSwitch;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->comparator:Ljava/util/Comparator;

    .line 87
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getValidatedIndex(I)I

    move-result p2

    iput p2, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->columnIndex:I

    .line 88
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getValidatedHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->headerName:Ljava/lang/String;

    return-void
.end method

.method private addSwitch(Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    .line 244
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 246
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->types:[Ljava/lang/Class;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->types:[Ljava/lang/Class;

    .line 247
    iget-object v0, p1, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->types:[Ljava/lang/Class;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object p1, p1, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    aput-object p1, v0, v1

    :cond_0
    return-void
.end method

.method private getHeadersFromSwitch(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 264
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getSwitch(Ljava/lang/Object;)Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    iget-object p1, v1, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->headers:[Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSwitch(Ljava/lang/Object;)Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;
    .locals 4

    .line 149
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 150
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 151
    array-length v0, p1

    iget v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->columnIndex:I

    if-ge v0, v1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    return-object p1

    .line 154
    :cond_0
    aget-object p1, p1, v1

    :cond_1
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 157
    aget-object v1, v1, v0

    .line 158
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->types:[Ljava/lang/Class;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->comparator:Ljava/util/Comparator;

    iget-object v3, v1, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->value:Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    return-object p1
.end method

.method private getSwitchValues()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->switches:[Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 322
    iget-object v4, v4, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->value:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getValidatedHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Header name cannot be blank"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getValidatedIndex(I)I
    .locals 1

    if-ltz p1, :cond_0

    return p1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Column index must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getValue(Ljava/util/Map;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;I)TV;"
        }
    .end annotation

    .line 254
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez p2, :cond_0

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addSwitchForType(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 239
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;-><init>([Ljava/lang/String;[ILjava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->addSwitch(Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;)V

    return-void
.end method

.method public varargs addSwitchForType(Ljava/lang/Class;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;-><init>([Ljava/lang/String;[ILjava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->addSwitch(Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;)V

    return-void
.end method

.method public varargs addSwitchForType(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;-><init>([Ljava/lang/String;[ILjava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->addSwitch(Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;)V

    return-void
.end method

.method public addSwitchForValue(Ljava/lang/Object;Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/RowWriterProcessor;[Ljava/lang/String;[ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->addSwitch(Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;)V

    return-void
.end method

.method public varargs addSwitchForValue(Ljava/lang/Object;Lcom/univocity/parsers/common/processor/RowWriterProcessor;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "[",
            "Ljava/lang/Object;",
            ">;[I)V"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p3, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/RowWriterProcessor;[Ljava/lang/String;[ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->addSwitch(Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;)V

    return-void
.end method

.method public varargs addSwitchForValue(Ljava/lang/Object;Lcom/univocity/parsers/common/processor/RowWriterProcessor;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "[",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/RowWriterProcessor;[Ljava/lang/String;[ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->addSwitch(Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;)V

    return-void
.end method

.method protected describeSwitch()Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expecting one of values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getSwitchValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at column index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getColumnIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->columnIndex:I

    return v0
.end method

.method protected getHeaders()[Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->selectedSwitch:Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->headers:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHeaders(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 2

    .line 274
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 275
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 276
    iget v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->columnIndex:I

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 277
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getHeadersFromSwitch(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 281
    :cond_1
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getHeadersFromSwitch(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Ljava/util/Map;Ljava/util/Map;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 288
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 289
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->headerName:Ljava/lang/String;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    .line 293
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 295
    :cond_1
    iget v2, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->columnIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 296
    invoke-direct {p0, p1, v2}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getValue(Ljava/util/Map;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 301
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 303
    :cond_4
    iget p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->columnIndex:I

    invoke-direct {p0, p2, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getValue(Ljava/util/Map;I)Ljava/lang/Object;

    move-result-object v0

    .line 306
    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getHeadersFromSwitch(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getIndexes()[I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->selectedSwitch:Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->indexes:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->comparator:Ljava/util/Comparator;

    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Comparator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setDefaultSwitch(Lcom/univocity/parsers/common/processor/RowWriterProcessor;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "[",
            "Ljava/lang/Object;",
            ">;[I)V"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, v1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/RowWriterProcessor;[Ljava/lang/String;[ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    return-void
.end method

.method public varargs setDefaultSwitch(Lcom/univocity/parsers/common/processor/RowWriterProcessor;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "[",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;-><init>(Lcom/univocity/parsers/common/processor/RowWriterProcessor;[Ljava/lang/String;[ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->defaultSwitch:Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    return-void
.end method

.method protected switchRowProcessor(Ljava/lang/Object;)Lcom/univocity/parsers/common/processor/RowWriterProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "*>;"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->getSwitch(Ljava/lang/Object;)Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch;->selectedSwitch:Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p1, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->processor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
