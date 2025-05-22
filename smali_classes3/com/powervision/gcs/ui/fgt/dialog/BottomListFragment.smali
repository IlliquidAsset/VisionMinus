.class public Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "BottomListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;,
        Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;
    }
.end annotation


# static fields
.field private static final ARG_PARAM:Ljava/lang/String; = "param"

.field private static final ARG_TIPS:Ljava/lang/String; = "tips"


# instance fields
.field listView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe5e
    .end annotation
.end field

.field llTips:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe84
    .end annotation
.end field

.field private mAdapter:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;

.field private mTips:Ljava/lang/String;

.field textTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x110b
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;)Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->mListener:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->mTips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->llTips:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->textTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->mTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    new-instance v0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;-><init>(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->mAdapter:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$BottomListAdapter;

    .line 98
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param"

    .line 55
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstanceTips(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tips"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param"

    .line 64
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 76
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->mTips:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 85
    sget p3, Lcom/powervision/gcs/R$layout;->fragment_bottom_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->unbinder:Lbutterknife/Unbinder;

    .line 88
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->initData()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDestroyView()V

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public setListener(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->mListener:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;

    return-void
.end method
