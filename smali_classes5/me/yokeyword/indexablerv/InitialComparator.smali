.class Lme/yokeyword/indexablerv/InitialComparator;
.super Ljava/lang/Object;
.source "InitialComparator.java"

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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lme/yokeyword/indexablerv/EntityWrapper;

    check-cast p2, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-virtual {p0, p1, p2}, Lme/yokeyword/indexablerv/InitialComparator;->compare(Lme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)I

    move-result p1

    return p1
.end method

.method public compare(Lme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;)I"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndex()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
