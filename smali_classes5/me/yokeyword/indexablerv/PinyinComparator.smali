.class Lme/yokeyword/indexablerv/PinyinComparator;
.super Ljava/lang/Object;
.source "PinyinComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lme/yokeyword/indexablerv/IndexableEntity;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lme/yokeyword/indexablerv/EntityWrapper<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareIndexName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lme/yokeyword/indexablerv/PinyinComparator;->getWord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-direct {p0, p2, v0}, Lme/yokeyword/indexablerv/PinyinComparator;->getWord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 31
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 33
    invoke-direct {p0, p1, v0}, Lme/yokeyword/indexablerv/PinyinComparator;->getWord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-direct {p0, p2, v0}, Lme/yokeyword/indexablerv/PinyinComparator;->getWord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getWord(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 43
    :cond_0
    invoke-static {p1}, Lme/yokeyword/indexablerv/PinyinUtil;->matchingPolyphone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {p1}, Lme/yokeyword/indexablerv/PinyinUtil;->getPolyphoneRealHanzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/yokeyword/indexablerv/PinyinUtil;->getPingYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/yokeyword/indexablerv/PinyinUtil;->getPingYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lme/yokeyword/indexablerv/EntityWrapper;

    check-cast p2, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-virtual {p0, p1, p2}, Lme/yokeyword/indexablerv/PinyinComparator;->compare(Lme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)I

    move-result p1

    return p1
.end method

.method public compare(Lme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;)I"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndexByField()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndexByField()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lme/yokeyword/indexablerv/PinyinComparator;->compareIndexName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
