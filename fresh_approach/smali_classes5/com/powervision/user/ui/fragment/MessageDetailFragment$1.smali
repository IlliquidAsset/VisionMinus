.class Lcom/powervision/user/ui/fragment/MessageDetailFragment$1;
.super Ljava/lang/Object;
.source "MessageDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/ui/fragment/MessageDetailFragment;->initToolbar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/ui/fragment/MessageDetailFragment;


# direct methods
.method constructor <init>(Lcom/powervision/user/ui/fragment/MessageDetailFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment$1;->this$0:Lcom/powervision/user/ui/fragment/MessageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-static {p1}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void
.end method
