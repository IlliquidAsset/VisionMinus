.class public Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShipInterestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$IInterestEditListener;,
        Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/model/ship/ShipInterestModel;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$IInterestEditListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/model/ship/ShipInterestModel;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mListDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;)Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$IInterestEditListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$IInterestEditListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 59
    new-instance p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;-><init>()V

    .line 60
    iget-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/powervision/gcs/R$layout;->ship_interest_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 61
    sget v0, Lcom/powervision/gcs/R$id;->ship_icon:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/powervision/gcs/R$id;->rl_interest_item_root:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->rootView:Landroid/widget/RelativeLayout;

    .line 63
    sget v0, Lcom/powervision/gcs/R$id;->ship_interest_edit:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->edit:Landroid/widget/ImageView;

    .line 64
    sget v0, Lcom/powervision/gcs/R$id;->ship_interest_delete:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 65
    sget v0, Lcom/powervision/gcs/R$id;->ship_tv_interest:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->interestDesc:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipInterestModel;

    .line 71
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_interest_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->edit:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_interest_edit:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_fish_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->edit:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_chakan_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    :goto_1
    iget-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->interestDesc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getInterestDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->rootView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$1;-><init>(Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;Lcom/powervision/gcs/model/ship/ShipInterestModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$2;-><init>(Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;Lcom/powervision/gcs/model/ship/ShipInterestModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p2, p2, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$ViewHolder;->edit:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$3;-><init>(Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;Lcom/powervision/gcs/model/ship/ShipInterestModel;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/model/ship/ShipInterestModel;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mListDatas:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setInterestEditListener(Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$IInterestEditListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->mListener:Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$IInterestEditListener;

    return-void
.end method
