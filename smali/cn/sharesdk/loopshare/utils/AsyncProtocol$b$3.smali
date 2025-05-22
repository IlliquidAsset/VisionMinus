.class Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$3;
.super Ljava/lang/Object;
.source "AsyncProtocol.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$3;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 169
    iget-object p1, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$3;->a:Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;

    invoke-virtual {p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->a()V

    const/4 p1, 0x0

    return p1
.end method
