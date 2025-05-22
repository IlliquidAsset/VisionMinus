.class Lcn/sharesdk/framework/authorize/RegisterView$2;
.super Landroid/webkit/WebChromeClient;
.source "RegisterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/authorize/RegisterView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/sharesdk/framework/authorize/RegisterView;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/authorize/RegisterView;I)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    iput p2, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->a:I

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 121
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 122
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-static {p1}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/RegisterView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    iget v0, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->a:I

    mul-int v0, v0, p2

    const/16 v1, 0x64

    div-int/2addr v0, v1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 124
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-static {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/RegisterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-lez p2, :cond_0

    if-ge p2, v1, :cond_0

    .line 126
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-static {p1}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/RegisterView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-static {p1}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/RegisterView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
