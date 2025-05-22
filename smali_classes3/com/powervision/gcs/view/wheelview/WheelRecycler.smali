.class public Lcom/powervision/gcs/view/wheelview/WheelRecycler;
.super Ljava/lang/Object;
.source "WheelRecycler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private emptyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wheel:Lcom/powervision/gcs/view/wheelview/AbstractWheel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->wheel:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    return-void
.end method

.method private addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 122
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 125
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private getCachedView(Ljava/util/List;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 157
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private recycleView(Landroid/view/View;I)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->wheel:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getViewAdapter()Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p2, :cond_0

    if-lt p2, v0, :cond_1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->wheel:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->isCyclic()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->emptyItems:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->emptyItems:Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    add-int/2addr p2, v0

    goto :goto_0

    .line 144
    :cond_2
    rem-int/2addr p2, v0

    .line 145
    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->items:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->items:Ljava/util/List;

    :goto_1
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->emptyItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public getEmptyItem()Landroid/view/View;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->emptyItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->items:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public recycleItems(Landroid/widget/LinearLayout;ILcom/powervision/gcs/view/wheelview/ItemsRange;)I
    .locals 3

    const/4 v0, 0x0

    move v0, p2

    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 72
    invoke-virtual {p3, v0}, Lcom/powervision/gcs/view/wheelview/ItemsRange;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->recycleView(Landroid/view/View;I)V

    .line 74
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-nez v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method
