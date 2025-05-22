.class Lcn/sharesdk/framework/i$1;
.super Ljava/lang/Thread;
.source "ShareSDKCoreThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/i;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/i;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/i;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcn/sharesdk/framework/i$1;->a:Lcn/sharesdk/framework/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcn/sharesdk/framework/i$1;->a:Lcn/sharesdk/framework/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->h()Z

    return-void
.end method
