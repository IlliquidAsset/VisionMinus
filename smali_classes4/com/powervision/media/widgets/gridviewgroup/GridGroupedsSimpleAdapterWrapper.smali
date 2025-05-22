.class public Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "GridGroupedsSimpleAdapterWrapper.java"

# interfaces
.implements Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

.field private mGroupeds:[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;


# direct methods
.method public constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    .line 23
    new-instance v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$1;)V

    invoke-interface {p1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->generateGroupedList(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;)[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mGroupeds:[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    return-void
.end method

.method static synthetic access$102(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;)[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mGroupeds:[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;)[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->generateGroupedList(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;)[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    move-result-object p0

    return-object p0
.end method

.method private generateGroupedList(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;)[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;
    .locals 6

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 83
    :goto_0
    invoke-interface {p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 84
    invoke-interface {p1, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->getGroupedId(I)J

    move-result-wide v3

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    if-nez v5, :cond_0

    .line 87
    new-instance v5, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    invoke-direct {v5, p0, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;I)V

    .line 88
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    invoke-virtual {v5}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->incrementCount()V

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCountForGrouped(I)I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mGroupeds:[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->getCount()I

    move-result p1

    return p1
.end method

.method public getGroupedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mGroupeds:[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->getRefPosition()I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->getGroupedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getNumGroupeds()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mGroupeds:[Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    array-length v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method
