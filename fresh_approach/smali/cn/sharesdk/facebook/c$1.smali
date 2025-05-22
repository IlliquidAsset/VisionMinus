.class Lcn/sharesdk/facebook/c$1;
.super Ljava/lang/Object;
.source "FacebookWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/facebook/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/facebook/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/c;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/sharesdk/facebook/c$1;->a:Lcn/sharesdk/facebook/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcn/sharesdk/facebook/c$1;->a:Lcn/sharesdk/facebook/c;

    invoke-static {v0}, Lcn/sharesdk/facebook/c;->a(Lcn/sharesdk/facebook/c;)Lcn/sharesdk/framework/authorize/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/g;->finish()V

    return-void
.end method
