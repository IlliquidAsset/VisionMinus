.class Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$3;
.super Ljava/lang/Object;
.source "FriendAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->onCancel(Lcn/sharesdk/framework/Platform;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$3;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 255
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$3;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-static {p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->access$300(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->finish()V

    const/4 p1, 0x0

    return p1
.end method
