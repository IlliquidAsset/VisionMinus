.class Lcom/powervision/user/ui/fragment/MessageFragment$1;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/ui/fragment/MessageFragment;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/ui/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/powervision/user/ui/fragment/MessageFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/powervision/user/ui/fragment/MessageFragment$1;->this$0:Lcom/powervision/user/ui/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/MessageFragment$1;->this$0:Lcom/powervision/user/ui/fragment/MessageFragment;

    invoke-virtual {p1}, Lcom/powervision/user/ui/fragment/MessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/MessageFragment$1;->this$0:Lcom/powervision/user/ui/fragment/MessageFragment;

    invoke-virtual {p1}, Lcom/powervision/user/ui/fragment/MessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
