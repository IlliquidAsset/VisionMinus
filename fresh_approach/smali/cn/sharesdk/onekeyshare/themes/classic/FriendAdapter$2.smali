.class Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;
.super Ljava/lang/Object;
.source "FriendAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

.field final synthetic val$followersResult:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    iput-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;->val$followersResult:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 139
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-static {p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->access$000(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-static {p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->access$100(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 142
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-static {p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->access$100(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;->val$followersResult:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    return p1
.end method
