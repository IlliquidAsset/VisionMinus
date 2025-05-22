.class public abstract Lme/yokeyword/indexablerv/IndexableHeaderAdapter;
.super Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;
.source "IndexableHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yokeyword/indexablerv/IndexableHeaderAdapter$OnItemHeaderLongClickListener;,
        Lme/yokeyword/indexablerv/IndexableHeaderAdapter$OnItemHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addData(ILjava/lang/Object;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->addData(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addData(Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->addData(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addDatas(ILjava/util/List;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->addDatas(ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic addDatas(Ljava/util/List;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->addDatas(Ljava/util/List;)V

    return-void
.end method

.method getHeaderFooterType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic notifyDataSetChanged()V
    .locals 0

    .line 9
    invoke-super {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic removeData(Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->removeData(Ljava/lang/Object;)V

    return-void
.end method

.method public setOnItemHeaderClickListener(Lme/yokeyword/indexablerv/IndexableHeaderAdapter$OnItemHeaderClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/IndexableHeaderAdapter$OnItemHeaderClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->mListener:Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemHeaderLongClickListener(Lme/yokeyword/indexablerv/IndexableHeaderAdapter$OnItemHeaderLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/IndexableHeaderAdapter$OnItemHeaderLongClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->mLongListener:Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemLongClickListener;

    return-void
.end method
