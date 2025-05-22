.class public Lme/yokeyword/indexablerv/EntityWrapper;
.super Ljava/lang/Object;
.source "EntityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final TYPE_CONTENT:I = 0x7fffffff

.field static final TYPE_FOOTER:I = 0x2

.field static final TYPE_HEADER:I = 0x1

.field static final TYPE_TITLE:I = 0x7ffffffe


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private headerFooterType:I

.field private index:Ljava/lang/String;

.field private indexByField:Ljava/lang/String;

.field private indexTitle:Ljava/lang/String;

.field private itemType:I

.field private originalPosition:I

.field private pinyin:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->originalPosition:I

    const v0, 0x7fffffff

    .line 19
    iput v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->itemType:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->originalPosition:I

    const v0, 0x7fffffff

    .line 19
    iput v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->itemType:I

    .line 26
    iput-object p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->index:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->indexTitle:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->pinyin:Ljava/lang/String;

    .line 29
    iput p2, p0, Lme/yokeyword/indexablerv/EntityWrapper;->itemType:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->data:Ljava/lang/Object;

    return-object v0
.end method

.method getHeaderFooterType()I
    .locals 1

    .line 89
    iget v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->headerFooterType:I

    return v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexByField()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->indexByField:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->indexTitle:Ljava/lang/String;

    return-object v0
.end method

.method getItemType()I
    .locals 1

    .line 81
    iget v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->itemType:I

    return v0
.end method

.method public getOriginalPosition()I
    .locals 1

    .line 73
    iget v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->originalPosition:I

    return v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public isContent()Z
    .locals 2

    .line 101
    iget v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->itemType:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFooter()Z
    .locals 2

    .line 109
    iget v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->headerFooterType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeader()Z
    .locals 2

    .line 105
    iget v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->headerFooterType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTitle()Z
    .locals 2

    .line 97
    iget v0, p0, Lme/yokeyword/indexablerv/EntityWrapper;->itemType:I

    const v1, 0x7ffffffe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->data:Ljava/lang/Object;

    return-void
.end method

.method setHeaderFooterType(I)V
    .locals 0

    .line 93
    iput p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->headerFooterType:I

    return-void
.end method

.method setIndex(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->index:Ljava/lang/String;

    return-void
.end method

.method setIndexByField(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->indexByField:Ljava/lang/String;

    return-void
.end method

.method setIndexTitle(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->indexTitle:Ljava/lang/String;

    return-void
.end method

.method setItemType(I)V
    .locals 0

    .line 85
    iput p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->itemType:I

    return-void
.end method

.method setOriginalPosition(I)V
    .locals 0

    .line 77
    iput p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->originalPosition:I

    return-void
.end method

.method setPinyin(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lme/yokeyword/indexablerv/EntityWrapper;->pinyin:Ljava/lang/String;

    return-void
.end method
