.class public abstract Lme/yokeyword/indexablerv/IndexableAdapter;
.super Ljava/lang/Object;
.source "IndexableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;,
        Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;,
        Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;,
        Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;,
        Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lme/yokeyword/indexablerv/IndexableEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final TYPE_ALL:I = 0x0

.field static final TYPE_CLICK_CONTENT:I = 0x2

.field static final TYPE_CLICK_TITLE:I = 0x1

.field static final TYPE_LONG_CLICK_CONTENT:I = 0x4

.field static final TYPE_LONG_CLICK_TITLE:I = 0x3


# instance fields
.field private mCallback:Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mContentClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;

.field private mContentLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;

.field private final mDataSetObservable:Lme/yokeyword/indexablerv/database/DataObservable;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mTitleClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

.field private mTitleLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lme/yokeyword/indexablerv/database/DataObservable;

    invoke-direct {v0}, Lme/yokeyword/indexablerv/database/DataObservable;-><init>()V

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/DataObservable;

    return-void
.end method

.method private notifyInited()V
    .locals 1

    .line 94
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/DataObservable;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/database/DataObservable;->notifyInited()V

    return-void
.end method

.method private notifySetListener(I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/DataObservable;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/database/DataObservable;->notifySetListener(I)V

    return-void
.end method


# virtual methods
.method getIndexCallback()Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback<",
            "TT;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mCallback:Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method getOnItemContentClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;
    .locals 1

    .line 118
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mContentClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;

    return-object v0
.end method

.method getOnItemContentLongClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;
    .locals 1

    .line 122
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mContentLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;

    return-object v0
.end method

.method getOnItemTitleClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;
    .locals 1

    .line 110
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mTitleClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    return-object v0
.end method

.method getOnItemTitleLongClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;
    .locals 1

    .line 114
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mTitleLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 89
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/DataObservable;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/database/DataObservable;->notifyInited()V

    return-void
.end method

.method public abstract onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lme/yokeyword/indexablerv/IndexableEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onBindTitleViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/String;)V
.end method

.method public abstract onCreateContentViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract onCreateTitleViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method registerDataSetObserver(Lme/yokeyword/indexablerv/database/DataObserver;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/DataObservable;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/database/DataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->setDatas(Ljava/util/List;Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;)V

    return-void
.end method

.method public setDatas(Ljava/util/List;Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    iput-object p2, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mCallback:Lme/yokeyword/indexablerv/IndexableAdapter$IndexCallback;

    .line 48
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mDatas:Ljava/util/List;

    .line 49
    invoke-direct {p0}, Lme/yokeyword/indexablerv/IndexableAdapter;->notifyInited()V

    return-void
.end method

.method public setOnItemContentClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mContentClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;

    const/4 p1, 0x2

    .line 65
    invoke-direct {p0, p1}, Lme/yokeyword/indexablerv/IndexableAdapter;->notifySetListener(I)V

    return-void
.end method

.method public setOnItemContentLongClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mContentLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;

    const/4 p1, 0x4

    .line 81
    invoke-direct {p0, p1}, Lme/yokeyword/indexablerv/IndexableAdapter;->notifySetListener(I)V

    return-void
.end method

.method public setOnItemTitleClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mTitleClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    const/4 p1, 0x1

    .line 57
    invoke-direct {p0, p1}, Lme/yokeyword/indexablerv/IndexableAdapter;->notifySetListener(I)V

    return-void
.end method

.method public setOnItemTitleLongClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mTitleLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;

    const/4 p1, 0x3

    .line 73
    invoke-direct {p0, p1}, Lme/yokeyword/indexablerv/IndexableAdapter;->notifySetListener(I)V

    return-void
.end method

.method unregisterDataSetObserver(Lme/yokeyword/indexablerv/database/DataObserver;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/DataObservable;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/database/DataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
