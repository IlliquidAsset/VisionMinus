.class public final synthetic Lcom/powervision/user/ui/fragment/-$$Lambda$MessageFragment$JkIPQ3V6t1oavCb6SgATa1tKVPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/user/ui/adapter/MessageAdapter$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/user/ui/fragment/MessageFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/user/ui/fragment/MessageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/-$$Lambda$MessageFragment$JkIPQ3V6t1oavCb6SgATa1tKVPg;->f$0:Lcom/powervision/user/ui/fragment/MessageFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;Lcom/powervision/base/net/retrofit/message/response/MessageBean;I)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/user/ui/fragment/-$$Lambda$MessageFragment$JkIPQ3V6t1oavCb6SgATa1tKVPg;->f$0:Lcom/powervision/user/ui/fragment/MessageFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/user/ui/fragment/MessageFragment;->lambda$showMessage$1$MessageFragment(Landroid/view/View;Lcom/powervision/base/net/retrofit/message/response/MessageBean;I)V

    return-void
.end method
