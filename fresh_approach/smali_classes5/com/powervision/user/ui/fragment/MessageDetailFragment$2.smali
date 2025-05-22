.class Lcom/powervision/user/ui/fragment/MessageDetailFragment$2;
.super Ljava/lang/Object;
.source "MessageDetailFragment.java"

# interfaces
.implements Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/ui/fragment/MessageDetailFragment;->showMessage(Ljava/util/List;)V
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

    .line 91
    iput-object p1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment$2;->this$0:Lcom/powervision/user/ui/fragment/MessageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;I)V
    .locals 1

    .line 94
    iget-object p2, p1, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;->link:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 95
    iget-object p2, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment$2;->this$0:Lcom/powervision/user/ui/fragment/MessageDetailFragment;

    invoke-virtual {p2}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p1, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;->link:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/powervision/base/base/web/WebViewActivity;->jumpToWebViewActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
