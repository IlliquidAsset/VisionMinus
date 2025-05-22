.class public final synthetic Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$_K2TpZfGL1xwYYyUgYFEh0Nm3yI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/home/ui/fragment/HomeFragment;

.field public final synthetic f$1:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/home/ui/fragment/HomeFragment;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$_K2TpZfGL1xwYYyUgYFEh0Nm3yI;->f$0:Lcom/powervision/home/ui/fragment/HomeFragment;

    iput-object p2, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$_K2TpZfGL1xwYYyUgYFEh0Nm3yI;->f$1:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$_K2TpZfGL1xwYYyUgYFEh0Nm3yI;->f$0:Lcom/powervision/home/ui/fragment/HomeFragment;

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$_K2TpZfGL1xwYYyUgYFEh0Nm3yI;->f$1:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/home/ui/fragment/HomeFragment;->lambda$showSupportPopWindow$0$HomeFragment(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
