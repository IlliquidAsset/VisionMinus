.class public Lcom/univocity/parsers/common/fields/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final wrappedFieldSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->wrappedFieldSets:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/univocity/parsers/common/fields/FieldSet;->wrappedFieldSets:Ljava/util/List;

    .line 56
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/univocity/parsers/common/fields/FieldSet;->wrappedFieldSets:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addElement(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(Ljava/util/Collection;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/fields/FieldSet;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->wrappedFieldSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/fields/FieldSet;

    .line 130
    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/fields/FieldSet;->add(Ljava/util/Collection;)Lcom/univocity/parsers/common/fields/FieldSet;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 89
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 90
    invoke-direct {p0, v2}, Lcom/univocity/parsers/common/fields/FieldSet;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->wrappedFieldSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/fields/FieldSet;

    .line 93
    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/fields/FieldSet;->add([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public remove(Ljava/util/Collection;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->wrappedFieldSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/fields/FieldSet;

    .line 158
    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/fields/FieldSet;->remove(Ljava/util/Collection;)Lcom/univocity/parsers/common/fields/FieldSet;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs remove([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 141
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 142
    iget-object v3, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->wrappedFieldSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/fields/FieldSet;

    .line 145
    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/fields/FieldSet;->remove([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public set(Ljava/util/Collection;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/fields/FieldSet;->add(Ljava/util/Collection;)Lcom/univocity/parsers/common/fields/FieldSet;

    .line 114
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->wrappedFieldSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/fields/FieldSet;

    .line 115
    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/fields/FieldSet;->set(Ljava/util/Collection;)Lcom/univocity/parsers/common/fields/FieldSet;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs set([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/fields/FieldSet;->add([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    .line 77
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->wrappedFieldSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/fields/FieldSet;

    .line 78
    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/fields/FieldSet;->set([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldSet;->fields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
